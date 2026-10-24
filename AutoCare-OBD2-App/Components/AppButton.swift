//
//  AppButton.swift
//  AutoCare-OBD2-App
//

import SwiftUI

struct AppButton: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(AppFonts.button)
                .fontWeight(.semibold)
                .foregroundColor(AppColors.accent)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 16)
                .background(AppColors.buttonBackground)
                .cornerRadius(12)
        }
    }
}

struct AppTextButton: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(AppFonts.footer)
                .fontWeight(.bold)
                .foregroundColor(AppColors.accent)
        }
    }
}
