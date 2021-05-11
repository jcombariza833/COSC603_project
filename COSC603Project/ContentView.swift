//
//  ContentView.swift
//  COSC603Project
//
//  Created by JUAN PABLO COMBARIZA MEJIA on 4/27/21.
//

import SwiftUI

struct ContentView: View {
    @State var showResults = false
    @State var number = ""
    @State private var array = [Int]()
    @State private var sortedArray = [Int]()
    let operations = Operations()
    
    var body: some View {
        VStack {
            Button(action: processAction) {
                Text(showResults ? "reset" : "Process ramdon array")
                    .padding()
                    .background(showResults ? Color.red : Color.blue)
                    .foregroundColor(.white)
            }
            
            TextField("Array size", text: $number)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
            
            if showResults {
                Text("Array: [\(array.map({"\($0)"}).joined(separator: ", "))]")
                Text("smallest: \(operations.smallest(dataArray: array))")
                Text("largest: \(operations.largest(dataArray: array))")
                Text("average: \(operations.average(array))")
                Text("sum: \(operations.sum(array))")
                Text("greater than average: \(operations.greaterThanAverage(dataArray: array))")
                Text("greater than average and Even: \(operations.greaterThanAverageAndEven(dataArray: array))")
                Text("greater than average and Odd: \(operations.greaterThanAverageAndOdd(dataArray: array))")
                Text("largest difference: \(operations.difference(dataArray: array))")
                Text("""
                        Sort Array: [\(operations.selectionSort(array).map({"\($0)"}).joined(separator: ", "))]
                        Remove primes: [\(operations.removePrime(array).map({"\($0)"}).joined(separator: ", "))]
                        """)
            }
        }
    }
    
    func processAction() {
        array = operations.makeList(Int(number) ?? 1)
        showResults.toggle()
    }
    
    func resetAction() {
        showResults.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
