# GithubProfiler

This is a SwiftUI application for iOS that uses the GitHub API to fetch and display user and repository information.

## Overview

The application is built using Swift and the SwiftUI framework. It demonstrates how to authenticate with the GitHub API, fetch user data, and display it in a clean, user-friendly interface.

## Screenshots
| Login screen | Login flow 1 |  Login flow 2 | Login flow 3 | Private repo | Public repo | Account info | Follow and followers | 
|----------------|---------------|---------------|---------------|---------------|---------------|---------------|---------------| 
|<img width="1179" height="2556" alt="Simulator Screenshot - iPhone 16 - 2025-07-15 at 18 34 31" src="https://github.com/user-attachments/assets/c32ff58e-7b6d-4892-9a97-f6fd09c828ff" />|<img width="1179" height="2556" alt="Simulator Screenshot - iPhone 16 - 2025-07-15 at 18 35 01" src="https://github.com/user-attachments/assets/c30119f1-88bc-4aeb-811b-0cc00a67cde5" />|<img width="1179" height="2556" alt="Simulator Screenshot - iPhone 16 - 2025-07-15 at 18 35 25" src="https://github.com/user-attachments/assets/a3105d23-0e21-46dd-9c69-ad29129e7a63" />|<img width="1179" height="2556" alt="Simulator Screenshot - iPhone 16 - 2025-07-15 at 18 35 33" src="https://github.com/user-attachments/assets/60251875-34aa-4611-856d-0784b1e646f7" />| <img width="1206" height="2622" alt="Simulator Screenshot - iPhone 16 Pro - 2025-07-15 at 18 33 13" src="https://github.com/user-attachments/assets/2ee951dd-220d-4ad0-9e2f-d0d92906ea0f" />|<img width="1206" height="2622" alt="Simulator Screenshot - iPhone 16 Pro - 2025-07-15 at 18 33 13" src="https://github.com/user-attachments/assets/a29513ba-492d-438d-8277-9b5ad0faf731" />|<img width="1206" height="2622" alt="Simulator Screenshot - iPhone 16 Pro - 2025-07-15 at 18 33 02" src="https://github.com/user-attachments/assets/218e6024-3baf-446c-9384-345797d7ab88" />|<img width="1206" height="2622" alt="Simulator Screenshot - iPhone 16 Pro - 2025-07-15 at 18 32 57" src="https://github.com/user-attachments/assets/1470d25e-a9d3-4dd1-aa75-38604c5f616d" />

## Core Technologies

* **SwiftUI:** The entire user interface is built using Apple's modern, declarative UI framework.
* **SwiftData:** For persisting data locally, providing a seamless and powerful way to manage the app's data.
* **MVVM (Model-View-ViewModel):** The app follows the MVVM architectural pattern to ensure a clean separation of concerns and a scalable codebase.

### Features

- **GitHub API Integration**: The app uses the GitHub REST API to fetch public and private repositories, user information, followers, and following lists.
- **Authentication**: The app will implement a secure authentication method to allow users to log in with their GitHub account.
- **SwiftUI Views**: The UI is built entirely with SwiftUI, showcasing how to create declarative and responsive user interfaces.

## Getting Started

### Prerequisites
- macOS with Xcode installed.
- A GitHub account.

### Building and Running

1.  **Clone the repository** (if you haven't already):
    ```bash
    git clone <repository-url>
    ```
2.  **Open the project in Xcode**:
    Navigate to the project directory and open the `GithubProfiler.xcodeproj` file.
    ```bash
    cd path/to/GithubProfiler
    open GithubProfiler.xcodeproj
    ```
3.  **Configure API Keys**: You will need to add your GitHub API keys to the project. Create a new Swift file named `APIKeys.swift` in the `GithubProfiler` directory and add the following code:
    ```swift
    import Foundation

    struct APIKeys {
        static let clientID = "YOUR_CLIENT_ID"
        static let clientSecret = "YOUR_CLIENT_SECRET"
    }
    ```
4.  **Select a simulator or device**:
    In Xcode, choose an iOS simulator (e.g., iPhone 15 Pro) or connect a physical iOS device.
5.  **Run the application**:
    Click the "Play" button (or press `Cmd+R`) in Xcode to build and run the application on the selected simulator or device.

## API Layer

The API layer is responsible for all communication with the GitHub API. It is built using a combination of `URLSession` and `Combine` to handle asynchronous network requests.

### Classes

- **APIManager.swift**: This class will be the central point of contact for all API requests. It will handle authentication, request creation, and response parsing.
- **Models**: The project will include a `Models` directory containing Swift structs that map to the JSON responses from the GitHub API. These models will be used to decode the API responses into a type-safe format.

## SwiftUI Views

The user interface is built using SwiftUI. The following views will be implemented:

- **LoginView.swift**: This view will provide a simple interface for users to log in with their GitHub account.
- **ProfileView.swift**: This view will display the user's profile information, including their avatar, username, and bio.
- **RepositoryListView.swift**: This view will display a list of the user's public and private repositories.
- **FollowersView.swift**: This view will display a list of the user's followers.
- **FollowingView.swift**: This view will display a list of the users that the current user is following.

## Testing

The project includes unit tests (`GithubProfilerTests/GithubProfilerTests.swift`) and UI tests (`GithubProfilerUITests/GithubProfilerUITests.swift`).

To run tests:
1. Open the project in Xcode.
2. Go to **Product > Test** (or press `Cmd+U`).

---

This README provides a comprehensive overview of the project. As the project evolves, this document will be updated to reflect the latest changes.
