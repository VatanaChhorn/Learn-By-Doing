//
//  ContentView.swift
//  Learn By Doing
//
//  Created by Vatana Chhorn on 14/01/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    let cards : [Card] = cardData
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack (alignment: .center, spacing: 20){
                ForEach(cards) { item in
                    cardView(card: item)
                }  //: For Loops
            }//: HStack
            .padding(20)
        }   //: ScrollView
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
