//
//  util.swift
//  HeapDemo-swift
//
//  Created by Aldrin Martoq on 11/7/16.
//  Copyright © 2016 Servicios A0 SpA. All rights reserved.
//

import Foundation

let CHARS = 16
let DUMP_PERIOD = 4000
let LINES = 1000000

func getRandomChar() -> UInt8 {
    return UInt8(arc4random_uniform(26)) + 65
}

func getRandomInt() -> Int {
    return Int(arc4random_uniform(26)) + 65
}


var lastDumpTime = 0
var startDumpTime = 0

func dumpStats(index: Int) -> Void {
    let t = Int(NSDate().timeIntervalSince1970 * 1000.0)
    let d = t - lastDumpTime
    
    if (d < DUMP_PERIOD) {
        return
    }
    
    lastDumpTime = t
    if (startDumpTime == 0) {
        startDumpTime = t
    }
    
    let e = t - startDumpTime
    let sec = e / 1000
    let tasa = sec > 0 ? index/sec : 0
    print("---- \(index) ---- \(tasa) [loops/sec]")
}
