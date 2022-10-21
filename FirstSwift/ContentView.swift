//
//  ContentView.swift
//  FirstSwift
//
//  Created by Leo Wall on 21/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello").padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).background(Color.green).blur(radius: 1.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
