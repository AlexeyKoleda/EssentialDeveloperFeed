//
//  HTTPClient.swift
//  EDFeed
//
//  Created by Alexey Koleda on 06.01.2023.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (Error) -> Void)
}
 
