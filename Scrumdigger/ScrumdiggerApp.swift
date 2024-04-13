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
    @State private var errorWrapper: ErrorWrapper?
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $store.scrums) {
                Task {
                    do {
                        try await store.save(scrums: store.scrums)
                    } catch {
                        //fatalError(error.localizedDescription)
                        errorWrapper = ErrorWrapper(error: error, guidance: "try again later.")
                    }
                }
            }
            .task {
                do {
                    try await store.load()
                } catch {
                    //fatalError(error.localizedDescription)
                    errorWrapper = ErrorWrapper(error: error, guidance: "Scrumdigger will load sample data and continue.")
                }
            }
            .sheet(item: $errorWrapper) {
                store.scrums = DailyScrum.sampleData
            } content: { wrapper in
                ErrorView(errorWrapper: wrapper)
            }
        }
    }
}
