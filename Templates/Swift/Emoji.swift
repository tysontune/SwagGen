// Emoji.swift
//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

public protocol EmojiConvertible {
    var emoji: String { get }
}

public protocol EmojiType: EmojiConvertible {
    static var emoji: String { get }
}

extension EmojiType {
    public var emoji: String {
        return type(of: self).emoji
    }
}
