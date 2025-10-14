// Partner Lab 2
// Group #2
// Taina Saenz and Tori Zhang
// October 14, 2025

import SwiftUI

// Card struct for each card in the game
struct Card: Identifiable {
    let id = UUID()
    let imageName: String
    var isFaceUp: Bool = false
    var isMatched: Bool = false
}

// Main view/game layout which includes the grid and title
struct ContentView: View {
    @State private var cards: [Card] = []
    @State private var selectedCards: [Int] = []
    
    // Flower image names
    private let flowers = ["flower1", "flower2","flower3", "flower4", "flower5", "flower6", "flower7", "flower8", "flower9","flower10", "flower11", "flower12"]
    
    // columns for grid/layout
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack {
            // Game Title
            VStack {
                Text("Game")
                    .font(.system(size: 48, weight: .bold))
                    .foregroundColor(.blue)
                    .padding(.top, 20)
                
                // Grid of cards, able to scroll through
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
    
    
    
    // Able to flip cards and see possible matches
    func tappedCard(at index: Int) {
        // Add logic here please
        
    }
}


// CardView to show flower images
struct CardView: View {
    let card: Card
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.blue, lineWidth: 3)
                .background(RoundedRectangle(cornerRadius: 12)
                    .fill(Color.white)
                )
            // Tori: add needed parts
        }
    }
}

#Preview {
    ContentView()
}
