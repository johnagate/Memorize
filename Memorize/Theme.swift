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
        self.emojis = Array(Set(emojis))
        self.pairsOfCards = pairsOfCards > Array(Set(emojis)).count ? Array(Set(emojis)).count : pairsOfCards
        self.color = color
    }
}
