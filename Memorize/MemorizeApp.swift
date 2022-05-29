//
//  MemorizeApp.swift
//  Memorize
//
//  Created by john agate on 5/23/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
