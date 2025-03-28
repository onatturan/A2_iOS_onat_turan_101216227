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

