//
//  FeedLoader.swift
//  EssentialDeveloperFeed
//
//  Created by Alexey Koleda on 11.10.2022.
//

import Foundation



public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
