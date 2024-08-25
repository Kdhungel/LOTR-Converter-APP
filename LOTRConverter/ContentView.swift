//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Kritish Dhungel on 24/08/2024.
//

import SwiftUI

struct ContentView: View {
    //declaring a new stored property
    @State var showExchangeInfo = false //let -> constant
    // @State lets us change the state of the property even though it is inside struct.
    
    
    
    
    var body: some View {
        ZStack{
            // Background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            
            VStack{
                // Prancing pony image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                // Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
             
                HStack{
                
                    // left conversion section
                    
                    VStack{
                        //currency
                        //textfield
                        HStack{
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            // currency image
                            // currency text
                            Text("Silver Peice")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        //text field
                        Text("Textfield")
                    }
                    // equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    // right conversion section
                    VStack{
                        //currency
                        HStack{
                            // currency text
                            Text("Gold Peice")
                                .font(.headline)
                                .foregroundStyle(.white)
                            // currency image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        //Text field
                        Text("Textfield")
                    }
                    
                }
                Spacer()
                // info button
                
                HStack {
                    Spacer()
                    Button{
                        showExchangeInfo.toggle()
                        
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                }

            }
//            .border(.green)
        }
    }
}

#Preview {
    ContentView()
}
