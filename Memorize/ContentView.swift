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
    var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 25)
                    .fill()
                    .foregroundColor(.white)
                
                RoundedRectangle(cornerRadius: 25)
                    .stroke(lineWidth: 3)
                    .foregroundColor(.red)
                
                Text("Hello, world!")
                    .foregroundColor(Color.black)
            } else {
                RoundedRectangle(cornerRadius: 25)
                    .fill()
                    .foregroundColor(.red)
            }
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
