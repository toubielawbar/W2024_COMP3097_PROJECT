//
//  ContentView.swift
//  Practice
//
//  Created by Divine Falola on 2024-02-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("getstarted")
                    
                VStack {
                    Spacer()
                    
                    Button(action: {
                        print("Get Started button pressed")
                    }) {
                        HStack {

                            NavigationLink(destination: SignupView()) {
                                Text("Get Started")
                                .font(.title)
                                .foregroundColor(.black)
                            
                                Image(systemName: "arrow.forward")
                                    .foregroundColor(.black)
                                    .font(.title)
                            }
                        }
                        .padding()
                    }
                    
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
