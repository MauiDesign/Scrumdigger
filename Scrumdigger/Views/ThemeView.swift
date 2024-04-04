//
//  ThemeView.swift
//  Scrumdigger
//
//  Created by Aroha Design on 4/04/24.
//

import SwiftUI

struct ThemeView: View {
    let theme: Theme
    
    var body: some View {
        Text(theme.name)
            .padding(4)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .foregroundColor(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

#Preview {
    ThemeView(theme:. buttercup)
}
/**
struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView()
    }
}
**/
