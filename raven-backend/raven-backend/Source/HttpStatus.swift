/**
 * @file HttpStatus.swift
 * @author Krisna Pranav
 * @version 1.0
 * @date 2025-05-03
 *
 * @copyright Copyright (c) 2025 Krisna Pranav
 *
 */

import Foundation

enum HTTPStatus {
}

fileprivate let map: [Int: HTTPStatus] = [

]

extension HTTPStatus {
    init(status: Int) {
        self = map[status]
    }

    var stringValue: String {
        let value: String

        switch self {
        }
    }
}
