//
//  ImageExtension.swift
//  HLSwiftCommon
//
//  Created by Hieu Lam on 10/25/18.
//  Copyright © 2018 Hieu Lam. All rights reserved.
//

public extension UIImage {
    enum JPEGQuality: CGFloat {
        case lowest  = 0
        case low     = 0.25
        case medium  = 0.5
        case high    = 0.75
        case highest = 1
    }
    
    func jpeg(_ quality: JPEGQuality) -> Data? {
        return UIImageJPEGRepresentation(self, quality.rawValue)
    }
    
    func toBase64() -> String {
        let imageData = self.jpeg(.medium)
        let base64String = imageData?.base64EncodedString()
        return base64String ?? ""
    }
}
