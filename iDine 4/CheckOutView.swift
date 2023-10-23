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
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    @State private var paymentType = "Cash"
    @State private var tipAmount = 15
    let tipAmounts = [10, 15, 20, 25, 0]
    var totalPrice: String {
        let total = Double(order.total)
        let tipValue = total / 100 * Double(tipAmount)
        return (total + tipValue).formatted(.currency(code: "USD"))
    }
    @State private var showingPaymentAlert = false
    var body: some View {
        Form {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
        
                    }
                }
                Toggle("Add iDine loyalty card", isOn: $addLoyaltyDetails.animation())
                if addLoyaltyDetails {
                    TextField("Enter your iDine ID", text: $loyaltyNumber)
                }
            }
            Section("Add a tip?") {
                Picker("Percentage:", selection: $tipAmount) {
                    ForEach(tipAmounts, id: \.self) {
                        Text("\($0)%")
                    }
                }
                .pickerStyle(.segmented)
            }
            Section("Total: \(totalPrice)") {
                Button("Confirm order") {
                    showingPaymentAlert.toggle()
                }
            }
        }
        .alert("Order confirmed", isPresented: $showingPaymentAlert) {
            // add buttons here
        } message: {
            Text("Your total was \(totalPrice) – thank you!")
        }

        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    CheckOutView().environmentObject(Order())
}
