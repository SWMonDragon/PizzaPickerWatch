//
//  pizzaValues.swift
//  PizzaPickerWatch
//
//  Created by Alex Carrizosa on 9/6/16.
//  Copyright © 2016 Alex Carrizosa. All rights reserved.
//

import WatchKit

class pizzaValues: NSObject {

    var sizeSelected : String = ""
    var baseSelected : String = ""
    var cheeseSelected: String = ""
    var ingredientsSelected: String = ""
    
    init(size: String, base: String, cheese: String, ingredients: String){
        sizeSelected = size
        baseSelected = base
        cheeseSelected = cheese
        ingredientsSelected = ingredients
    }
    
    init(size: String){
        sizeSelected = size
    }
    
    init(size: String, base: String){
        sizeSelected = size
        baseSelected = base
    }
    
    init(size: String, base: String, cheese: String){
        sizeSelected = size
        baseSelected = base
        cheeseSelected = cheese
    }
    
}
