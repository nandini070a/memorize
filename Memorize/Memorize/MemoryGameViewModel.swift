//
//  MemoryGameViewModel.swift
//  Memorize
//
//  Created by Nandini Saha on 2022-08-27.
//

import SwiftUI

class MemoryGameViewModel: ObservableObject {
    
    static let emojis = ["✈️","🚞","🚌","⛴","💰","🏏","😈","🔮","🤡","🐠","🍅","🍇","🍓","🥬","🥦","🍆","🫐","🪀","🚘","🚍","🚜","🚚","🚓","🚗"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame<String>(numberOfPairOfCards: 4) { pairIndex in
            return emojis[pairIndex]
        }
    }

    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: [MemoryGame<String>.Card] {
        return model.cards
    }
    
    //Mark: Intent
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
