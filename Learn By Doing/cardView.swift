//
//  cardView.swift
//  Learn By Doing
//
//  Created by Vatana Chhorn on 15/01/2021.
//

import SwiftUI

struct cardView: View {
    // MARK: - PROPERTEIS
    
    var gradient : [Color] = [Color("Color01"), Color("Color02")]
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Image("developer-no1")
                .resizable()
                .scaledToFit()
            VStack {
                
                Group {
                    Text("SwiftUI")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    Text("Better App, Less Codes")
                        .fontWeight(.light)
                        .italic()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                } .offset(x: 0, y: -200)
              
                HStack {
                    Button(action: {
                        print("Button Has Clicked!")
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
                .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color.black, radius: 6, x: 0, y: 3)
                .offset(x: 0, y: 180)
                    
    
            }  //:  VStack
          
        }  //:  ZStack
        .frame(width: 335, height: 545, alignment: .center)
        .background(
            LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom)
        )
        .shadow(radius: 8 )
        .cornerRadius(16)
    }
}

// MARK: - PREVIEW
struct cardView_Previews: PreviewProvider {
    static var previews: some View {
        cardView()
    }
}
