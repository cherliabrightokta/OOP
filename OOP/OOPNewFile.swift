//
//  OOPNewFile.swift
//  OOP
//
//  Created by Cherlia Brightokta on 15/05/19.
//  Copyright © 2019 Cherlia Brightokta. All rights reserved.
//

import Foundation

class CoffeeMachine : Machine {
    
    var numOfBeans: Int = 100
    var numOfMilk: Int
    var brand: String
    
    init(milk: Int, brand: String) {
        numOfMilk = milk
        self.brand = brand
    }
    
    func addMilk (milk: Int) {
        numOfMilk += milk
    }
    func addBeans (beans: Int ) {
        numOfBeans += beans
    }
    func makeCoffee(){
        numOfBeans -= 2
        numOfMilk -= 1
    }
}
