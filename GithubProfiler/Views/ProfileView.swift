//
//  ProfileView.swift
//  GithubProfiler
//
//  Created by Devender Singh on 5/3/25.
//

import SwiftUI

struct ProfileView: View {
    let user: User

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: user.avatarUrl)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 100, height: 100)
            .clipShape(Circle())

            Text(user.name ?? "")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text(user.login)
                .font(.title2)
                .foregroundColor(.gray)

            Text(user.bio ?? "")
                .padding()

            HStack {
                VStack {
                    Text("\(user.followers)")
                        .font(.title)
                    Text("Followers")
                        .font(.caption)
                }
                .padding()

                VStack {
                    Text("\(user.following)")
                        .font(.title)
                    Text("Following")
                        .font(.caption)
                }
                .padding()
            }

            Spacer()
        }
        .navigationTitle("Profile")
    }
}
