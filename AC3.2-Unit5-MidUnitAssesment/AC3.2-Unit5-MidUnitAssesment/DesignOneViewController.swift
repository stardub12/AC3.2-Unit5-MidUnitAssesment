//
//  DesignOneViewController.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Louis Tur on 12/22/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class DesignOneViewController: UIViewController, CellTitled {
    
    //   ----------------------------------
    //    DO NOT MODIFY THIS SECTION
    //    👇👇👇👇👇👇👇👇👇👇👇👇👇👇
    
    // MARK: - Provided Constants
    let soundBarRed: UIColor = UIColor(red: 241.0/255, green: 165.0/255.0, blue: 147.0/255.0, alpha: 1.0)
    let soundBarYellow: UIColor = UIColor(red: 251.0/255, green: 214.0/255.0, blue: 180.0/255.0, alpha: 1.0)
    let soundBarGreen: UIColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
    let soundBarGray: UIColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
    
    let mainLabelFontSize: CGFloat = 24.0
    let subLabelFontSize: CGFloat = 18.0
    
    let standardMargin: CGFloat = 8.0
    let barMargin: CGFloat = 48.0
    
    // MARK: - CellTitled Protocol
    var titleForCell: String = "Design 1"
    
    //    ☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️
    //    DO NOT MODIFY THIS SECTION
    //   ----------------------------------
    
    let grayView: UIView = UIView()
    let redView: UIView = UIView()
    let yellowView: UIView = UIView()
    let greenView: UIView = UIView()
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        
        self.setupViewHierarchy()
        self.configureConstraints()
        self.title = titleForCell
        let viewOne = Views(frame: CGRect(x: 10, y: 10, width: view.frame.width, height: view.frame.height))
        self.view.addSubview(viewOne)
    }
    
    func setupViewHierarchy() {
        // Add Views Here
    }
    
    
    func configureConstraints() {
        // Add Constraints Here
    }
    
    // MARK: - Define Your Views Here
    
    // ex:
    // let grayContainer: UIView = ... your code here ...
    // let leftGreen1: UIView = ... your code here ...
    // let leftGreen2: UIView = ... your code here ...
    //
    
    
    
    class Views: UIView {
        
        var grayView: UIView?
        var redView: UIView?
        var yellowView: UIView?
        var greenView: UIView?
        
        let soundBarRed: UIColor = UIColor(red: 241.0/255, green: 165.0/255.0, blue: 147.0/255.0, alpha: 1.0)
        let soundBarYellow: UIColor = UIColor(red: 251.0/255, green: 214.0/255.0, blue: 180.0/255.0, alpha: 1.0)
        let soundBarGreen: UIColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
        let soundBarGray: UIColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            setUpView()
        }
        
        required init(coder aDecoder: NSCoder) {
            fatalError("init has not been implemented")
        }
        
        func setUpView() {
            //set up views
            self.grayView = UIView()
            self.redView = UIView()
            self.greenView = UIView()
            self.yellowView = UIView()
            self.grayView?.backgroundColor = soundBarGray
            self.redView?.backgroundColor = soundBarGray
            self.greenView?.backgroundColor = soundBarGray
            self.yellowView?.backgroundColor = soundBarGray
            yellowView?.translatesAutoresizingMaskIntoConstraints = false
            redView?.translatesAutoresizingMaskIntoConstraints = false
            greenView?.translatesAutoresizingMaskIntoConstraints = false
            grayView?.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(greenView!)
            self.addSubview(redView!)
            self.addSubview(yellowView!)
            self.addSubview(grayView!)
            //set constraints
            //GRAY
            let grayViewCenterXConstraint = NSLayoutConstraint(item: self.grayView!, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem:self, attribute:  NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let grayViewCenterYConstraint = NSLayoutConstraint(item: self.grayView!, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: self, attribute: NSLayoutAttribute.centerY, multiplier: 1.0, constant: 0)
            //set height and width
            let grayViewWidthConstraint = NSLayoutConstraint(item: self.grayView!, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1.0, constant: 350)
            let grayViewHeightConstraint = NSLayoutConstraint(item: self.grayView!, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1.0, constant: 400)
            self.addConstraints([grayViewCenterYConstraint,grayViewCenterXConstraint,grayViewWidthConstraint,grayViewHeightConstraint])
          
            
        }
        
        
        
    }
}
