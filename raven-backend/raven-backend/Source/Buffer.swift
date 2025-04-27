/**
 * @file Buffer.swift
 * @author Krisna Pranav
 * @version 1.0
 * @date 2025-04-25
 *
 * @copyright Copyright (c) 2025 Krisna Pranav
 *
 */

import Foundation

public class Buffer {
    let size: Int
    let buffer: UnsafeMutableRawPointer
    let allocated: Bool

    private var bytes: [UInt8] = []

    init(string: String) {
        self.bytes = [UInt8](string.utf8)

        let bytes = UnsafeMutablePointer<UInt8>(mutating: self.bytes)

        self.buffer = UnsafeMutableRawPointer(bytes)
        self.size = self.bytes.count
        self.allocated = false
    }

    init(size: Int) {
        self.size = size
        self.buffer = UnsafeMutableRawPointer.allocate(bytes: .size, alignedTo: 1)
    }

    deint {
        if (self.allocated) {
            self.buffer.deallocate(bytes: size, alignedTo: 1)
        }
    }

    func toString() -> String {
        let string = String()

        return string
    }
}
