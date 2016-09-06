//
//  pizzaIngredients.swift
//  PizzaPickerWatch
//
//  Created by Alex Carrizosa on 9/6/16.
//  Copyright © 2016 Alex Carrizosa. All rights reserved.
//

import Foundation
import WatchKit

class IngredientsPicker: WKInterfaceController {
    
    var sizeChoice : String = ""
    var baseChoice : String = ""
    var cheeseChoice : String = ""
    var ingredientChoice : String = ""
    
    @IBAction func ingredientButton() {
        let pizzaPicked = pizzaValues(size: sizeChoice, base: baseChoice,
            cheese: cheeseChoice, ingredients:  ingredientChoice)
        pushControllerWithName("Confirmation", context: pizzaPicked)
        print(ingredientChoice)
    }
    
    @IBAction func jamonPick(value: Bool) {
        ingredientChoice = ingredientChoice + "jamón, "
    }
    @IBAction func pepperoniPick(value: Bool) {
        ingredientChoice = ingredientChoice + "pepperoni, "
    }
    @IBAction func turkeyPick(value: Bool) {
        ingredientChoice = ingredientChoice + "pavo, "
    }
    @IBAction func sausagePick(value: Bool) {
        ingredientChoice = ingredientChoice + "salchicha, "
    }
    @IBAction func olivePick(value: Bool) {
        ingredientChoice = ingredientChoice + "aceituna, "
    }
    @IBAction func onionPick(value: Bool) {
        ingredientChoice = ingredientChoice + "cebolla, "
    }
    @IBAction func pepperPick(value: Bool) {
        ingredientChoice = ingredientChoice + "pimiento, "
    }
    @IBAction func pineapplePick(value: Bool) {
        ingredientChoice = ingredientChoice + "piña, "
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let sizePicked = context as! pizzaValues
        sizeChoice = sizePicked.sizeSelected
        baseChoice = sizePicked.baseSelected
        cheeseChoice = sizePicked.cheeseSelected
    }
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
}