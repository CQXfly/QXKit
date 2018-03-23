//
//  ViewController.swift
//  QXKit
//
//  Created by 905799827@qq.com on 03/23/2018.
//  Copyright (c) 2018 905799827@qq.com. All rights reserved.
//

import UIKit
import QXKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let t = Date.currentTimeStamp(.None)
        
        let z = String(1521758037).getDateDescription1(type: .None)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

