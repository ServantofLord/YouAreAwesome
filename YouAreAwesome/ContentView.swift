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
        
        
        GeometryReader {geometry in
            VStack {
                    
                
                    
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
                    
                    Divider().background(.black).padding().frame(width: 150.0)
                    
                    Rectangle()
                        .fill(.indigo)
                        .frame(width:geometry.size.width*(2/3), height:1)
                    
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
                    .padding()
                    
            }
        }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
