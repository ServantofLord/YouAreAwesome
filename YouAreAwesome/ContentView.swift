//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Lawrence Lau on 7/4/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = ""
    @State private var messageNumber = 0
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    var body: some View {
        
        
        VStack {
            
            Image(imageName).resizable().scaledToFit().cornerRadius(30).shadow(radius: 30).padding()
            
            Spacer()
            
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.pink)
                .frame(height: 150)
                .frame(maxWidth:.infinity)
                .padding()
            
            Spacer()
            
            
            
            Button("Show Message") {
            
    
                let messages = ["You Are Awesome!",
                                "You Are Great!",
                                "Fabulous? That's You!",
                                "You Are Swifty!!",
                                "You Are Code Monster!",
                "When the Genius Bar Needs help, They call YOU!"]
            
                messageString =  messages[Int.random(in: 0...messages.count-1) ]
                
                imageName = "image\(Int.random(in: 0...9))"
                
            }
            
            .buttonStyle(.borderedProminent)
            
            
            
            
            .padding()
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
