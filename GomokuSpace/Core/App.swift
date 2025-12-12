//
//  App.swift
//  CountriesSwiftUI
//
//  Created by Alexey on 7/11/24.
//  Copyright © 2024 Alexey Naumov. All rights reserved.
//

import SwiftUI

@main
struct GomokuSpaceApp: App {
    
    @State private var appEnvironment = AppEnvironment.bootstrap()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .inject(appEnvironment.diContainer)
        }
    }
}
