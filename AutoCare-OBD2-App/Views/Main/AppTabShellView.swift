//
//  AppTabShellView.swift
//  AutoCare-OBD2-App
//

import SwiftUI

struct AppTabShellView: View {
    var body: some View {
        TabView {
            NavigationStack {
                GarageView()
            }
            .tabItem {
                Label("Garage", systemImage: "car.fill")
            }

            NavigationStack {
                TelemetryView()
            }
            .tabItem {
                Label("Telemetry", systemImage: "gauge")
            }

            NavigationStack {
                ServiceView()
            }
            .tabItem {
                Label("Service", systemImage: "wrench.and.screwdriver.fill")
            }

            NavigationStack {
                MapView()
            }
            .tabItem {
                Label("Map", systemImage: "map.fill")
            }

            NavigationStack {
                ReportView()
            }
            .tabItem {
                Label("Report", systemImage: "doc.text.fill")
            }
        }
        .tint(AppColors.accent)
    }
}

#Preview {
    AppTabShellView()
}
