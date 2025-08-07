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
        NavigationView {
            List(store.productss) { product in
                NavigationLink(destination: ProductDetailView(product: product)) {
                    SingleProduct(product: product)
                }
            }
            .navigationTitle("The NRL rugby teams")
        }
    }
}

#Preview {
    ContentView(store: Store())
}
