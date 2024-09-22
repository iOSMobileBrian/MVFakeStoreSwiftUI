//
//  NewsService.swift
//  MVFakeNewsSwiftUI
//
//  Created by Brian Surface on 9/21/24.
//

import Foundation

@MainActor
class StoreController: ObservableObject{
    
    @Published var products: [Product] = []
    let webservice: Webservice
    
    init(webservice: Webservice) {
        self.webservice = webservice
    }
    
    func getProducts() async throws {
        products = try await webservice.getProducts()
    }
}
