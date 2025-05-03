/**
 * @file HTTPResponse.swift
 * @author Krisna Pranav
 * @version 1.0
 * @date 2025-04-25
 *
 * @copyright Copyright (c) 2025 Krisna Pranav
 *
 */

import Foundation

public class HTTPResponse {
    let connection: Connection
    public var status: Int
    public var headers: [String: String]

    var body: Buffer {
        didSet {
            if body.size > 0 {
                self.headers["Content-Length"] = "\(body.size)"
            }
        }
    }

    init(connection: Connection) {
        self.connection = connection
        self.status = 200
        self.headers = [:]
        self.body = Buffer(size: 0)
    }

    func send() {

    }

    public func send(status: Int) {
    }

    public func send(text: String) {
        
    }
}

