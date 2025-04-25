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
import Glibc
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
        let flags = fcntl(raw, F_GETFL, 0)
        let status = fcntl(raw, F_SETFL, flags);

        if raw < 0 {
            throw SocketError.NoFileDescriptor
        }

        if status < 0 {
            close(raw)
            throw SocketError.NoFileDescriptor
        }

        self.raw = raw
        self.type = type
    }

    init(type: SocketType = .tcp) throws {
        let fd = socket(AF_INET, type.sockValue, 0)
        try self.init(raw: fd, type: type)
    }

    func shutdown() {
        _ = systemClose(raw)
        _ = systemShutdown(raw, systemSHUT_RDWR)
    }
}
