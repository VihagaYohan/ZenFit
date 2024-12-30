//
//  ContentView.swift
//  ZenFit
//
//  Created by Yohan on 2024-12-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(Font.custom("FunnelDisplay-Medium", size: 20))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
