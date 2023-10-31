//
//  ContentView.swift
//  WeSplit
//
//  Created by Logan Toms on 10/25/23.
//

import SwiftUI

struct TipSelectionView: View {
    @Binding var tipPercentage: Int

    var body: some View {
        List {
            Picker("Select Tip Percentage", selection: $tipPercentage) {
                ForEach(0..<101) {
                    Text("\($0)%")
                }
            }
        }
        .navigationTitle("Select Tip")
    }
}


struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    var tipValue: Double {
        let tipSelection = Double(tipPercentage)
        return checkAmount / 100 * tipSelection
    }
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        return amountPerPerson
    }
    
    var calculateTotal: Double {
        return checkAmount + tipValue
    }
    
    var body: some View {
        NavigationStack{
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                NavigationLink(destination: TipSelectionView(tipPercentage: $tipPercentage)) {
                    Text("Tip Percentage: \(tipPercentage)%")
                }

                
                Section("Amount per person") {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
                Section("Total Amount") {
                    Text(calculateTotal, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
