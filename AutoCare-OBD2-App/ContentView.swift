//
//  ContentView.swift
//  AutoCare-OBD2-App
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            Text("AutoCare")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    ContentView()
}
