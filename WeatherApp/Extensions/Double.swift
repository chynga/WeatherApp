//
//  Double.swift
//  SwiftfulCrypto
//
//  Created by Nick Sarno on 5/9/21.
//

import Foundation

extension Double {
    
    private var degreeFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
//        formatter.numberStyle = .currency
        //formatter.locale = .current // <- default value
        //formatter.currencyCode = "usd" // <- change currency
        //formatter.currencySymbol = "$" // <- change currency symbol
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 1
        return formatter
    }
    
    func convertKelvinToCelsius() -> Double {
        return self - 273.15
    }
    
    func asTemp() -> String {
        let number = NSNumber(value: self)
//        return degreeFormatter.string(from: number) + "˚" ?? "-"
        if let degree = degreeFormatter.string(from: number) {
            return degree + "˚"
        }
        return "-"
    }
}
