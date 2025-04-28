/**
 * @file HTTPParser.swift
 * @author Krisna Pranav
 * @version 1.0
 * @date 2025-04-25
 *
 * @copyright Copyright (c) 2025 Krisna Pranav
 *
 */

import Foundation

struct ParserError: Error {
    let problemArea: String
    let message: String
}

struct HTTPParser {
    let data: Data

    init(data: Data) {
        self.data = data
    }

    func parse() throws -> HTTPRequest? {
        let raw = try self.data.toString()

        guard raw.contains("\r\n\r\n") else {
            return nil
        }

        var lines = raw.components(separatedBy: "\r\n")
    }

    func loadRoute(line: String) throws -> (method: HTTPMethod, path: String, httpProtocols: String) {
        
    }
}
