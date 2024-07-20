//
//  ContentView.swift
//  SwiftUi-Weather
//
//  Created by FartFire on 7/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), 
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea( .all)
        }
    }
}

#Preview {
    ContentView()
}
