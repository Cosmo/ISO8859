//
//  Encoding.swift
//  Encoding
//
//  Created by Devran Uenal on 5.12.16.
//  Copyright © 2016 Devran Uenal. All rights reserved.
//

import Foundation

public extension String {
    init?<S : Sequence>(_ bytes: S, iso8859Encoding: ISO8859) where S.Iterator.Element == UInt8 {
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
        
        let characters = bytes.compactMap{ convertionTable[$0] }.compactMap({ UnicodeScalar($0) }).compactMap({ Character($0) })
        self.init(characters)
    }
    
    /// Returns a `Data` containing a representation of
    /// the `String` encoded using a given encoding.
    func data(using iso8859Encoding: ISO8859) -> Data? {
        let convertionTable: [UInt8: Int]
        
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
        
        let inverse = convertionTable.reduce(into: [Int:UInt8]()) { result, entry in
            result[entry.value] = entry.key
        }
        
        let bytes = unicodeScalars.compactMap { inverse[Int($0.value)] }
        return Data(bytes)
    }
}
