//
//  ContentView.swift
//  FirstSwift
//
//  Created by Leo Wall on 21/10/22.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                Spacer()
                Image("dealbutton")
                Spacer()
                HStack {
                    Spacer()

                    VStack{
                      Text("Player")
                        Text("0")
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                          Text("0")
                    }
                    Spacer()

                }

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
