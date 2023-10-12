//
//  ItemDetail.swift
//  iDine 4
//
//  Created by Caden Christesen on 10/11/23.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    @EnvironmentObject var order: Order
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundStyle(.white)
            }
            .padding()
            Button("Order This") {
                order.add(item: item)
            }
            .buttonStyle(.borderedProminent)
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ItemDetail(item:MenuItem.example).environmentObject(Order())
}
