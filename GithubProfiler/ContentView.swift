//
//  ContentView.swift
//  GithubProfiler
//
//  Created by Devender Singh on 5/3/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isAuthenticated = false

    var body: some View {
        if isAuthenticated {
            TabView {
                NavigationView {
                    ProfileView(user: mockUser)
                }
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }

                NavigationView {
                    RepositoryListView(repositories: mockRepositories)
                }
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Repositories")
                }

                NavigationView {
                    FollowersView(users: mockUsers)
                }
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Followers")
                }

                NavigationView {
                    FollowingView(users: mockUsers)
                }
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Following")
                }
            }
        } else {
            LoginView()
        }
    }
}

#if DEBUG
let mockUser = User(login: "dsingh2024", id: 1, nodeId: "1", avatarUrl: "https://via.placeholder.com/150", gravatarId: "", url: "", htmlUrl: "", followersUrl: "", followingUrl: "", gistsUrl: "", starredUrl: "", subscriptionsUrl: "", organizationsUrl: "", reposUrl: "", eventsUrl: "", receivedEventsUrl: "", type: "User", siteAdmin: false, name: "Devender Singh", company: "DS", blog: "", location: "USA", email: "", hireable: false, bio: "iOS Developer", twitterUsername: "", publicRepos: 10, publicGists: 5, followers: 100, following: 50, createdAt: "", updatedAt: "")

let mockRepositories = [
    Repository(id: 1, nodeId: "1", name: "Repo 1", fullName: "dsingh2024/repo-1", private: false, owner: mockUser, htmlUrl: "", description: "This is a mock repository.", fork: false, url: "", forksUrl: "", keysUrl: "", collaboratorsUrl: "", teamsUrl: "", hooksUrl: "", issueEventsUrl: "", eventsUrl: "", assigneesUrl: "", branchesUrl: "", tagsUrl: "", blobsUrl: "", gitTagsUrl: "", gitRefsUrl: "", treesUrl: "", statusesUrl: "", languagesUrl: "", stargazersUrl: "", contributorsUrl: "", subscribersUrl: "", subscriptionUrl: "", commitsUrl: "", gitCommitsUrl: "", commentsUrl: "", issueCommentUrl: "", contentsUrl: "", compareUrl: "", mergesUrl: "", archiveUrl: "", downloadsUrl: "", issuesUrl: "", pullsUrl: "", milestonesUrl: "", notificationsUrl: "", labelsUrl: "", releasesUrl: "", deploymentsUrl: "", createdAt: "", updatedAt: "", pushedAt: "", gitUrl: "", sshUrl: "", cloneUrl: "", svnUrl: "", homepage: "", size: 100, stargazersCount: 10, watchersCount: 10, language: "Swift", hasIssues: true, hasProjects: true, hasDownloads: true, hasWiki: true, hasPages: false, forksCount: 5, mirrorUrl: nil, archived: false, disabled: false, openIssuesCount: 2, license: nil, forks: 5, openIssues: 2, watchers: 10, defaultBranch: "main")
]

let mockUsers = [mockUser]
#endif

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
