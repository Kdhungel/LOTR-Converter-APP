//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Kritish Dhungel on 25/08/2024.
//

import SwiftUI

struct ExchangeRate: View {
    
    let leftImage : ImageResource
    let text : String
    let rightImage : ImageResource
    
    
    var body: some View {
        HStack{
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            //left t currency image
            // exchange rate text
            Text(text)
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            //right currency image
        }
    }
}
#Preview {
    ExchangeRate(leftImage: .silverpiece, text: "One silver peice = 4 silver pennies.", rightImage: .silverpenny)
}
