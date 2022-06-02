//
//  Theme.swift
//  Memorize
//
//  Created by john agate on 6/1/22.
//

import Foundation

/* likely need to create an array of these themes to pass to the view model */

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

let vehicleEmojis = ["✈️", "🚀", "🚗", "🚘", "🚙", "🏎", "🛵", "🏍", "🚌", "🚐", "🚛", "🛳", "🚑", "🛩", "🚍", "🚜", "🛴", "🚊", "🚲", "🚕", "🚚", "⛴", "🚞", "🚢"]
let halloweenEmojis = ["💀", "👻", "🎃", "🧙‍♀️", "🐈‍⬛" ,"👹", "🕸"]
let animalEmojis = ["🐈", "🐶", "🐇", "🐀", "🦔", "🦝", "🐄", "🐎", "🐍", "🐸", "🐒", "", "🦖", "🐞", "🐢", "🐛", "🐺", "🐜"]
let sportsEmojis = ["⚽️", "🏀", "🏈", "⚾️", "🥎", "🎾", "🏐", "🏉", "🏓", "🎳", "🏸", "🏂", "🥊", "⛸", "⛳️", "🏹"]

let vehicleTheme = Theme(name: "Vehicles", emojis: vehicleEmojis, numberOfPairsOfCards: 12, color: "red")
let halloweenTheme = Theme(name: "Halloween", emojis: halloweenEmojis, numberOfPairsOfCards: 6, color: "orange")
let animalTheme = Theme(name: "Animals", emojis: animalEmojis, numberOfPairsOfCards: 8, color: "green")
let sportTheme = Theme(name: "Sports", emojis: sportsEmojis, numberOfPairsOfCards: 8, color: "blue")
