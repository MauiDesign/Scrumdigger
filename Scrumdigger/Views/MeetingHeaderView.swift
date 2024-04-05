//
//  MeetingHeaderView.swift
//  Scrumdigger
//
//  Created by Aroha Design on 5/04/24.
//

import SwiftUI

struct MeetingHeaderView: View {
    let secondsElasped: Int
    let secondsRemaining: Int
    
    private var totalSeconds: Int {
        secondsElasped + secondsRemaining
    }
    private var progress: Double {
        guard totalSeconds > 0 else {return 1}
        return Double(secondsElasped) / Double(secondsRemaining)
    }
    privat var minutesRemaining: Int {
        secondsRemaining / 60
    }
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elasped")
                        .font(.caption)
                    Label("\(secondsElasped)", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("\(secondsRemaining)", systemImage: "hourglass.tophalf.fill")
                }
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Time Remaining")
        .accessibilityValue("\(minutesRemaining) minutes")
    }
}

#Preview {
    MeetingHeaderView(secondsElasped: 60, secondsRemaining: 180)
        .previewLayout(.sizeThatFits)
}
