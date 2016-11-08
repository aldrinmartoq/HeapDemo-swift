//
//  demo1.swift
//  HeapDemo-swift
//
//  Created by Aldrin Martoq on 11/7/16.
//  Copyright © 2016 Servicios A0 SpA. All rights reserved.
//

import Foundation

func demo1() -> Void {
    print("Demo1")
    
    var lista: Array<Data> = Array()
    
    while true {
        var buffer = Data(count: CHARS)
        let last = CHARS - 1
        for index in 0...last {
            buffer[index] = getRandomChar()
        }
        
        lista.append(buffer)
        dumpStats(index: lista.count)
    }
}
