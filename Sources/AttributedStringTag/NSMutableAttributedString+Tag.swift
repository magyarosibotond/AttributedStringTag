//
//  NSMutableAttributedString+Tag.swift
//  AttributedStringTag
//
//  Created by Botond Magyarosi on 04/11/2018.
//

import Foundation

public extension NSMutableAttributedString {

    /// Set attributes for a specific html tag inside the NSMutableAttributedString
    /// When settings a new attribute, the opening and closing tags are removed.
    ///
    /// - Parameters:
    ///   - attributes: attributes dictionary
    ///   - tag: a tag string. ex.: "b"
    /// - Returns: self reference for better chainability
    @discardableResult
    func setAttributes(_ attributes: [NSAttributedString.Key: Any], forTag tag: String) -> NSMutableAttributedString {
        let tagLength = tag.count + 2
        do {
            let expression = try NSRegularExpression(pattern: "<\(tag)>(.*?)</\(tag)>", options: [])
            var range = NSRange(location: 0, length: string.count)
            while let match = expression.firstMatch(in: string, options: [], range: range) {
                // remove opening tag
                deleteCharacters(in: NSRange(location: match.range.location, length: tagLength))
                // remove closing tag
                deleteCharacters(in: NSRange(location: match.range.lastLocation - 2 * tagLength, length: tagLength + 1))
                // apply attributes
                addAttributes(attributes, range: NSRange(location: match.range.location, length: match.range.length - 2 * tagLength - 1))

                range = NSRange(location: 0, length: string.count)
            }
        } catch {
            print("[‼️ Error] Failed to match tokens inside attributed string: \(error)")
        }

        return self
    }
}
