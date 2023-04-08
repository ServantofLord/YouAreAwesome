//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Lawrence Lau on 7/4/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = "Namaste"
    
    var body: some View {
        
        
       VStack {
                    
            
                    Spacer()
           
           Image(systemName: "figure.mind.and.body"
            ).resizable().scaledToFit()
            .foregroundColor(.pink)
                    
                    Text(messageString)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.pink)
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
                   
                    .padding()
                    
            }
        }
        }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
