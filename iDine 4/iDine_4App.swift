//
//  iDine_4App.swift
//  iDine 4
//
//  Created by Caden Christesen on 9/26/23.
//

import SwiftUI

@main
struct iDine_4App: App {
    @ObservedObject var order = Order()
    var body: some Scene {
        WindowGroup {
            BottomBar()
                .environmentObject(order)
        }
    }
}
