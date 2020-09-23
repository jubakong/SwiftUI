//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jeongbae Kong on 2020/09/19.
//  Copyright © 2020 Jeongbae Kong. All rights reserved.
//

import SwiftUI

//ViewModel ( the door for the Model to View )

class EmojiMemoryGame {
  private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
  
  static func createMemoryGame() -> MemoryGame<String> {
    let emojis = ["👻","🎃", "🕷"]
    return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
      return emojis[pairIndex]
    }
  }
  
  // MARK: - Access to the Model
  var cards: Array<MemoryGame<String>.Card> {
    model.cards
  }
  
  //MARK: - Intent(s)
  
  func choose(card: MemoryGame<String>.Card) {
    model.choose(card: card)
  }
}
