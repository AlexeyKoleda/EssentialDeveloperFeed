//
//  FeedLoader.swift
//  EssentialDeveloperFeed
//
//  Created by Alexey Koleda on 11.10.2022.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
