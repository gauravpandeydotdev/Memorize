//
//  ContentView.swift
//  Memorize
//
//  Created by Gaurav Pandey on 7/26/21.
//

import  SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            cardView()
            cardView()
            cardView()
            cardView()
        }
        .padding()
    }
}

struct cardView: View {
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let card = RoundedRectangle(cornerRadius: 25)
            if isFaceUp {
                card.fill().foregroundColor(.white)
                card.stroke(lineWidth: 3).foregroundColor(.red)
                Text("Hello, world!").foregroundColor(Color.black)
            } else {
                card.fill().foregroundColor(.red)
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
        ContentView()
            .preferredColorScheme(.dark)
    }
}
