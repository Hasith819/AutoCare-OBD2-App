//
//  GarageView.swift
//  AutoCare-OBD2-App
//
import SwiftUI

struct GarageView: View {
    var body: some View {
        ZStack {
            Color(red: 0.05, green: 0.07, blue: 0.09)
                .ignoresSafeArea()

            Text("Hello Garage")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    GarageView()
}
