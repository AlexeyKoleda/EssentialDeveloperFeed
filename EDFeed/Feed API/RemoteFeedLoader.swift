//
//  RemoteFeedLoader.swift
//  EDFeed
//
//  Created by Alexey Koleda on 06.01.2023.
//

import Foundation

public final class RemoteFeedLoader {
    private let url: URL
    private let client: HTTPClient
    
    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    
    public init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    public func load(completion: @escaping (Error) -> Void) {
        client.get(from: url) { error, responce in
            if responce != nil {
                completion(.invalidData)
            } else {
                completion(.connectivity)
            }
        }
    }
}
