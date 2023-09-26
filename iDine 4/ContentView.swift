//
//  ContentView.swift
//  iDine 4
//
//  Created by Caden Christesen on 9/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
            .navigationTitle("Menu")
        }
    }
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
}

#Preview {
    ContentView()
}
