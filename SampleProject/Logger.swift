//
//  Logger.swift
//  SampleProject
//
//  Created by Hyunho Park on 2021/04/02.
//

import Foundation
import CocoaLumberjack

@inline(__always)
public func LogDebug(_ item: Any,
                     functionName: StaticString = #function,
                     fileName: StaticString = #file,
                     line: UInt = #line) {
    DDLogDebug(String(describing: item), file: fileName, function: functionName, line: line)
}
