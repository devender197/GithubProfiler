//
//  LoginView.swift
//  GithubProfiler
//
//  Created by Devender Singh on 5/3/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Text("Login with GitHub")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            Button(action: {
                // Handle GitHub login
            }) {
                Text("Login")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
