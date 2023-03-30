//
//  AlertAndSheet.swift
//  SnowSeekerTutorial
//
//  Created by Danjuma Nasiru on 26/03/2023.
//

import SwiftUI

struct User : Identifiable{
    let id = UUID()
}


struct AlertAndSheet: View {
    @State private var selectedUser : User? = nil
    @State private var isShowingUser = false
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                selectedUser = User()
                isShowingUser = true
            }
//            .sheet(item: $selectedUser){user in
//                Text(user.id.uuidString)
//            }
            .alert("Welcome", isPresented: $isShowingUser, presenting: selectedUser){user in
                Button(user.id.uuidString){}
            }
    }
}

struct AlertAndSheet_Previews: PreviewProvider {
    static var previews: some View {
        AlertAndSheet()
    }
}
