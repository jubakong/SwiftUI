//
//  ContentView.swift
//  Memorize
//
//  Created by Jeongbae Kong on 2020/09/16.
//  Copyright © 2020 Jeongbae Kong. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var viewModel: EmojiMemoryGame
  var body: some View {
    HStack {
      ForEach(viewModel.cards) { card in
        CardView(card: card).onTapGesture {
          
          //Closure: 
          self.viewModel.choose(card: card)
        }
      }
    }
    .padding()
    .foregroundColor(Color.orange)
    .font(Font.largeTitle)
  }
}

struct CardView: View {
  var card: MemoryGame<String>.Card
  
  var body: some View {
    ZStack {
      if card.isFaceUp {
        RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
        RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
        Text(card.content)
      } else {
        RoundedRectangle(cornerRadius: 10.0).fill()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(viewModel: EmojiMemoryGame())
  }
}
