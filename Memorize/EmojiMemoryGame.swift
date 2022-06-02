//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by john agate on 5/27/22.
//

import SwiftUI

/* likely need to add an init to this object and take in a theme for the init */

class EmojiMemoryGame: ObservableObject {
    
    static let emojis = ["✈️", "🚀", "🚗", "🚘", "🚙", "🏎", "🛵", "🏍", "🚌", "🚐", "🚛", "🛳", "🚑", "🛩", "🚍", "🚜", "🛴", "🚊", "🚲", "🚕", "🚚", "⛴", "🚞", "🚢"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // Mark: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
}
