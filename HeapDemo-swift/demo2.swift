//
//  demo2.swift
//  HeapDemo-swift
//
//  Created by Aldrin Martoq on 11/7/16.
//  Copyright © 2016 Servicios A0 SpA. All rights reserved.
//

import Foundation

func demo2() -> Void {
    print("Demo2")
    
    var lista = Array(repeating: Data(count: CHARS), count: LINES)
    
    var index = 0
    while true {
        var buffer = Data(count: CHARS)
        let last = CHARS - 1
        for index in 0...last {
            buffer[index] = getRandomChar()
        }
        
        lista[index % LINES] = buffer
        dumpStats(index: index)
        index += 1
    }
}
