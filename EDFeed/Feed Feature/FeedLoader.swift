//
//  FeedLoader.swift
//  EssentialDeveloperFeed
//
//  Created by Alexey Koleda on 11.10.2022.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeelLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
