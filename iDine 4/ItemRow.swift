//
//  ItemRow.swift
//  iDine 4
//
//  Created by Caden Christesen on 10/11/23.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    var body: some View {
        HStack{
            Image(item.thumbnailImage)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            VStack(alignment: .leading){
                Text(item.name)
                Text("$\(item.price)")
            }
            Spacer()
            ForEach(item.restrictions, id: \.self) { restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(colors[restriction, default: .black])
                    .clipShape(Circle())
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ItemRow(item: MenuItem.example)
}
