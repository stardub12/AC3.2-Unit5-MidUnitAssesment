//
//  DesignTwoViewController.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Louis Tur on 12/22/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class DesignTwoViewController: UIViewController, CellTitled {
  
  //   ----------------------------------
  //    DO NOT MODIFY THIS SECTION
  //    👇👇👇👇👇👇👇👇👇👇👇👇👇👇
  
  // MARK: - Provided Constants
  
  // MARK: - CellTitled Protocol
  let smittenBackgroundColor = UIColor(red: 248.0/255.0, green: 231.0/255.0, blue: 28.0/255.0, alpha: 1.0)
  var titleForCell: String = "Design 2"
  
  lazy var smittenKittenImageView: UIImageView = {
    let image = UIImage(named: "smitten_kitten")
    let imageView = UIImageView(image: image)
    imageView.contentMode = .scaleAspectFill
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  lazy var scrollView: UIScrollView = {
    let scroll = UIScrollView()
    scroll.alwaysBounceHorizontal = false
    scroll.alwaysBounceVertical = false
    scroll.translatesAutoresizingMaskIntoConstraints = false
    return scroll
  }()
  
  lazy var smittenKittenLabel: UILabel = {
    let label: UILabel = UILabel()
    label.font = UIFont.systemFont(ofSize: 36.0)
    label.textColor = UIColor(red: 1.0, green: 83.0/255.0, blue: 42.0/255.0, alpha: 1.0)
    label.text = "Smitt'n Kitt'ns"
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  //    ☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️
  //    DO NOT MODIFY THIS SECTION
  //   ----------------------------------
  
  
  // MARK: - View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.setupViewHierarchy()
    self.configureConstraints()
    
    self.title = titleForCell
  }
  
  func setupViewHierarchy() {
    self.view.backgroundColor = smittenBackgroundColor
    
    self.view.addSubview(scrollView)
    self.view.addSubview(smittenKittenLabel)
    
    self.scrollView.addSubview(smittenKittenImageView)
  }
  
  func configureConstraints() {
    // something about these constraints isn't right...
    
    let labelConstraints = [
//      smittenKittenLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 16.0),
        smittenKittenLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40),
//      smittenKittenLabel.centerXAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 24.0)
        smittenKittenLabel.centerXAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 24.0)
    ]
    
    let scrollViewConstraints = [
      scrollView.topAnchor.constraint(equalTo: self.smittenKittenLabel.bottomAnchor, constant: 16.0),
      scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8.0),
      scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8.0),
      scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8.0)
    ]
    
    let imageConstraints = [
      smittenKittenImageView.topAnchor.constraint(equalTo: self.scrollView.topAnchor),
      smittenKittenImageView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor),
    ]
    
    let _ = [labelConstraints, scrollViewConstraints, imageConstraints].map{ $0.map{ $0.isActive = true } }
  }
  
}
