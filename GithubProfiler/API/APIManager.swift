//
//  APIManager.swift
//  GithubProfiler
//
//  Created by Devender Singh on 5/3/25.
//

import Foundation
import Combine

class APIManager {
    static let shared = APIManager()
    private let session: URLSession

    private init() {
        let config = URLSessionConfiguration.default
        config.httpAdditionalHeaders = [
            "Accept": "application/vnd.github.v3+json"
        ]
        self.session = URLSession(configuration: config)
    }

    func fetch<T: Decodable>(from url: URL) -> AnyPublisher<T, Error> {
        session.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: T.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
