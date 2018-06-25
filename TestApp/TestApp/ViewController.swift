//
//  ViewController.swift
//  TestApp
//
//  Created by Simon Baranov on 25/06/2018.
//  Copyright © 2018 MyOrg. All rights reserved.
//

import UIKit
import DynamicFramework

class ViewController: UIViewController {
    
    @IBOutlet fileprivate var testButton: UIButton!
    @IBOutlet fileprivate var resultLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.layer.borderColor = UIColor.black.cgColor
        resultLabel.layer.borderWidth = 2
        resultLabel.layer.cornerRadius = 5
        resultLabel.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func test(_ sender: UIButton) {
        let resultFromDynamic = TestDynamic.sayHi()
        let resultFromStatic = TestDynamic.hiFromStatic()
        self.resultLabel.text = "\(resultFromStatic)\n\(resultFromDynamic)"
    }

}

