//
//  ContentView.swift
//  SnowSeekerTutorial
//
//  Created by Danjuma Nasiru on 26/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            NavigationLink{
                Text("New Secondary")
            } label: {
                Text("Hello, world!")
            }
            .navigationTitle("Primary")
            
            Text("Secondary")
            
            Text("Tertiary")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
