//
//  ContentView.swift
//  MVFakeNewsSwiftUI
//
//  Created by Brian Surface on 9/21/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var storeContoller: StoreController
    
    private func populateProducts() async {
        do{
            try await storeContoller.getProducts()
        }catch{
            print(error)
        }
    }
    
    var body: some View {
        VStack {
            List(storeContoller.products) { product in
                Text(product.title)
                Text(product.price as NSNumber, formatter: NumberFormatter.currency)
                
            }.task {
                await populateProducts()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(StoreController(webservice: Webservice()))
    }
    
}
