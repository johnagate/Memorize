//
//  ContentView.swift
//  Memorize
//
//  Created by john agate on 5/23/22.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["✈️", "🚀", "🚗", "🚘", "🚙", "🏎", "🛵", "🏍", "🚌", "🚐", "🚛", "🛳",
                            "🚑", "🛩", "🚍", "🚜", "🛴", "🚊", "🚲", "🚕", "🚚", "⛴", "🚞", "🚢"]
    @State var emojiCount = 20
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    
                    ForEach(emojis[..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }.foregroundColor(.red)
            }
            Spacer()
            
        }
        .padding(.horizontal)
        
    }
    
}





struct CardView: View {
    /* @State causes this pointer to not be in this view anymore.
     It's stored somewhere else enabling us to change the view even
     though it is immutable. */
    
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}










































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
            .previewInterfaceOrientation(.portrait)
        ContentView()
            .preferredColorScheme(.dark)
            
    }
}
