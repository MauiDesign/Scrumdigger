//
//  ScrumsView.swift
//  Scrumdigger
//
//  Created by Aroha Design on 14/03/24.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                CardView(scrum: scrum)
                    .listRowBackground(scrum.theme.mainColor) //TODO: mainColor not displaying
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}

/*
#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
*/
