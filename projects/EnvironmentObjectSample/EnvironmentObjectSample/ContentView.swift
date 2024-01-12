//
//  ContentView.swift
//  EnvironmentObjectSample
//
//  Created by Rowell Sotto on 12/19/23.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct SecondView: View {
    var body: some View {
            Text("Second View")
    }
}

#Preview {
    ContentView()
}
