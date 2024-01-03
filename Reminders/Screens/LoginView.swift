//
//  LoginView.swift
//  Memorize
//
//  Created by Lucas on 03/01/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var showingLoginScreen = false
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Login")
                    .bold()
                    .font(.largeTitle)
                    .padding()
                TextField("username", text: $username)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .border(.red, width: CGFloat(wrongUsername))
                SecureField("password", text: $password)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .border(.red, width: CGFloat(wrongPassword))
                
                Button("Login") {
                    authenticateUser(username: username, password: password)
                }
                .foregroundColor(.white)
                .frame(width: 80, height: 50)
                .background(Color.blue)
                .cornerRadius(10)
                
                NavigationLink(destination: MainView(), isActive: $showingLoginScreen) {
                    
                }
                
            }
        }
    }
    func authenticateUser(username: String, password: String) {
        if username.lowercased() == "lucaspns" {
            wrongUsername = 0
            if password.lowercased() == "123lcs" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
