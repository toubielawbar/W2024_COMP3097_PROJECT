//
//  HomeView.swift
//  Practice
//
//  Created by Divine Falola on 2024-02-26.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var data = [
        TodoItem(id: "1", title: "Task1", category: "Important"),
        TodoItem(id: "2", title: "Task2", category: "Low"),
        TodoItem(id: "3", title: "Task3", category: "Priority"),
        TodoItem(id: "4", title: "Task4", category: "Low")
    ]

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Welcome, User")
                    .font(.title)
                    .fontWeight(.bold)
                
                Divider()
                
                HStack {
                    TextField("Search tasks...", text: .constant(""))
                        .padding()
                        .background(Color.white)
                        .cornerRadius(5.0)
                    
                    Button(action: {}) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(5.0)
                    }
                }
                
                VStack {
                    Text("Completed Tasks")
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(5.0)
                    
                    Image("getstarted")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .padding()
                }
                
                Spacer()
                
                ForEach(data, id: \.id) { item in
                    TodoListItemView(item: item)
                }
            }
            .padding()
        }
    }
}

struct TodoListItemView: View {
    var item: TodoItem
    
    var body: some View {
        HStack {
            Text(item.title)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(Color.blue)
        }
        .padding()
        .background(Color(red: 0.98, green: 0.95, blue: 0.95))
        .cornerRadius(15)
    }
}

struct TodoItem: Identifiable {
    var id: String
    var title: String
    var category: String
}

struct ContentView_HomeView: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
