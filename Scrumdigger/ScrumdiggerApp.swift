//
//  ScrumdiggerApp.swift
//  Scrumdigger
//
//  Created by Aroha Design on 13/03/24.
//

import SwiftUI

@main
struct ScrumdiggerApp: App {
    //@State private var scrums = DailyScrum.sampleData // hard code data
    @StateObject private var store = ScrumStore() // load data
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $store.scrums)
                .task {
                    do {
                        try await store.load()
                    } catch {
                        fatalError(error.localizedDescription)
                    }
                }
        }
    }
}
