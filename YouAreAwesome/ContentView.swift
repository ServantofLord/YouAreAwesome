//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Lawrence Lau on 7/4/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = ""
   
    @State private var imageName = ""
    
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
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great!"
                
                messageString = ( messageString == message1 ? message2 : message1)
                
                imageName = (
                    imageName == "image0" ? "image1" : "image0")
                
                
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
