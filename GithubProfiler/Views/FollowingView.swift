//
//  FollowingView.swift
//  GithubProfiler
//
//  Created by Devender Singh on 5/3/25.
//

import SwiftUI

struct FollowingView: View {
    let users: [User]

    var body: some View {
        List(users, id: \.id) { user in
            HStack {
                AsyncImage(url: URL(string: user.avatarUrl)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 50, height: 50)
                .clipShape(Circle())

                Text(user.login)
                    .font(.headline)
            }
        }
        .navigationTitle("Following")
    }
}
