//
//  CacheFeedUseCaseTests.swift
//  EDFeedTests
//
//  Created by Alexey Koleda on 11.01.2023.
//

import XCTest

class FeedStore {
    var deleteCachedFeedCallCount = 0
    
}

class LocalFeedLoader {
    let store: FeedStore
    
    init(store: FeedStore) {
        self.store = store
    }
}

final class CacheFeedUseCaseTests: XCTestCase {

    func test_init_doesNotDeleteCacheUponCreation() {
        let store = FeedStore()
        let _ = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }

}
