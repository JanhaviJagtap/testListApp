//
//  ContentView.swift
//  Week2-test
//
//  Created by Janhavi Jagtap on 6/8/2025.
//

import SwiftUI

struct ContentView: View {
    let store : Store
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            NavigationView{
                List(store.productss){product in
                    
                }
            }
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView(store: Store())
}
