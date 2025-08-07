//
//  Products.swift
//  Week2-test
//
//  Created by Janhavi Jagtap on 6/8/2025.
//

import Foundation
struct Product: Identifiable, Decodable {
    let id: Int
    let name: String
    let description: String
    let players: [String]
    let imageName: String
}

let ProductSamples=[
    Product(id: 01, name: "Bulldogs", description: "Canterbury Bulldogs Rugby team", players:["a","b","c","d"], imageName: "bulldogs"),
    Product(id: 01, name: "Panters", description: "Penrith Panthers Rugby team", players:["a","b","c","d"], imageName: "panthers"),
    Product(id: 01, name: "broncos", description: "Brisbane Broncos Rugby team", players:["a","b","c","d"], imageName: "broncos"),
    Product(id: 01, name: "Bulldogs", description: "Canterbury Bulldogs Rugby team", players:["a","b","c","d"], imageName: "bulldogs")
]
