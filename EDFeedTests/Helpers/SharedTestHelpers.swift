//
//  SharedTestHelpers.swift
//  EDFeedTests
//
//  Created by Alexey Koleda on 09.01.2023.
//

import Foundation

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    URL(string: "http://any-url.com")!
}

func anyData() -> Data {
    Data("any data".utf8)
}
