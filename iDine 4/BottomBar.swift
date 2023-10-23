//
//  BottomBar.swift
//  iDine 4
//
//  Created by Caden Christesen on 10/23/23.
//

import SwiftUI

struct BottomBar: View {
    var body: some View {
        TabView {
                    ContentView()
                        .tabItem {
                            Label("Menu", systemImage: "list.dash")
                        }

                    OrderView()
                        .tabItem {
                            Label("Order", systemImage: "square.and.pencil")
                        }
                }
    }
}

#Preview {
    BottomBar().environmentObject(Order())
}
