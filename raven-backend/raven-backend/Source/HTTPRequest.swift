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

public class HTTPRequest {
    public let method: HTTPMethod
    public let headers: [String: String]
    public let body: String
    public let query: [String: Any]
    public let path: String
    public let httpProtocol: String

    var connection: Connection?

    public init(headers: [String: String], method: HTTPMethod, body: String, path: String, httpProtocols: String) {
        self.headers = headers
        self.body = body
        self.method = method
        self.httpProtocol = httpProtocols

        let pathComps = path.components(separatedBy: "?")
        self.path = pathComps.first ?? "/"

        var query: [String: Any] = [:]

        self.query = query
    }
}
