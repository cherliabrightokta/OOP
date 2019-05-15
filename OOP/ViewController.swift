//
//  ViewController.swift
//  OOP
//
//  Created by Cherlia Brightokta on 15/05/19.
//  Copyright © 2019 Cherlia Brightokta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var coffeeLabel: UILabel!
    @IBOutlet weak var milkLabel: UILabel!
    
    
    var coffeeMachine =  CoffeeMachine(milk: 200, brand: "Ristretto")
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
            
        print("jumlah beans: \(coffeeMachine.numOfBeans), jumlah milk: \(coffeeMachine.numOfMilk)")
        updateLabel()
        
       print (coffeeMachine.voltage)
        print (coffeeMachine.runMotor())
        
    }
    
    
    @IBAction func addCoffee(_ sender: Any) {
        coffeeMachine.addBeans(beans: 100)
        updateLabel()
    }
    
    @IBAction func addMilk(_ sender: Any) {
        coffeeMachine.addMilk(milk: 20)
        updateLabel()
    }
    
    @IBAction func makeCoffee(_ sender: Any) {
        coffeeMachine.makeCoffee()
        updateLabel()
    }
    func updateLabel () {
        coffeeLabel.text = "\(coffeeMachine.numOfBeans)"
        milkLabel.text = String (coffeeMachine.numOfMilk)
}

}
