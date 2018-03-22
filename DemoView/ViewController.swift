//
//  ViewController.swift
//  DemoView
//
//  Created by apple on 22/03/18.
//  Copyright © 2018 syzygy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
            let fanView = DemoView(frame: self.view.frame)
            self.view.addSubview(fanView)
    }

}

