//
//  Card.swift
//  Project1
//
//  Created by Zia on 07/07/20.
//  Copyright © 2020 Zia. All rights reserved.
//

import SwiftUI

struct Card: View {
    @State var fadeIn : Bool = false
    var card : CardModel
    var gradiet : [Color] = [Color("color01") ,Color("color02") ]
    
    var body: some View {
        ZStack{
            Image(card.imageName).resizable().aspectRatio(contentMode: ContentMode.fill).opacity(self.fadeIn ? 1 : 0)
            
            VStack{
                
                Text(card.title).font(.largeTitle)
                    .foregroundColor(Color.white).offset(y:20)
                Spacer()
                Button(action: {
                    playSound(sound: "catSound", type: "mp3")
                }) {
                    HStack{
                        Text("ADOPT NOW".uppercased()).fontWeight(.heavy).foregroundColor(Color.white)
                        Image(systemName: "arrow.right.circle").accentColor(Color.white).font(.headline)
                    }.padding().padding(.horizontal).background(LinearGradient(gradient: Gradient(colors: gradiet), startPoint: .leading, endPoint: .trailing)).clipShape(Capsule()).shadow(color: Color("shadow"), radius: 8, x: 0, y: 0)
                }.offset(y:-20)
            }
        }.frame(width:335, height:555)
            .background(Color.black)
            .cornerRadius(16)
            .shadow(radius: 8).onAppear(){
                withAnimation(.linear(duration: 1.3)){
                    self.fadeIn.toggle()
                }
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(card: cardData[0])
    }
}
