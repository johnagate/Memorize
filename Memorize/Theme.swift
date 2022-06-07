//
//  Theme.swift
//  Memorize
//
//  Created by john agate on 6/5/22.
//

import Foundation

struct Theme {
    let name: String
    var emojis: Array<String>
    let pairsOfCards: Int
    let color: String
    
    init(name: String, emojis: Array<String>, pairsOfCards: Int, color: String) {
        self.name = name
        self.emojis = emojis
        self.pairsOfCards = pairsOfCards > emojis.count ? emojis.count : pairsOfCards
        self.color = color
    }
}
