//
//  LoginView.swift
//  AutoCare-OBD2-App
//

import SwiftUI

struct LoginView: View {
    @State private var email = "owner@example.com"
    @State private var password = "••••••••••"
    
    var body: some View {
        NavigationStack {
        ZStack {
            AppColors.background
                .ignoresSafeArea()
            
            VStack(spacing: 28) {
                Spacer()
                
                
                Text("AutoCare")
                    .font(AppFonts.title)
                    .foregroundColor(AppColors.primaryText)
                    .padding(.bottom, 10)
                
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("Welcome back")
                        .font(AppFonts.heading)
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.primaryText)
                    
                    Text("Secure access to your vehicle garage")
                        .font(AppFonts.body)
                        .foregroundColor(AppColors.secondaryLabel)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 24)
                
                
                VStack(spacing: 16) {
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Email")
                            .font(AppFonts.label)
                            .foregroundColor(AppColors.secondaryLabel)
                        
                        TextField("", text: $email)
                            .foregroundColor(AppColors.primaryText)
                            .textInputAutocapitalization(.never)
                            .keyboardType(.emailAddress)
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .background(AppColors.inputBackground)
                    .cornerRadius(12)
                    
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Password")
                            .font(AppFonts.label)
                            .foregroundColor(AppColors.secondaryLabel)
                        
                        SecureField("", text: $password)
                            .foregroundColor(AppColors.primaryText)
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .background(AppColors.inputBackground)
                    .cornerRadius(12)
                }
                .padding(.horizontal, 24)
                
                
                Button(action: {
                    
                }) {
                    Text("Sign In")
                        .font(AppFonts.button)
                        .fontWeight(.semibold)
                        .foregroundColor(AppColors.accent)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 16)
                        .background(AppColors.buttonBackground)
                        .cornerRadius(12)
                }
                .padding(.horizontal, 24)
                
                
                VStack(spacing: 4) {
                    Text("New here?")
                        .font(AppFonts.footer)
                        .foregroundColor(AppColors.secondaryLabel)
                    
                    NavigationLink {
                        RegisterView()
                    } label: {
                        Text("Create Account")
                            .font(AppFonts.footer)
                            .fontWeight(.bold)
                            .foregroundColor(AppColors.accent)
                    }
                }
                .padding(.top, 8)
                
                Spacer()
            }
        }
    }
        .toolbar(.hidden, for: .navigationBar)
    
  }
}

#Preview {
    LoginView()
}
