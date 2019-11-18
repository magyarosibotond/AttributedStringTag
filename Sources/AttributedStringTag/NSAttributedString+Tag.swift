//
//  NSAttributedString+Tag.swift
//  AttributedStringTag
//
//  Created by Botond Magyarosi on 04/11/2018.
//

import Foundation

public typealias Tag = String

public extension NSAttributedString {

    /// Init NSAttributedString with a map of tags and attributes
    /// ex.: ["b": [NSAttributedString.Key.foregroundColor: UIColor.black]]
    ///
    /// - Parameters:
    ///   - string: input string with tags
    ///   - tagsAndAttributes: a map of tags an attributes
    convenience init(string: String, applyingAttributesForTag tagsAndAttributes: [Tag: [NSAttributedString.Key: Any]]) {
        let attributedString = NSMutableAttributedString(string: string)
        for (tag, attributes) in tagsAndAttributes {
            attributedString.setAttributes(attributes, forTag: tag)
        }
        self.init(attributedString: attributedString)
    }
}
