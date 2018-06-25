//
//  Main.swift
//  DynamicFramework
//
//  Created by Simon Baranov on 25/06/2018.
//  Copyright © 2018 MyOrg. All rights reserved.
//

import Foundation
import StaticFramework

public class TestDynamic {
    
    public static func sayHi() -> String {
        return "Hi from Dynamic Framework!"
    }
    
    public static func hiFromStatic() -> String {
        return TestStatic.sayHi()
    }
}
