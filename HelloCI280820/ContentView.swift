//
//  ContentView.swift
//  HelloCI280820
//
//  Created by Youjin Phea on 28/08/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAlert = false
    var body: some View {
        Text("Hello, world!")
            .padding()
        Button(action: { showAlert = true }) {
            Text("Press me")
        }.alert(isPresented: $showAlert, content: {
            Alert(title: Text("Ok") )
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
