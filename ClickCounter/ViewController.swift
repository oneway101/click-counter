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
    @IBOutlet var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func incrementCount(){
        self.count++
        self.label.text = "\(self.count)"
    }

}

