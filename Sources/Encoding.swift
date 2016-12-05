//
//  Encoding.swift
//  Encoding
//
//  Created by Devran Uenal on 5.12.16.
//  Copyright © 2016 Devran Uenal. All rights reserved.
//

import Foundation

public extension String {
    public init?<S : Sequence>(bytes: S, iso8859Encoding: ISO8859) where S.Iterator.Element == UInt8 {
        var convertionTable: [UInt8: Int]
        
        switch iso8859Encoding {
        case .part1: convertionTable = CharacterCodingMap.part1
        case .part2: convertionTable = CharacterCodingMap.part2
        case .part3: convertionTable = CharacterCodingMap.part3
        case .part4: convertionTable = CharacterCodingMap.part4
        case .part5: convertionTable = CharacterCodingMap.part5
        case .part6: convertionTable = CharacterCodingMap.part6
        case .part7: convertionTable = CharacterCodingMap.part7
        case .part8: convertionTable = CharacterCodingMap.part8
        case .part9: convertionTable = CharacterCodingMap.part9
        case .part10: convertionTable = CharacterCodingMap.part10
        case .part11: convertionTable = CharacterCodingMap.part11
        case .part13: convertionTable = CharacterCodingMap.part13
        case .part14: convertionTable = CharacterCodingMap.part14
        case .part15: convertionTable = CharacterCodingMap.part15
        case .part16: convertionTable = CharacterCodingMap.part16
        }
        
        let characters = bytes.flatMap{ convertionTable[$0] }.flatMap({ UnicodeScalar($0) }).flatMap({ Character($0) })
        self.init(characters)
    }
}
