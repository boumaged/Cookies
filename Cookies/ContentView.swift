//
//  ContentView.swift
//  Cookies
//
//  Created by Majed on 24/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter = 0
    @State var message = ""
    var body: some View {
        ZStack{
            Color(.gray)
            VStack {
                Text(" \(counter) cookies eaten")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Button{
                    
                    self.counter += 1
                    
                    if counter >= 40 {
                        message = "Oh Nooooooooo 😭"
                    }
                    else if counter >= 30 {
                        message = "What are you doing??? 😰"
                    }
                    else if counter >= 20 {
                        message = "Don't eat too much cookies ☹️ "
                        
                    }
                    
                }label:{
                    Text("OM NOM NOM")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
               
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: 4.0, y: -5.0)
                
                
                
                Text(message)
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
