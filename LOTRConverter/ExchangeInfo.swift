//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Kritish Dhungel on 25/08/2024.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack{
            // background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            
            VStack{
                //title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3) //spacing between letters
                //description text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                // exchange rates
                HStack{
                    Image(.goldpiece)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                    //left t currency image
                    // exchange rate text
                    Text("One gold peice = 4 gold pennies")
                    Image(.goldpenny)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                    //right currency image
                }
                // done button
                Button("Done"){
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}
