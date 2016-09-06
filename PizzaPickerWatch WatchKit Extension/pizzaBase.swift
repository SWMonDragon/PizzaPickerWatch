//
//  pizzaBase.swift
//  PizzaPickerWatch
//
//  Created by Alex Carrizosa on 9/6/16.
//  Copyright © 2016 Alex Carrizosa. All rights reserved.
//

import Foundation
import WatchKit

class BaseControl : WKInterfaceController {
    
    var sizeChoice : String = ""
    var baseChoice : String = ""
    
    @IBOutlet var basePicker: WKInterfacePicker!
    @IBAction func basePicked(value: Int) {
        baseChoice = (itemList[value].1)
        print(baseChoice)
    }
    
    var itemList: [(String, String)] = [
    ("Tipo de masa", "Delgada"),
    ("Tipo de masa", "Crujiente"),
    ("Tipo de masa", "Gruesa"),
    ]
    
    @IBAction func BaseButton() {
        let pizzaPicked = pizzaValues(size: sizeChoice,base: baseChoice)
        pushControllerWithName("CheeseControl", context: pizzaPicked)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let pickerItems: [WKPickerItem] = itemList.map {
            let pickerItem = WKPickerItem()
            pickerItem.caption = $0.0
            pickerItem.title = $0.1
            return pickerItem
        }
        basePicker.setItems(pickerItems)
        
        let sizePicked = context as! pizzaValues
        sizeChoice = sizePicked.sizeSelected
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