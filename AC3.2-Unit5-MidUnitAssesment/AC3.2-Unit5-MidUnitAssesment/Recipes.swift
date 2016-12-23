//
//  Recipes.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Simone on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class Recipes: UIView {
    
    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var fullRecipe: UILabel!
    @IBOutlet weak var recipeURL: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        if let view = Bundle.main.loadNibNamed("RecipesTableViewCell", owner: self, options: nil)?.first as? UIView {
            self.addSubview(view)
            view.frame = self.bounds
        }
    }

}
