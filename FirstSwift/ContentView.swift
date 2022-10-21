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
            
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit);
            
            VStack(alignment: .center, spacing: 50.0) {
                Text("Hello World!")
                Text("I am embedded")
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
