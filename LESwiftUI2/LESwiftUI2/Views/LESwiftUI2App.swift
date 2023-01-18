//
//  LESwiftUI2App.swift
//  LESwiftUI2
//
//  Created by Tho Nguyen on 17/1/2023.
//

import SwiftUI

@main
struct LESwiftUI2App: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
