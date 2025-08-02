//
//  ContentView.swift
//  stick_figure
//
//  Created by Han on 2/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            StickMan()
                .stroke(lineWidth: 4)
                .foregroundColor(.black)

            // Add more EmojiViews to decorate your Bobby
            EmojiView(symbol: "🎩", size: 36, x: 0,  y: -170) // Hat
            EmojiView(symbol: "👓", size: 55, x: 0, y: -135) // Glasses
            EmojiView(symbol: "💩", size: 36, x: 0,  y: 70) // Poop emoji
        }
        .frame(width: 200, height: 320)
    }
}
// merge this with the other file to make it work
// dont mind me here
/// Basic stickman

/// Reusable emoji decorator
struct EmojiView: View {
    let symbol: String
    let size: CGFloat
    let x: CGFloat
    let y: CGFloat
    var body: some View {
        Text(symbol)
            .font(.system(size: size))
            .offset(x: x, y: y)
    }
}


#Preview {
    ContentView()
}
