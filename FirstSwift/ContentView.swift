//
//  ContentView.swift
//  FirstSwift
//
//  Created by Leo Wall on 21/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
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
                    
                    //Generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //update the score
                    
                    if (playerRand > cpuRand){
                        playerScore += 1
                        print("player wins")
                    } else if (playerRand < cpuRand) {
                        cpuScore += 1
                        print("computer wins")
                    } else {
                        print("draw")
                    }
                    

                    
                }, label: {
                    Image("dealbutton")
                })
                Button(action: {
                    print("you clicked me...")
                }, label:{
                })
                Spacer()
                HStack {
                    Spacer()

                    VStack{
                        Text("Player")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .font(.headline)

                        Text(String(playerScore))
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

                        Text(String(cpuScore))
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
