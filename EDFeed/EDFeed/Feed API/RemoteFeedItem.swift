//
//  RemoteFeedItem.swift
//  EDFeed
//
//  Created by Alexey Koleda on 11.01.2023.
//

import Foundation

struct RemoteFeedItem {
    let id: UUID
    let description: String?
    let location: String?
    let image : URL
}

extension RemoteFeedItem: Decodable {}
