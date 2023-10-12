//
//  ContentView.swift
//  iDine 4
//
//  Created by Caden Christesen on 9/26/23.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationStack {
            List {
                ForEach(menu) { section in
                    Section(section.name) {
                        ForEach(section.items) { item in
                            NavigationLink {
                                ItemDetail(item: item)
                            } label: {
                                ItemRow(item: item)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(.grouped)
        }
    }
}
#Preview {
    ContentView()
}
