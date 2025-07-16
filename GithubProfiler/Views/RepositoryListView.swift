//
//  RepositoryListView.swift
//  GithubProfiler
//
//  Created by Devender Singh on 5/3/25.
//

import SwiftUI

struct RepositoryListView: View {
    let repositories: [Repository]

    var body: some View {
        List(repositories) { repository in
            VStack(alignment: .leading) {
                Text(repository.name)
                    .font(.headline)
                Text(repository.description ?? "")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                HStack {
                    Image(systemName: "star")
                    Text("\(repository.stargazersCount)")
                    Image(systemName: "arrow.branch")
                    Text("\(repository.forksCount)")
                }
            }
        }
        .navigationTitle("Repositories")
    }
}
