//
//  ScrumdiggerApp.swift
//  Scrumdigger
//
//  Created by Aroha Design on 13/03/24.
//

import SwiftUI

@main
struct ScrumdiggerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
