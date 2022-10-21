//
//  ContentView.swift
//  FirstSwift
//
//  Created by Leo Wall on 21/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit);
            
            Text("Hello World!")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
