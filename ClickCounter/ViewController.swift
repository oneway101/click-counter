//
//  ViewController.swift
//  ClickCounter
//
//  Created by Ha Na Gill on 8/1/16.
//  Copyright © 2016 Ha Na Gill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!
    var label2:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label
        //Q: Why label was declared again?
        var label = UILabel()
        label.frame = CGRectMake(150,150,60,60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        //lableMultiply
        var label2 = UILabel()
        label2.frame = CGRectMake(150, 200, 500, 60)
        label2.text = "0"
        
        self.view.addSubview(label2)
        self.label2 = label2
        
        //button
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        button.addTarget(self, action: "incrementCount", forControlEvents: .TouchUpInside)
        self.view.addSubview(button)
        
        //button to decrement
        var decrementButton = UIButton()
        decrementButton.frame = CGRectMake(-50, 300, 500, 60)
        decrementButton.setTitle("Click to Decrement and Toggle Colors", forState: .Normal)
        decrementButton.setTitleColor(UIColor.redColor(), forState: .Normal)
        decrementButton.addTarget(self, action: "decrementCount", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(decrementButton)
        
    }
    func incrementCount(){
        self.count++
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count * self.count)"
    }
    func decrementCount(){
        self.count--
        self.label.text = "\(self.count)"
        toggleBackgroundColor()
    }
    func toggleBackgroundColor(){
        let randomRed = CGFloat(drand48())
        let randomGreen = CGFloat(drand48())
        let randomBlue = CGFloat(drand48())
        print("red:\(randomRed) green:\(randomGreen) blue:\(randomBlue)")
        self.view.backgroundColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1)
    }

}

