//
//  Beer.swift
//  HW-4
//
//  Created by Egor Ilchenko on 4/1/24.
//

import Foundation

final class Beer {
    
    var name: String
    var price: Decimal
    var count: Int
    
    init(name: String, price: Decimal, count: Int = 50) {
        self.name = name
        self.price = price
        self.count = count
    }
}
