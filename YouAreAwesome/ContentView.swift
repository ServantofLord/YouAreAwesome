//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Lawrence Lau on 7/4/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = ""
    //    @State private var messageNumber = 0
    @State private var imageName = ""
    //    @State private var imageNumber = 0
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    
    var body: some View {
        
        
        VStack {
            
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.pink)
                .frame(height: 150)
                .frame(maxWidth:.infinity)
                .padding()
            
            Image(imageName).resizable().scaledToFit().cornerRadius(30).shadow(radius: 30).padding()
            
            Spacer()
            
            
            
            Button("Show Message") {
                
                
                let messages = ["You Are Awesome!",
                                "You Are Great!",
                                "Fabulous? That's You!",
                                "You Are Swifty!!",
                                "You Are Code Monster!",
                                "When the Genius Bar Needs help, They call YOU!"]
                
                var messageNumber = Int.random(in: 0...messages.count-1)
                
                while messageNumber == lastMessageNumber{
                    messageNumber = Int.random(in: 0...messages.count-1)
                }
                messageString =  messages[messageNumber]
                lastMessageNumber = messageNumber
                
                var imageNumber:Int
                repeat {imageNumber = Int.random(in: 0...9)} while imageNumber == lastImageNumber
                imageName =  "image\(imageNumber)"
                lastImageNumber = imageNumber
                
                
            }
            
            
            
        }
        
        .buttonStyle(.borderedProminent)
        
        
        
        
        .padding()
        
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
