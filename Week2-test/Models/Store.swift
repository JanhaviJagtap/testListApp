//  Store.swift

import Foundation

class Store : Decodable {
    var productss : [Product]
    
    init(filename: String = "ProductData.json") {
        self.productss = Bundle.main.decode(filename: filename, as: [Product].self)
    }
}
