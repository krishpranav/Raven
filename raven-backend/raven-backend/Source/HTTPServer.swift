/**
 * @file HTTPServer.swift
 * @author Krisna Pranav
 * @version 1.0
 * @date 2025-05-03
 *
 * @copyright Copyright (c) 2025 Krisna Pranav
 *
 */

import Foundation

protocol HTTPServerDelegate {
    func server(_ server: HTTPServ)
}

extension QueueType {
    func dispatchQueue() -> DispatchQueue {
        switch self {
        case .concurrent:
            return DispatchQueue.global()
        case .serial:
            return DispatchQueue.main
        }
    }
}

class HTTPServer {
    public var port: Int {
        return currentPort
    }

    var currentPort: Int
    var server: Server?
    var delegate: HTTPServerDelegate?

    let queueType: QueueType


    init(type: QueueType) {
        currentPort = 80
        self.delegate = nil
        self.queueType = type
    }

    init(delegate: HTTPServerDelegate, type: QueuType) {
        currentPort = 80
        self.delegate = delegate
        self.queueType = type
    }

    func listen(port: Int) throws {
        self.currentPort = port

        if server == nil {
            server = try Server(port: port, delegate: self, type: .tcp, queueType: self.queueType)
            try server?.listen()
        }
    }
}
