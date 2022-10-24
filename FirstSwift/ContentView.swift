//
//  ContentView.swift
//  FirstSwift
//
//  Created by Leo Wall on 21/10/22.
//

import SwiftUI

struct ContentView: View {
    
    var playerCard = "card5"
    var cpuCard = "card9"
    
    var playerScore = 0
    var cpuScore = 0
    
    var body: some View {
        ZStack {
            
            
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    print("Hello world")
                }, label: {
                    Image("dealbutton")
                })
                Button(action: {
                    print("you clicked me...")
                }, label:{
                    HStack{
                        Image(systemName: "pencil")
                            .foregroundColor(Color.white)
                        Text("Edit")
                            .foregroundColor(Color.white)
                    }
                })
                Spacer()
                HStack {
                    Spacer()

                    VStack{
                        Text("Player")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .font(.headline)

                        Text("0")
                            .foregroundColor(Color.white)
                            .font(.system(size: 40.0, weight: .regular))
                            .padding()

                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .font(.headline)

                        Text("0")
                            .font(.system(size: 40.0, weight: .regular))                            .foregroundColor(Color.white)
                            .padding()
                        
                    }
                    Spacer()


                }
                Spacer()


            }

            

               
            
            
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
