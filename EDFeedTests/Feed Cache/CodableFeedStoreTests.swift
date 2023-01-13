//
//  CodableFeedStoreTests.swift
//  EDFeedTests
//
//  Created by Alexey Koleda on 13.01.2023.
//

import XCTest
import EDFeed

class CodableFeedStore {
    func retrieve(completion: @escaping FeedStore.RetrievalCompletion) {
        completion(.empty)
    }
}

final class CodableFeedStoreTests: XCTestCase {

    func test_retrieve_deliversEmptyOnEmptyCache() {
        let sut = CodableFeedStore()
        
        let exp = expectation(description: "Wait for cache retrieval")
        sut.retrieve { result in
            switch result {
            case .empty: break
            default:
                XCTFail("Expected empty result, but got \(result) instad.")
            }
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 1.0)
    }
}
