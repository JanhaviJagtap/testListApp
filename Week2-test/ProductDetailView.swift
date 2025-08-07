//
//  ProductDetailView.swift
//  Week2-test
//
//  Created by Janhavi Jagtap on 6/8/2025.
//

import SwiftUI

struct ProductDetailView: View {
    let product: Product
    
    var body: some View {
        
        Image(self.product.imageName)
            .resizable()
            .scaledToFit()
            .cornerRadius(22)
            .frame(maxWidth: .infinity)
            .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 5)
            .padding(.bottom, 20)
        VStack(alignment:.leading){
            Text(self.product.name)
                .font(.largeTitle)
                .fontWeight(.medium)
                .multilineTextAlignment(.leading).padding(.vertical, 10)
            Text(self.product.description)
                .font(.headline)
                .fontWeight(.light)
            Spacer()
            
            //Price Info
            ScrollView {
                VStack(alignment: .center) {
                    ForEach(product.players, id: \.self) { player in
                        Text(player)
                    }
                }
                .padding(.horizontal, 100)
                .padding(.vertical, 20)
            }
            .frame(maxWidth: .infinity)
            .foregroundColor(.black)
            
            Button{}label:{
                Capsule()
                    .fill(Color.yellow)
                    .frame(maxWidth:. infinity, minHeight: 30, maxHeight: 55)
                    .overlay(Text("Follow")
                        .font(.system(size: 20)).fontWeight(.medium)
                        .foregroundColor(Color.white)
                        .padding(.vertical, 8)
                    )
            }
            
        }
        .padding(30)
    }
}

#Preview {
    ProductDetailView(product: ProductSamples[0])
}
