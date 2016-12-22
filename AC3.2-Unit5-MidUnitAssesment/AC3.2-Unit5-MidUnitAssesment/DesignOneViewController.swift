//
//  DesignOneViewController.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Louis Tur on 12/22/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

protocol CellTitled {
  func titleForCell() -> String
}

class DesignOneViewController: UIViewController, CellTitled {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .red
  }
  
  func titleForCell() -> String {
    return "Design 1"
  }
}
