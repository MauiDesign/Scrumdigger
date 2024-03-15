//
//  Theme.swift
//  Scrumdigger
//
//  Created by Aroha Design on 13/03/24.
//

import SwiftUI

enum Theme: String {
    case bubblegum
    case buttercup
    case tuauri
    case lavender
    case mākurakura
    case navy
    case karaka
    case oxblood
    case periwinkle
    case poppy
    case waiporoporo
    case seafoam
    case sky
    case tan
    case kārikiōrangi
    case kowhai
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .karaka, .periwinkle, .poppy, .seafoam, .sky, .tan, .kārikiōrangi, .kowhai: return .black
        case .tuauri, .mākurakura, .navy, .oxblood, .waiporoporo: return .white
        }
    }
    var mainColor: Color {
        Color(rawValue)
    }
    var name: String {
        rawValue.capitalized
    }
}
