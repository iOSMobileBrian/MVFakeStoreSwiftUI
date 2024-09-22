//
//  MVFakeStoreSwiftUIApp.swift
//  MVFakeStoreSwiftUI
//
//  Created by Brian Surface on 9/22/24.
//

import SwiftUI

@main
struct MVFakeStoreSwiftUIApp: App {
    
    @StateObject private var storeController = StoreController(webservice: Webservice())
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(storeController)
        }
    }
}
