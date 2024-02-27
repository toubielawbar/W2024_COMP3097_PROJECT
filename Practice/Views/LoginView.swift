import Foundation
import SwiftUI

struct LoginView: View {


    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
        VStack {
            Text("Log in")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            Text("Welcome back! Please follow the instructions to sign in")
                .padding(.top, 10)
            
            VStack(spacing: 10) {
               
               
                TextField("Email Address", text: $email)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5.0)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5.0)
            }
            .padding(.vertical, 20)
            
            NavigationLink(destination: HomeView()) {
                Text("Sign in")
                    .frame(maxWidth: .infinity)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(5.0)
            }

            NavigationLink(destination: ResetPasswordView()) {
            Text("Forgot Password? Reset Password")
                .padding(.top, 0)
            }
            
            .padding(.top, 15)
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
            .padding(.vertical, 10)
            
            NavigationLink(destination: SignupView()) {
            Text("Don't have an account? Sign Up")
                .padding(.top, 10)
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

struct ContentView_LoginViews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


