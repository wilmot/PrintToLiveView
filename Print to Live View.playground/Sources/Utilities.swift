





// Print to Live View
// Please send feedback and suggestions for improvement to
// Barry Langdon-Lassagne, support@voyageropen.com
// 
// Public Domain:
// To the extent possible under law, Barry Langdon-Lassagne has waived all
// copyright and related or neighboring rights to this work.
// This work is published from: United States.

import UIKit
import PlaygroundSupport

// Note: frame is only needed for Xcode Playgrounds support
public let textView = UITextView(frame: CGRect(x: 0, y: 0, width: 600, height: 600))
internal var text = ""

/// An alternative to Swift's built-in print() func for use in Swift Playgrounds. To see output in the Live View, add the line `printToLiveView()` to the bottom of your playground
/// - Parameters:
///   - items: Zero or more items to print.
///   - separator: A string to print between each item. The default is a single space (" ").
///   - terminator: The string to print after all items have been printed. The default is a newline ("\n").
public func lprint(_ items: Any..., separator: String = " ", terminator: String = "\n") -> String {
    var newText = ""
    for item in items.dropLast() {
        newText += "\(item)"
        newText += separator
    }
    newText += "\(items.last!)"
    newText += terminator
    text += newText // Concatenate output from all the lprint() statements for display in the Live View
    return newText // Show the text in the results column
}

/// Add this to the end of your Playground page to enable lprint() to print to the Live View
public func lprintToLiveView() {
    if !(text == "") {
        textView.text = text
        PlaygroundPage.current.liveView = textView
    }
}
