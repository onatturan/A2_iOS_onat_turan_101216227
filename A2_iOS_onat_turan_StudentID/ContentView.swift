import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var products: [Product]
    
    @State private var productName = ""
    @State private var productDesc = ""
    @State private var productPrice = ""
    @State private var productProvider = ""
    @State private var searchKeyword = ""

    var body: some View {
        NavigationView {
            VStack {
                TextField("Product Name", text: $productName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Description", text: $productDesc)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Price", text: $productPrice)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Provider", text: $productProvider)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Add Product") {
                    addProduct()
                }
                .padding()
                
                TextField("Search Product", text: $searchKeyword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button("Search") {
                    searchProduct()
                }
                .padding()

                List(products) { product in
                    VStack(alignment: .leading) {
                        Text(product.name).font(.headline)
                        Text(product.desc).font(.subheadline)
                    }
                }
            }
            .navigationTitle("Product Management")
        }
    }

    func addProduct() {
        guard let price = Double(productPrice) else { return }
        let newProduct = Product(productID: Int64(products.count + 1), name: productName, desc: productDesc, price: price, provider: productProvider)
        modelContext.insert(newProduct)
    }

    func searchProduct() {
        _products = Query(filter: #Predicate { $0.name.contains(searchKeyword) || $0.desc.contains(searchKeyword) })
    }
}
