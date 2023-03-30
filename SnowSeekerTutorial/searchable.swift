//
//  searchable.swift
//  SnowSeekerTutorial
//
//  Created by Danjuma Nasiru on 26/03/2023.
//

import SwiftUI

struct searchable: View {
    @State private var searchText = ""
    let allNames = ["Subh", "Vina", "Melvin", "Stefanie"]
    
    var body: some View {
        NavigationView{
//            Text("Searching for: \(searchText)")
//                .searchable(text: $searchText, placement: .sidebar, prompt: "Looking for something")
//                .navigationTitle("Search")
            
            List(filteredNames, id: \.self) { name in
                            Text(name)
                        }
                        .searchable(text: $searchText, prompt: "Look for something")
                        .navigationTitle("Searching")
        }
        
    }
    var filteredNames : [String]{
        if searchText.isEmpty{
            return allNames
        }
            else{
            return allNames.filter{$0.localizedCaseInsensitiveContains(searchText)}
        }
    }
}

struct searchable_Previews: PreviewProvider {
    static var previews: some View {
        searchable()
    }
}
