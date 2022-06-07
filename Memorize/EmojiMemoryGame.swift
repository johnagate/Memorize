//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by john agate on 5/27/22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    static var themes = [Theme(name: "Vehicles",
                             emojis: ["✈️", "🚀", "🚗", "🚘", "🚙", "🏎", "🛵", "🏍", "🚌", "🚐", "🚛", "🛳", "🚑", "🛩", "🚍", "🚜", "🛴", "🚊", "🚲", "🚕", "🚚", "⛴", "🚞", "🚢"],
                             pairsOfCards: 7,
                             color: "red"),
                         Theme(name: "Halloween",
                               emojis: ["💀", "👻", "🎃", "🧌", "🧙‍♀️", "🧟‍♀️", "🕸", "🕷", "🍭", "🍬"],
                               pairsOfCards: 6,
                               color: "organge"),
                         Theme(name: "Food",
                               emojis: ["🍔", "🌭", "🌮", "🌯", "🥗", "🥪", "🍕", "🍟", "🍖", "🍗", "🍜", "🧇", "🥞", "🍭", "🥜"],
                               pairsOfCards: 5,
                               color: "tan"),
                         Theme(name: "Space",
                               emojis: ["🔭", "🪐", "☄️", "🛸", "👽", "🛰", "🚀", "👩‍🚀", "👾"],
                               pairsOfCards: 10,
                               color: "black"),
                         Theme(name: "Water",
                               emojis: ["💦", "🔫", "🌊", "💧", "🐟", "🏝", "🐙", "🦈", "🚰", "⛲️", "", "🏄‍♂️", "🤿"],
                               pairsOfCards: 5,
                               color: "blue"),
                         Theme(name: "Computers",
                               emojis: ["⌚️", "📱", "💻", "⌨️", "🖥", "🖨", "🖱", "🕹", "💾", "💿", "📹", "📺", "🎙"],
                               pairsOfCards: 8,
                               color: "gray"),
    
    ]
    
    static func createMemoryGame(theme: Theme) -> MemoryGame<String> {
        return MemoryGame<String>(numberOfPairsOfCards: theme.pairsOfCards) { pairIndex in
            theme.emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame(theme: themes[3])
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // Mark: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
}
