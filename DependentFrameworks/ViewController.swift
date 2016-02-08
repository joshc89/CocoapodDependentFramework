//
//  ViewController.swift
//  DependentFrameworks
//
//  Created by Josh Campion on 08/02/2016.
//  Copyright © 2016 Josh Campion. All rights reserved.
//

import UIKit
import Framework

class ViewController: UIViewController {

    @IBOutlet
    weak var appResponseLabel:UILabel!
    
    @IBOutlet
    weak var framewokrResponseLabel:UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction
    func appTapped(sender:AnyObject?) {
        let app = AppClass()
        app.appFunction { (str) -> () in
            self.appResponseLabel.text = str
        }
    }
    
    @IBAction
    func frameworkTapped(sender:AnyObject?) {
        let framework = FrameworkClass()
        framework.frameworkFunction { (str) -> () in
            self.framewokrResponseLabel.text = str
        }
    }
}

