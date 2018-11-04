//
//  NSRange+Location.swift
//  AttributedStringTag
//
//  Created by Botond Magyarosi on 04/11/2018.
//

import Foundation

extension NSRange {

    /// Returns last location for a given range.
    var lastLocation: Int {
        return location + length - 1
    }
}
