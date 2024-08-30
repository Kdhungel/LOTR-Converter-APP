//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Kritish Dhungel on 26/08/2024.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack{
            // background
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                // converting from text
                Text("Select currency you are starting with: ")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                //currency icons
                //Grid
                LazyVGrid(columns: [GridItem(),GridItem(),GridItem()]) {
                    ForEach(0..<5){ _ in
                        CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
                    }

                }
                
                //converting to texts
                Text("Select currency you would like to converting to: ")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                   
                
                //currency icons
                //done button
                
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency()
}
