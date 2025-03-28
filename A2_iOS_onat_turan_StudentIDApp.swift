import SwiftUI
import SwiftData

@main
struct A2_iOS_onat_turan_StudentIDApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Product.self)
        }
    }
}

