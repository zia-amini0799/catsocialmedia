//
//  ContentView.swift
//  Project1
//
//  Created by Zia on 07/07/20.
//  Copyright © 2020 Zia. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var cards : [CardModel] = cardData
    var body: some View {
        VStack{
            Spacer()
            ScrollView(.horizontal,showsIndicators: false){
                HStack(alignment: .center, spacing: 10){
                    ForEach(cards){item in
                        Card(card: item)
                    }
                    }.padding()
            }
            Spacer()
        }.background(Color("backgroundColor")).edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards:cardData)
    }
}
