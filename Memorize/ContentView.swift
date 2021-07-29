//
//  ContentView.swift
//  Memorize
//
//  Created by Gaurav Pandey on 7/26/21.
//

import SwiftUI

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
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .stroke(lineWidth: 3)
            
            Text("Hello, world!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
