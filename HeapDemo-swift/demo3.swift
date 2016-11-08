//
//  demo3.swift
//  HeapDemo-swift
//
//  Created by Aldrin Martoq on 11/7/16.
//  Copyright © 2016 Servicios A0 SpA. All rights reserved.
//

import Foundation

func demo3() -> Void {
    print("Demo3")
    
    var lista = Array(repeating: Data(count: CHARS), count: LINES)
    
    var index = 0
    while true {
        var buffer = lista[index % LINES]
        let last = CHARS - 1
        for index in 0...last {
            buffer[index] = getRandomChar()
        }
        
        dumpStats(index: index)
        index += 1
    }
}
