//
//  AppEnvironment.swift
//  CountriesSwiftUI
//
//  Created by Alexey on 7/11/24.
//  Copyright © 2024 Alexey Naumov. All rights reserved.
//

import Foundation

@MainActor
struct AppEnvironment {
    let diContainer: DIContainer
}

extension AppEnvironment {
    static func bootstrap() -> AppEnvironment {
        let appState = Store<AppState>(AppState())
        let interactors = DIContainer.Interactors.stub
        let diContainer = DIContainer(appState: appState, interactors: interactors)
        return AppEnvironment(diContainer: diContainer)
    }
}
