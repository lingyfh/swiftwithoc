//
//  ViewController.swift
//  swiftwithoc
//
//  Created by yunfenghan Ling on 16/1/23.
//  Copyright © 2016年 lingyfh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("this is swift method")
        
        
        let printLog = NSPrintLog()
        printLog.printLog("swfit invoke oc method")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

