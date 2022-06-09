//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by john agate on 5/27/22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    init() {
        theme = EmojiMemoryGame.themes.randomElement()!
        model = EmojiMemoryGame.createMemoryGame(theme: theme)
    }
    
    private var theme: Theme
    
    var themeName: String {
        return theme.name
    }
    
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
                               emojis: ["💦", "🔫", "🌊", "💧", "🐟", "🏝", "🐙", "🦈", "🚰", "⛲️", "🏄‍♂️", "🤿"],
                               pairsOfCards: 5,
                               color: "blue"),
                         Theme(name: "Computers",
                               emojis: ["⌚️", "📱", "💻", "⌨️", "🖥", "🖨", "🖱", "🕹", "💾", "💿", "📹", "📺", "🎙"],
                               pairsOfCards: 8,
                               color: "gray"),
    
    ]
    
    static func createMemoryGame(theme: Theme) -> MemoryGame<String> {
        let shuffledEmojis = theme.emojis.shuffled()
        return MemoryGame<String>(numberOfPairsOfCards: theme.pairsOfCards) { pairIndex in
            shuffledEmojis[pairIndex]
        }
    }
    
    func newGame() {
        theme = EmojiMemoryGame.themes.randomElement()!
        model = EmojiMemoryGame.createMemoryGame(theme: theme)
    }
    
    @Published private var model: MemoryGame<String>
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // Mark: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
}
