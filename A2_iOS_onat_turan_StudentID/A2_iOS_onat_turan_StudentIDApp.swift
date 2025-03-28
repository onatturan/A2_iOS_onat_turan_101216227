//
//  A2_iOS_onat_turan_StudentIDApp.swift
//  A2_iOS_onat_turan_StudentID
//
//  Created by Onat Turan on 2025-03-28.
//

import SwiftUI
import SwiftData

@main
struct A2_iOS_onat_turan_StudentIDApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
