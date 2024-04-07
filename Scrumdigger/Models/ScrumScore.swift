//
//  ScrumScore.swift
//  Scrumdigger
//
//  Created by Aroha Design on 7/04/24.
//

import SwiftUI

@MainActor
class ScrumStore: ObservableObject {
    @Published var scrums: [DailyScrum] = []
    
    
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            .appendingPathComponent("scrums.data")
    }
    
    func load() async throws {
        let task = Task<[DailyScrum], Error> {
            let fileURL = try Self.fileURL()
            guard let data = try? Data(contentsOf: fileURL) else {
                return []
            }
            let dailScrums = try JSONDecoder().decode([DailyScrum].self, from: data)
            return dailScrums
        }
        let scrums = try await task.value
        self.scrums = scrums
    }
}

