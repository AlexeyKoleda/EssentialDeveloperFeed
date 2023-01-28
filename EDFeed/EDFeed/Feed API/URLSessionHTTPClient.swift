//
//  URLSessionHTTPClient.swift
//  EDFeed
//
//  Created by Alexey Koleda on 09.01.2023.
//

import Foundation

public class URLSessionHTTPClient: HTTPClient {
    private struct UnexpectedValuesRepresentation: Error {}
    
    private let session: URLSession
    
    public init(session: URLSession = .shared) {
        self.session = session
    }
    
    public func get(from url: URL, completion: @escaping (HTTPClient.Result) -> Void) {
        session.dataTask(with: url) { data, response, error in
            completion(Result{
                if let data = data, let response = response as? HTTPURLResponse {
                    return (data, response)
                } else if let error = error {
                    throw error
                } else {
                    throw UnexpectedValuesRepresentation()
                }
            })
        }.resume()
    }
}
