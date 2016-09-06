//
//  pizzaConfirm.swift
//  PizzaPickerWatch
//
//  Created by Alex Carrizosa on 9/6/16.
//  Copyright © 2016 Alex Carrizosa. All rights reserved.
//

import Foundation
import WatchKit

class ConfirmPizzaSelection : WKInterfaceController {
    
    var sizeChoice : String = ""
    var baseChoice : String = ""
    var cheeseChoice : String = ""
    var ingredientsChoice : String = ""
    
    @IBOutlet var sizeConfirm: WKInterfaceLabel!
    @IBOutlet var baseConfirm: WKInterfaceLabel!
    @IBOutlet var cheeseConfirm: WKInterfaceLabel!
    @IBOutlet var ingredientConfirm: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        
        super.awakeWithContext(context)
        let sizePicked = context as! pizzaValues
        sizeChoice = sizePicked.sizeSelected
        baseChoice = sizePicked.baseSelected
        cheeseChoice = sizePicked.cheeseSelected
        ingredientsChoice = sizePicked.ingredientsSelected
        
        
        sizeConfirm.setText(sizeChoice)
        baseConfirm.setText(baseChoice)
        cheeseConfirm.setText(cheeseChoice)
        ingredientConfirm.setText(ingredientsChoice)
        
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