//
//  DIContainer.swift
//  CountriesSwiftUI
//
//  Created by Alexey on 7/11/24.
//  Copyright © 2024 Alexey Naumov. All rights reserved.
//

import SwiftUI

struct DIContainer {
    let appState: Store<AppState>
    let interactors: Interactors
    
    init(appState: Store<AppState> = .init(AppState()), interactors: Interactors = .stub) {
        self.appState = appState
        self.interactors = interactors
    }
}

extension DIContainer {
    struct Interactors {
        static var stub: Self { .init() }
    }
}

extension EnvironmentValues {
    @Entry var injected: DIContainer = DIContainer()
}

extension View {
    func inject(_ container: DIContainer) -> some View {
        return self.environment(\.injected, container)
    }
}
