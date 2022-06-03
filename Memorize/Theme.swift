//
//  Theme.swift
//  Memorize
//
//  Created by john agate on 6/1/22.
//

import Foundation

/* likely need to create an array of these themes to pass to the view model */

struct Theme {
    class Theme {
        let name: String
        let emojis: Array<String>
        let numberOfPairsOfCards: Int
        let color: String
        
        init(name: String, emojis: Array<String>, numberOfPairsOfCards: Int, color: String) {
            self.name = name
            self.emojis = emojis
            self.numberOfPairsOfCards = numberOfPairsOfCards
            self.color = color
        }
    }
    var themes: Array<Theme> = []
    
    init() {
        let vehicleEmojis = ["✈️", "🚀", "🚗", "🚘", "🚙", "🏎", "🛵", "🏍", "🚌", "🚐", "🚛", "🛳", "🚑", "🛩", "🚍", "🚜", "🛴", "🚊", "🚲", "🚕", "🚚", "⛴", "🚞", "🚢"]
        let halloweenEmojis = ["💀", "👻", "🎃", "🧙‍♀️", "🐈‍⬛" ,"👹", "🕸"]
        let animalEmojis = ["🐈", "🐶", "🐇", "🐀", "🦔", "🦝", "🐄", "🐎", "🐍", "🐸", "🐒", "", "🦖", "🐞", "🐢", "🐛", "🐺", "🐜"]
        let sportsEmojis = ["⚽️", "🏀", "🏈", "⚾️", "🥎", "🎾", "🏐", "🏉", "🏓", "🎳", "🏸", "🏂", "🥊", "⛸", "⛳️", "🏹"]
        let fruitsEmojis = ["🍏", "🍐", "🍋", "🍌", "🍉", "🍇", "🍑", "🥭", "🍍", "🥥", "🥝"]
        let computerEmojis = ["⌚️", "📱", "💻", "⌨️", "🖥", "🖨", "🖱", "🕹"]
        
        let vehicleTheme = Theme(name: "Vehicles", emojis: vehicleEmojis, numberOfPairsOfCards: 12, color: "red")
        let halloweenTheme = Theme(name: "Halloween", emojis: halloweenEmojis, numberOfPairsOfCards: 6, color: "orange")
        let animalTheme = Theme(name: "Animals", emojis: animalEmojis, numberOfPairsOfCards: 8, color: "green")
        let sportTheme = Theme(name: "Sports", emojis: sportsEmojis, numberOfPairsOfCards: 8, color: "blue")
        let fruitTheme = Theme(name: "Fruits", emojis: fruitsEmojis, numberOfPairsOfCards: 9, color: "purple")
        let computerTheme = Theme(name: "Computers", emojis: computerEmojis, numberOfPairsOfCards: 9, color: "grey")
        
        themes = [vehicleTheme, halloweenTheme, animalTheme, sportTheme, fruitTheme, computerTheme]
    }
    
    
    
}








