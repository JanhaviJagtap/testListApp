//
//  SIngleProduct.swift
//  Week2-test
//
//  Created by Janhavi Jagtap on 6/8/2025.
//

import SwiftUI

struct SingleProduct: View {
    let product: Product
    var body: some View {
        HStack{
            Image(self.product.imageName)
                .resizable()
                .scaledToFit( )
                .frame(width: 140)
            
            
            VStack(alignment: .leading){
                Text(self.product.name)
                    .font(.headline)
                    .fontWeight(.medium)
                    .padding(.vertical, 3)
                Text(self.product.description)
                    .font(.subheadline)
                    .padding(.bottom, 25)
                    .fontWeight(.light)
                Spacer()
                
                HStack{
                    
                    Text("\(product.players[0]), \(product.players[1]), \(product.players[2]), ...")
                        .font(.caption2)
                    
                    Spacer()
                    
                    Image(systemName: "heart")
                        .imageScale(.large)
                        .foregroundColor(Color("peach"))
                        .frame(width: 32, height:32)
                    
                    
                }
            }
            .padding(.vertical, 5)
        }
        .frame(height: 150)
        .background(Color.black.colorInvert())
        .cornerRadius(6)
        .shadow(color: .black.opacity(0.33), radius: 1, x: 2, y: 2)
        .padding(.vertical, 8)
    }
}

#Preview {
    SingleProduct(product: ProductSamples[0])
}
