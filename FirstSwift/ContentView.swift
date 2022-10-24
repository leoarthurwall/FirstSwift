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
                Button("Click Me", action: {
                    print("Hello world")
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
