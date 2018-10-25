//
//  StringExtension.swift
//  HLSwiftCommon
//
//  Created by Hieu Lam on 10/25/18.
//  Copyright © 2018 Hieu Lam. All rights reserved.
//

public extension String {
    public func fromBase64() -> String? {
        guard let data = Data(base64Encoded: self) else {
            return nil
        }
        
        return String(data: data, encoding: .utf8)
    }
    
    public func toBase64() -> String {
        return Data(self.utf8).base64EncodedString()
    }
}
