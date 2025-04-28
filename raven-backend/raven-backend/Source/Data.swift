/**
 * @file Data.swift
 * @author Krisna Pranav
 * @version 1.0
 * @date 2025-04-25
 *
 * @copyright Copyright (c) 2025 Krisna Pranav
 *
 */

import Foundation

enum EncodingError: Error {
    case Failed
}

public struct Data {
    public var bytes: [UInt8]

    public var size: Int {
        return bytes.count
    }

    public var raw: UnsafeMutablePointer<UInt8> {
        return UnsafeMutablePointer<UInt8>(mutating: bytes)
    }

    public init() {
        self.bytes = []
    }

    public init(bytes: [UInt8]) {
        self.bytes = bytes
    }

    public mutating func append(_ bytes: [UInt8]) {
        self.bytes += bytes
    }

    public func toString() throws -> String {
        var bytes = self.bytes
        guard let str = String() else {
            t
        }
    }

}
