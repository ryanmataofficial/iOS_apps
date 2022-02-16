//
//  ContentView.swift
//  Shared
//
//  Created by Ryan Mata on 2/16/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var credits = 1000
    @State private var posLeft = "star"
    @State private var posMidd = "star"
    @State private var posRigh = "star"
    
    var body: some View {
        

        
        VStack(spacing: 20.0) {
            Spacer()
            Text("Ryan's Slot Machine")
                .font(.largeTitle)
            Spacer()
            Text("Credits: " + String(credits))
            Spacer()
            HStack{
                Spacer()
                Image(posLeft)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image(posMidd)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image(posRigh)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Spacer()
            Button(action: {
                
                let slotOptions = ["apple", "cherry", "star"]
                posLeft = slotOptions.randomElement()!
                posMidd = slotOptions.randomElement()!
                posRigh = slotOptions.randomElement()!
                
                credits -= 5
                if (posLeft == posMidd) && (posMidd == posRigh) {
                    credits += 200
                }
                
            }, label: {
                Text("Spin")
            })
            
            .padding()
            .padding([.leading, .trailing], 40)
            .foregroundColor(.white)
            .background(Color(.systemPink))
            .cornerRadius(25)
            .font(.system(size: 18, weight: .bold, design: .default))
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
