//
//  SwiftUIView.swift
//  
//
//  Created by Ruben Garcia on 20/06/24.
//

import SwiftUI

struct FOASigninScreen: View {
    var body: some View {
            VStack {
                Text("Sign in")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                
                Spacer()
                
//                Image("fifa_logo") // Add your logo image here
//                    .resizable()
//                    .frame(width: 100, height: 50) // Adjust the size as needed
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Email")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    TextField("Email", text: .constant(""))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Password")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    SecureField("Password", text: .constant(""))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .overlay(
                            HStack {
                                Spacer()
                                Image(systemName: "eye.slash")
                                    .foregroundColor(.gray)
                                    .padding()
                            }
                        )
                    
                    Button(action: {
                        // Sign In action
                    }) {
                        Text("SIGN IN")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    
                    Button(action: {
                        // Recover password action
                    }) {
                        Text("Recover password")
                            .foregroundColor(.blue)
                    }
                    .padding(.top, 10)
                }
                .padding(.horizontal, 40)
                
                Spacer()
                
                Button(action: {
                    // Sign Up action
                }) {
                    Text("Don’t have an account?")
                        .foregroundColor(.gray)
                        .padding(.bottom, 1)
                    Text("SIGN UP")
                        .foregroundColor(.blue)
                }
                .padding(.bottom, 20)
            }
            .navigationBarTitle("Sign in", displayMode: .inline)
        }
}

#Preview {
    FOASigninScreen()
}
