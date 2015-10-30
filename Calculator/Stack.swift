//
//  Stack.swift
//  Calculator
//
//  Created by Taylor Mott on 10/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import Foundation

class Stack {
    
    private var floatStack = [Float]()
    
    func pop() -> Float? {
        return floatStack.removeLast()
    }
    
    func push(number: Float) {
        floatStack.append(number)
    }
    
    func log() {
        print(floatStack)
    }
    
    func count() -> Int {
        return floatStack.count
    }

}
