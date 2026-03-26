import Foundation

// This is a replacement for TSCBasic's StringError type (which we can't use
// because importing TSCBasic introduces sqlite symbol clashes with
// swift-toolchain-sqlite on Windows)

struct StringError: LocalizedError {
    var message: String

    init(_ message: String) {
        self.message = message
    }

    var errorDescription: String? {
        message
    }
}
