//
//  Product.swift
//  MVFakeNewsSwiftUI
//
//  Created by Brian Surface on 9/21/24.
//

import Foundation


struct Product: Decodable, Identifiable {
    
    let id: Int
    let title: String
    let price: Double
    
}
