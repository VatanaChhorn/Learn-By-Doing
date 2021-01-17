//
//  cardView.swift
//  Learn By Doing
//
//  Created by Vatana Chhorn on 15/01/2021.
//

import SwiftUI

struct cardView: View {
    // MARK: - PROPERTEIS
    
    var card : Card
    var hapticFeedBack = UIImpactFeedbackGenerator(style: .heavy)
    @State private var fadeIn : Bool = false
    @State private var moveUpNDownward: Bool = false
    @State private var showAlert :Bool = false
    
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Image(card.imageName)
                .resizable()
                .scaledToFit()
                .opacity(fadeIn ? 1.0 : 0.0)
            VStack {
                
                Group {
                    Text(card.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    Text(card.headline)
                        .fontWeight(.light)
                        .italic()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                } .offset(x: 0, y: moveUpNDownward ? -200 : -300)
              
                HStack {
                    Button(action: {
                        playSound (name: "sound-chime", type: "mp3")
                        self.hapticFeedBack.impactOccurred()
                        self.showAlert.toggle()
                    }, label: {
                        Text("Learn More")
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .accentColor(.white)
                    })
                    
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(.white)
                        .foregroundColor(.white)
                }  //: HStack
                .padding(.vertical)
                .padding(.horizontal, 24)
                .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color.black, radius: 6, x: 0, y: 3)
                .offset(x: 0, y: moveUpNDownward ? 180 : 300)
                    
    
            }  //:  VStack
          
        }  //:  ZStack
        .frame(width: 335, height: 545, alignment: .center)
        .background(
            LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom)
        )
        .shadow(radius: 8 )
        .cornerRadius(16)
        .onAppear() {
            withAnimation(.linear(duration: 1.2)) {
                self.fadeIn.toggle()
            }
            withAnimation(.linear(duration: 0.8)) {
                self.moveUpNDownward.toggle()
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text(card.title),
                  message: Text(card.message),
                  dismissButton: .default(Text("Ok")))
        }
    }
}

// MARK: - PREVIEW
struct cardView_Previews: PreviewProvider {
    static var previews: some View {
        cardView(card: cardData[3])
    }
}
