//
//  Operations.swift
//  COSC603Project
//
//  Created by JUAN PABLO COMBARIZA MEJIA on 4/27/21.
//

import Foundation
class Operations {
    
    func makeList(_ n: Int) -> [Int] {
        if n < 0 {
            return []
        }
        
        return (0..<n).map { _ in Int.random(in: 1...20) }
    }
    
    func smallest(dataArray: [Int]) -> Int {
        if dataArray.isEmpty {
            return -1
        }
        
        var smallest = dataArray[0]
        for dataValue in dataArray {
            if dataValue < smallest {
                smallest = dataValue
            }
        }

        return smallest
    }
    
    func largest(dataArray: [Int]) -> Int {
        if dataArray.isEmpty {
            return -1
        }
        
        var largest = dataArray[0]
        for dataValue in dataArray {
            if dataValue > largest {
                largest = dataValue
            }
        }

        return largest
    }
    
    func average(_ dataArray: [Int]) -> Double {
        if dataArray.isEmpty {
            return -1
        }
        
        let sumValue = sum(dataArray)
        var count = 0
        for _ in dataArray {
            count = count + 1
        }

        return Double(sumValue/count)
    }
    
    func sum(_ dataArray: [Int]) -> Int {
        if dataArray.isEmpty {
            return -1
        }
        
        var sum = 0
        for dataValue in dataArray {
            sum = sum + dataValue
        }

        return sum;
    }
    
    func greaterThanAverage(dataArray: [Int]) -> Int {
        if dataArray.isEmpty {
            return -1
        }
        
        let averageValue = average(dataArray)
        var count = 0
        for dataValue in dataArray {
            if Double(dataValue) > averageValue {
                count = count + 1
            }
        }

        return count
    }
    
    func greaterThanAverageAndEven(dataArray: [Int]) -> Int {
        if dataArray.isEmpty {
            return -1
        }
        
        let averageValue = average(dataArray)
        var count = 0
        for dataValue in dataArray {
            if Double(dataValue) > averageValue && dataValue % 2 == 0 {
                count = count + 1
            }
        }

        return count
    }
    
    func difference(dataArray: [Int]) -> Int {
        if dataArray.isEmpty {
            return -1
        }
        
        var left = dataArray[0];
        var max = 0;
        for (i, _) in dataArray.enumerated() {
            let right = dataArray[i]
            let diff = abs(right - left)
            if diff > max {
                max = diff
            }
            left = right
        }

        return max;
    }
    
    func greaterThanAverageAndOdd(dataArray: [Int]) -> Int {
        if dataArray.isEmpty {
            return -1
        }
        
        let averageValue = average(dataArray)
        var count = 0
        for dataValue in dataArray {
            if Double(dataValue) > averageValue && dataValue % 2 != 0 {
                count = count + 1
            }
        }

        return count
    }
    
    func selectionSort(_ dataArray: [Int]) -> [Int] {
        var array = dataArray
        for i in 0..<array.count {
            
            var minimumItemIndex = i
            for j in i..<array.count {
                if array[minimumItemIndex] > array[j] {
                    minimumItemIndex = j
                }
            }
            
            if minimumItemIndex != i {
                array.swapAt(minimumItemIndex, i)
            }
        }
        
        return array
    }
    
    func removePrime(_ dataArray: [Int]) -> [Int] {
         dataArray.filter { !isPrime(num: $0) }
    }
    
    func isPrime(num: Int) -> Bool {
        if num < 2 {
            return false
        }

        for i in 2..<num {
            if num % i == 0 {
                return false
            }
        }

        return true
    }
}
