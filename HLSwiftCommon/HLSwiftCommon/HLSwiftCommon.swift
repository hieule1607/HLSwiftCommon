//
//  HLSwiftCommon.swift
//  HLSwiftCommon
//
//  Created by Hieu Lam on 10/25/18.
//  Copyright © 2018 Hieu Lam. All rights reserved.
//

public class HLSwiftCommon: NSObject {
    
    public static let shared = HLSwiftCommon()
    
    public func getBundle() -> Bundle {
        let bundle = Bundle(for: type(of: self))
        return bundle
    }
    
    private override init() {}
    
}
