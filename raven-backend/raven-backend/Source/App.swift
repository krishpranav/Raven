/**
 * @file App.swift
 * @author Krisna Pranav
 * @version 1.0
 * @date 2025-04-25
 *
 * @copyright Copyright (c) 2025 Krisna Pranav
 *
 */

import Foundation

public enum FlameType {
    case serial
    case concurrent
}

extension FlameType {
    var queueType: QueueType {
        switch self {
        case .serial:
            return QueueType.serial
        case .concurrent:
            return QueueType.concurrent
        }
    }
}


public class Flame {
    public let pathHandler: PathHandler = PathHandler()
    public let type: FlameType

    public init(type: FlameType = .serial) {
        self.type = type
    }
}
