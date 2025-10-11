// Partner Lab 2
// Group #2
// Taina Saenz and Tori Zhang
// October 14, 2025

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
                        ForEach(0..<cards.count, id: \.self) { index in
                            CardView(card: cards[index])
                                .aspectRatio(0.75, contentMode: .fit)
                                .onTapGesture {
                                    tappedCard(at: index)
                                }
                            
                        }
                    }
                    .padding()
                }
                
            
            }
        }
    }
    
    // Please help add other functions for the game to work.
    
    
    // tappedCard needs to be finished
    func tappedCard(at index: Int) {
        
    }
}

// CardView needs to be finished
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
