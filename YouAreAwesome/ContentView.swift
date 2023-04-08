//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Lawrence Lau on 7/4/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = "When Genius Bar needs help, They call you !"
    
    var body: some View {
        
        
        ZStack {
            
            Rectangle().fill(
                
                Gradient(colors: [Color("SkyBlue"), .yellow, .red])
            
            
            ).ignoresSafeArea()
            
            VStack {
                
                Text ("You Have Skills!")
                    .font(.largeTitle).fontWeight(.black).foregroundColor(Color("Gold-BC"))
                    .padding()
                    .background(Color("Maroon-BC")).cornerRadius(15)
                
                Spacer()
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.red)
                    .frame(height: 150)
                    .frame(maxWidth:.infinity)
                   // .border(.orange, width: 1)
                    .padding()
                
                Spacer()
                
                HStack{
                    Button("Awesome") {
                        messageString = "You Are Awesome!"
                        
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Spacer()
                    
                    Button("Great") {
                        messageString = "You Are Great!"
                        
                    }
                    .buttonStyle(.borderedProminent)
                }
                //.border(.purple, width: 5)
                .padding().tint(Color("Vermillion"))
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
