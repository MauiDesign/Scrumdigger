//
//  ScrumdiggerApp.swift
//  Scrumdigger
//
//  Created by Aroha Design on 13/03/24.
//

import SwiftUI

@main
struct ScrumdiggerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
