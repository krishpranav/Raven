/**
 * @file Socket.swift
 * @author Krisna Pranav
 * @version 1.0
 * @date 2025-04-25
 *
 * @copyright Copyright (c) 2025 Krisna Pranav
 *
 */

#if os(Linux)
import GLibc
#else
import Darwin
#endif

enum SocketError: Error {
    case NoFileDescriptor
    case CouldNotBind
    case CouldNotListen
}

public enum SocketType {
    case tcp
}

extension SocketType {
    var sockValue: Int32 {
        switch self {
        case .tcp:
            return systemSockStream
        }
    }
}


struct Socket {
    var type: SocketType
    var raw: Int32

    init(raw: Int32, type: SocketType = .tcp) throws {
    }

    init(type: SocketType = .tcp) throws {
    }

    func shutdown() {
        _ = systemClose(raw)
        _ = systemShutdown(raw, systemSHUT_RDWR)
    }
}
