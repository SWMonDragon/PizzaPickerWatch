//
//  pizzaSize.swift
//  PizzaPickerWatch
//
//  Created by Alex Carrizosa on 9/5/16.
//  Copyright © 2016 Alex Carrizosa. All rights reserved.
//

import Foundation
import WatchKit



class SizeControl : WKInterfaceController{
    
    var sizeChoice : String = ""
    @IBOutlet var sizePicker: WKInterfacePicker!
    @IBOutlet var buttonLabel: WKInterfaceButton!
    @IBAction func sizeButton() {
        let pizzaPicked = pizzaValues(size: sizeChoice)
        pushControllerWithName("BaseControl", context: pizzaPicked)
    }


    @IBAction func sizePicked(value: Int) {
        sizeChoice = (itemList[value].1)
        print(sizeChoice)
    }
    var itemList: [(String, String)] = [
        ("Tamaño de tu pizza", "Chica"),
        ("Tamaño de tu pizza", "Mediana"),
        ("Tamaño de tu pizza", "Grande"),
        ]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let pickerItems: [WKPickerItem] = itemList.map {
            let pickerItem = WKPickerItem()
            pickerItem.caption = $0.0
            pickerItem.title = $0.1
            return pickerItem
        }
        sizePicker.setItems(pickerItems)
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