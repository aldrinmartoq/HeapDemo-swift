//
//  main.swift
//  HeapDemo-swift
//
//  Created by Aldrin Martoq on 11/7/16.
//  Copyright © 2016 Servicios A0 SpA. All rights reserved.
//

import Foundation


print("Seleccione demo:")
print("  1) Demo1")
print("  2) Demo2")
print("  3) Demo3")

let response = readLine(strippingNewline: true)
print("Usted eligió: \(response)")

if (response == "1") {
    demo1()
} else if (response == "2") {
    demo2()
} else if (response == "3") {
    demo3()
}
