//
//  ThemePicker.swift
//  Scrumdigger
//
//  Created by Aroha Design on 4/04/24.
//

import SwiftUI

struct ThemePicker: View {
    @Binding var selection: Theme
    
    var body: some View {
        Picker("Theme", selection: $selection) {
            ForEach(Theme.allCases) { theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
}

#Preview {
    ThemePicker(selection: .constant(.periwinkle))
}
/**
 struct ThemePicker_Previews: PreviewProvider {
     static var previews: some View {
         ThemePicker()
     }
 }
 */
