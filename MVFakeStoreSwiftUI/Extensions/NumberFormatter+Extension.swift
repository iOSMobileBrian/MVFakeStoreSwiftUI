//
//  NumberFormatter+Extension.swift
//  MVFakeStoreSwiftUI
//
//  Created by Brian Surface on 9/22/24.
//

import Foundation

extension NumberFormatter {
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}
