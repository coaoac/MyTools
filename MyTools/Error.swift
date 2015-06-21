//
//  Error.swift
//  MyTools
//
//  Created by Amine Chaouki on 21/06/15.
//  Copyright © 2015 chaouki. All rights reserved.
//

import Foundation

public struct Error: Equatable, ErrorType {
    public let devDesc: String
    public let usrDesc: String

    public init(devDesc:String, usrDesc: String, subErrors: [Error] = []){
        var tempDevDesc = devDesc
        for sub in subErrors {
            tempDevDesc += "\n \(sub.devDesc)"
        }
        self.devDesc = tempDevDesc

        var tempUsrDesc = usrDesc
        for sub in subErrors {
            tempUsrDesc += "\n \(sub.usrDesc)"
        }
        self.usrDesc = tempUsrDesc
        print("ERROR: Developer Description: \(self.devDesc)")
    }
}



public func ==(left: Error, right: Error) -> Bool {
    return left.devDesc == right.devDesc && left.usrDesc == right.usrDesc
}

public func !=(left: Error, right: Error) -> Bool {
    return !(left == right)
}

