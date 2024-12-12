//
//  Double+Extension.swift
//  ProductAPIAPP
//
//  Created by Rohan Khambhadiya on 12/12/24.
//

import Foundation

extension Double {
    func toString() -> String {
        return String(format: "%.1f",self)
    }
    
    func currencyFormat() -> String {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: self)) ?? ""
    }
}
