//
//  usingGroup.swift
//  SnowSeekerTutorial
//
//  Created by Danjuma Nasiru on 26/03/2023.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        Group {
            Text("Name: Paul")
            Text("Country: England")
            Text("Pets: Luna and Arya")
        }
        .font(.title)
    }
}

struct usingGroup: View {
    @Environment(\.horizontalSizeClass) var sizeClass
    @State private var layoutVertically = false

        var body: some View {
            
            if sizeClass == .compact{
                VStack(content: UserView.init)
                }else{
                    HStack(content: UserView.init)
            }
//            Group {
//                if layoutVertically {
//                    VStack {
//                        UserView()
//                    }
//                } else {
//                    HStack {
//                        UserView()
//                    }
//                }
//            }
//            .onTapGesture {
//                layoutVertically.toggle()
//            }
        }
}

struct usingGroup_Previews: PreviewProvider {
    static var previews: some View {
        usingGroup()
    }
}
