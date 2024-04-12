//
//  Manager.swift
//  HW-4
//
//  Created by Egor Ilchenko on 4/1/24.
//

import Foundation

final class Manager {
    
    static let shared = Manager()
    private init() {}
    
    var beerArray = [
        Beer(name: "Guinness", price: 9.5) ,
        Beer(name: "Blue Moon", price: 6.8)  ,
        Beer(name: "Paulaner", price: 7.5)
    ]
    var beerStartFirst: Int = 0
    var beerStartSecond: Int = 0
    var beerStartThird: Int = 0
    var totalSum: Decimal = 0
    var check: Decimal = 0
    func setInitialBeerState() {
        for beer in beerArray {
            beer.count = 50
        }
        totalSum = 0
        beerStartFirst = 0
        beerStartSecond = 0
        beerStartThird = 0
    }
    
    func setInitialCount () {
        beerStartFirst = 0
        beerStartSecond = 0
        beerStartThird = 0
    }
    
    func sellBeer(name: String, count: Int) {
        for beer in beerArray {
            if beer.name == name {
                self.totalSum += beer.price * Decimal(count)
                beer.count -= count
            }
        }
    }
}
