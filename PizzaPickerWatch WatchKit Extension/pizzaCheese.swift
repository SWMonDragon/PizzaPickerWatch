//
//  pizzaCheese.swift
//  PizzaPickerWatch
//
//  Created by Alex Carrizosa on 9/6/16.
//  Copyright © 2016 Alex Carrizosa. All rights reserved.
//

import Foundation
import WatchKit

class CheesePicker : WKInterfaceController {
    
    var sizeChoice : String = ""
    var baseChoice : String = ""
    var cheeseChoice : String = ""
    
    @IBOutlet var CheesePicked: WKInterfacePicker!
    
    @IBAction func cheesePicker(value: Int) {
        cheeseChoice = (itemList[value].1)
        print(cheeseChoice)
    }
    @IBAction func cheeseButton() {
        let pizzaPicked = pizzaValues(size: sizeChoice, base: baseChoice, cheese: cheeseChoice)
        pushControllerWithName("IngredientControl", context: pizzaPicked)
    }
    
    var itemList: [(String, String)] = [
    ("Tipo de queso", "Mozzarella"),
    ("Tipo de queso", "Cheddar"),
    ("Tipo de queso", "Parmesano"),
    ("Tipo de queso", "Sin Queso"),
    ]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let pickerItems: [WKPickerItem] = itemList.map {
            let pickerItem = WKPickerItem()
            pickerItem.caption = $0.0
            pickerItem.title = $0.1
            return pickerItem
        }
        CheesePicked.setItems(pickerItems)
        
        let sizePicked = context as! pizzaValues
        sizeChoice = sizePicked.sizeSelected
        baseChoice = sizePicked.baseSelected
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