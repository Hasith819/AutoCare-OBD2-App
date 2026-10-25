//
//  ReportView.swift
//  AutoCare-OBD2-App
//
import SwiftUI

struct ReportView: View {
    var body: some View {
        ZStack {
            Color(red: 0.05, green: 0.07, blue: 0.09)
                .ignoresSafeArea()

            Text("Hello Report")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    ReportView()
}
