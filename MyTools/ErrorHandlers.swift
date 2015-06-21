//
//  ErrorHandlers.swift
//  MyTools
//
//  Created by Amine Chaouki on 21/06/15.
//  Copyright © 2015 chaouki. All rights reserved.
//

import Foundation

typealias VoidHandler = (() throws -> ()) -> ()
typealias IntHandler = (() throws -> Int) -> ()
typealias DoubleHandler = (() throws -> Double) -> ()