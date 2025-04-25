/**
 * @file Address.swift
 * @author Krisna Pranav
 * @version 1.0
 * @date 2025-04-25
 *
 * @copyright Copyright (c) 2025 Krisna Pranav
 *
 */



import Foundation

struct Address {
    let raw: UnsafeMutablePointer<sockaddr_in>

    init(address: String, port: Int) throws  {
        let socketAddress = UnsafeMutablePointer<sockaddr_in>.allocate(capacity: 1)

        socketAddress.pointee.sin_family = sa_family_t(AF_INET)
        socketAddress.pointee.sin_port = Address.htons(port: in_port_t(port))

        #if os(Linux)
            socketAddress.pointee.sin_addr = in_addr(s_addr: in_addr_t(0))
        #else
            socketAddress.pointee.sin_len = UInt8(MemoryLayout<sockaddr_in>.size)
            socketAddress.pointee.sin_addr = in_addr(s_addr: inet_addr("0.0.0.0"))
        #endif
        socketAddress.pointee.sin_zero = (0, 0, 0, 0, 0, 0, 0, 0)

        self.raw = socketAddress
    }

    static func htons(port: in_port_t) -> in_port_t {
        #if os(Linux)
            return port.bigEndian
        #else
            let isLittleEndian = Int(OSHostByteOrder()) == OSLittleEndian
            return isLittleEndian ? _OSSwapInt16(port) : port
        #endif
    }
}
