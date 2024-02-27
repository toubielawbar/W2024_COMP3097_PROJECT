//
//  SignupView.swift
//  Practice
//
//  Created by Divine Falola on 2024-02-24.
//

import Foundation
import SwiftUI

struct SignupView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Sign Up")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                
                Text("Sign Up to personalize your experience")
                    .padding(.top, 10)
                
                VStack(spacing: 10) {
                    TextField("First Name", text: $firstName)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(5.0)
                    
                    TextField("Last Name", text: $lastName)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(5.0)
                    
                    TextField("Email", text: $email)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(5.0)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(5.0)
                    
                    SecureField("Confirm Password", text: $confirmPassword)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(5.0)
                }
                .padding(.vertical, 20)
                
                NavigationLink(destination: CreateTaskView()) {
                    Text("Register")
                        .frame(maxWidth: .infinity)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(5.0)
                }
                
                Text("OR")
                
                HStack {
                    Button(action: {
                        // Handle Google sign-in
                        print("Google button tapped")
                        }) {
                            Image("google")
                        }
                                
                    Button(action: {
                        // Handle Facebook sign-in
                        print("Facebook button tapped")
                        }) {
                            Image("facebook")
                        }
                                
                    Button(action: {
                        // Handle Apple sign-in
                        print("Apple button tapped")
                        }) {
                            Image("apple")
                        }
                                
                    }
                
                // Social media sign-in buttons
                
                NavigationLink(destination: LoginView()) {
                Text("Already have an account? Sign In")
                    .padding(.top, 20)
                    .foregroundColor(.blue)
                }
            }
            .padding()
            .background(Color(red: 236/255, green: 244/255, blue: 255/255))
            .cornerRadius(20.0)
            .padding()
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_SignupView: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
