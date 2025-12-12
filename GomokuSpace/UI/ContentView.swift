//
//  ContentView.swift
//  GomokuSpace
//

import SwiftUI

struct ContentView: View {
    @Environment(\.injected) private var injected: DIContainer
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Gomoku Space")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Initialized")
                .font(.title2)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemBackground))
    }
}

#Preview {
    ContentView()
}
