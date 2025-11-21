//
//  ContentView.swift
//  InspiringQuotes
//
//  Created by S Devendra on 21/11/25.
//

import SwiftUI

struct ContentView: View {
    let quotes = [
        "Stay hungry, stay foolish.",
        "Dream big. Work hard.",
        "Believe you can and you're halfway there.",
        "Push yourself, no one else will do it for you.",
        "Make today amazing."
    ]
    
    @State private var currentQuote = "Tap button to show a quote"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentQuote)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            
            Button(action: {
                currentQuote = quotes.randomElement() ?? ""
            }) {
                Text("Show next Quote")
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
