//
//  ContentView.swift
//  Scrumdigger
//
//  Created by Aroha Design on 13/03/24.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                Text("Seconds Elapsed")
                Text("Seconds Remaining")
            }
        }
    }
}

#Preview {
    MeetingView()
}

