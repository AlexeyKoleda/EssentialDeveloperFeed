//
//  FeedLoader.swift
//  EssentialDeveloperFeed
//
//  Created by Alexey Koleda on 11.10.2022.
//

import Foundation

public enum LoadFeedResult<Error: Swift.Error> {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    associatedtype Error: Swift.Error
    func load(completion: @escaping (LoadFeedResult<Error>) -> Void)
}
