/**
 * @file HTTPMethod.swift
 * @author Krisna Pranav
 * @version 1.0
 * @date 2025-04-25
 *
 * @copyright Copyright (c) 2025 Krisna Pranav
 *
 */

import Foundation

public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

extension HTTPMethod {
    init?(string: String) {
        if let method = HTTPMethod.init(rawValue: string) {
            self = method
        } else {
            return nil
        }
    }
}
