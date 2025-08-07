//
//  SIngleProduct.swift
//  Week2-test
//
//  Created by Janhavi Jagtap on 6/8/2025.
//

import SwiftUI

struct SingleProduct: View {
    var body: some View {
        HStack{
            Image("bulldogs")
            VStack{
                Text("Object - 1")
                    .font(.headline)
                Text("Description")
                //Text()
                
            }
        }
    }
}

#Preview {
    SingleProduct()
}
