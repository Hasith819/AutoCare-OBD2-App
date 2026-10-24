//
//  RegisterView.swift
//  AutoCare-OBD2-App
//
import SwiftUI

struct RegisterView: View {
    @Environment(\.dismiss) private var dismiss

    @State private var fullName = "Pubudu Hasith"
    @State private var email = "owner@example.com"
    @State private var password = ""
    @State private var phoneNumber = "+94 7X XXX XXXX"
    @State private var isTermsAccepted = true

    var body: some View {
        ZStack {
            AppColors.background
                .ignoresSafeArea()

            ScrollView(showsIndicators: false) {
                VStack(spacing: 24) {
                    Spacer()
                        .frame(height: 30)

                    Text("AutoCare")
                        .font(AppFonts.title)
                        .foregroundColor(AppColors.primaryText)
                        .padding(.bottom, 6)

                    VStack(alignment: .leading, spacing: 4) {
                        Text("Create Account")
                            .font(AppFonts.heading)
                            .fontWeight(.bold)
                            .foregroundColor(AppColors.primaryText)

                        Text("Set up your secure vehicle profile")
                            .font(AppFonts.body)
                            .foregroundColor(AppColors.secondaryLabel)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 24)

                    VStack(spacing: 14) {
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Full Name")
                                .font(AppFonts.label)
                                .foregroundColor(AppColors.secondaryLabel)

                            TextField("Enter your name", text: $fullName)
                                .foregroundColor(AppColors.primaryText)
                        }
                        .padding(.horizontal, 16)
                        .padding(.vertical, 12)
                        .background(AppColors.inputBackground)
                        .cornerRadius(12)

                        VStack(alignment: .leading, spacing: 6) {
                            Text("Email")
                                .font(AppFonts.label)
                                .foregroundColor(AppColors.secondaryLabel)

                            TextField("Enter your email", text: $email)
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

                            SecureField("Create a password", text: $password)
                                .foregroundColor(AppColors.primaryText)
                        }
                        .padding(.horizontal, 16)
                        .padding(.vertical, 12)
                        .background(AppColors.inputBackground)
                        .cornerRadius(12)

                        VStack(alignment: .leading, spacing: 6) {
                            Text("Phone Number")
                                .font(AppFonts.label)
                                .foregroundColor(AppColors.secondaryLabel)

                            TextField("+94 7X XXX XXXX", text: $phoneNumber)
                                .foregroundColor(AppColors.primaryText)
                                .keyboardType(.phonePad)
                        }
                        .padding(.horizontal, 16)
                        .padding(.vertical, 12)
                        .background(AppColors.inputBackground)
                        .cornerRadius(12)
                    }
                    .padding(.horizontal, 24)

                    Button(action: {
                        isTermsAccepted.toggle()
                    }) {
                        HStack(spacing: 10) {
                            Image(
                                systemName: isTermsAccepted
                                    ? "checkmark.square.fill"
                                    : "square"
                            )
                            .foregroundColor(
                                isTermsAccepted
                                    ? AppColors.primaryText
                                    : AppColors.secondaryLabel
                            )
                            .font(.system(size: 18, weight: .semibold))

                            Text("I agree to Terms & Conditions")
                                .font(AppFonts.body)
                                .foregroundColor(AppColors.primaryText)

                            Spacer()
                        }
                    }
                    .padding(.horizontal, 24)
                    .padding(.vertical, 4)

                    Button(action: {
                        // Account creation will be added later.
                    }) {
                        Text("Create My Account")
                            .font(AppFonts.button)
                            .fontWeight(.semibold)
                            .foregroundColor(AppColors.accent)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 16)
                            .background(AppColors.buttonBackground)
                            .cornerRadius(12)
                    }
                    .padding(.horizontal, 24)

                    HStack(spacing: 6) {
                        Text("Already have an account?")
                            .font(AppFonts.footer)
                            .foregroundColor(AppColors.secondaryLabel)

                        Button("Sign In") {
                            dismiss()
                        }
                        .font(AppFonts.footer)
                        .fontWeight(.bold)
                        .foregroundColor(AppColors.accent)
                    }
                    .padding(.top, 4)

                    Spacer()
                        .frame(height: 30)
                }
            }
        }
    }
}

#Preview {
    RegisterView()
}
