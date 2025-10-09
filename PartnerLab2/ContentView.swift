//
//  ContentView.swift
//  PartnerLab2
//
//  Created by Taina Saenz on 10/1/25.
//

import SwiftUI

struct Card: Identifiable {
    let id = UUID()
    let emoji: String
    var isFaceUp: Bool = false
    var isMatched: Bool = false
}

struct ContentView: View {
    @State private var cards: [Card] = []
    @State private var selectedCards: [Int] = []
    
    private let flowers = ["flower1", "flower2","flower3", "flower4", "flower5", "flower6", "flower7", "flower8", "flower9","flower10", "flower11", "flower12"]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.3), Color.purple.opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Text("Game")
                    .font(.system(size: 48, weight: .bold))
                    .foregroundColor(.blue)
                    .padding(.top, 20)
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 15) {
                        ForEach(cards.indices, id: \.self) { index in
                            CardView(card: cards[index])
                                .aspectRatio(0.75, contentMode: .fit)
                            
                        }
                    }
                    .padding()
                }
                
            
            }
        }
    }
}

struct CardView: View {
    let card: Card
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.blue, lineWidth: 3)
                .background(RoundedRectangle(cornerRadius: 12)
                    .fill(Color.white)
                )
            
        }
    }
}

#Preview {
    ContentView()
}
