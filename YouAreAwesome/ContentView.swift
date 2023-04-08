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
           
           Image(systemName: "cloud.sun.rain.fill"
            ).resizable().scaledToFit()
               .symbolRenderingMode(.multicolor).padding().background(Color(hue: 0.53, saturation: 0.348, brightness: 0.948)).cornerRadius(30).shadow(color:.gray, radius: 30, x:20, y:20).overlay(RoundedRectangle(cornerRadius: 30).stroke(.teal,lineWidth: 1))
               .padding()
                    
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
