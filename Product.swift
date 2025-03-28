import SwiftData

@Model
class Product {
    var productID: Int64
    var name: String
    var desc: String
    var price: Double
    var provider: String

    init(productID: Int64, name: String, desc: String, price: Double, provider: String) {
        self.productID = productID
        self.name = name
        self.desc = desc
        self.price = price
        self.provider = provider
    }
}
