//
//  ContentView.swift
//  AppToControl
//
//  Created by Jason Rich Darmawan Onggo Putra on 12/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var helloWorld_ = true;
    
    func toggleHelloWorld() {
        helloWorld_ = !helloWorld_;
    }
    
    var body: some View {
        VStack {
            Text(helloWorld_ ? "Hello World" : "World Hello")
                .onTapGesture(perform: {
                    toggleHelloWorld()
                })
                .onOpenURL(perform: { url in
                    if url.scheme == "apptocontrol", url.host == "toggleHelloWorld" {
                        toggleHelloWorld()
                    }
                })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
