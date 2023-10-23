//
//  CheckOutView.swift
//  iDine 4
//
//  Created by Caden Christesen on 10/12/23.
//

import SwiftUI

struct CheckOutView: View {
    @EnvironmentObject var order: Order
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    @State private var paymentType = "Cash"
    var body: some View {
        VStack {
            Section {
                Picker("How do you wat to pay?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    CheckOutView().environmentObject(Order())
}
