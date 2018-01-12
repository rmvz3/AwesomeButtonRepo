//
//  ViewController.swift
//  AwesomeButtonRepo
//
//  Created by rmvz3 on 01/12/2018.
//  Copyright (c) 2018 rmvz3. All rights reserved.
//

import UIKit
import AwesomeButtonRepo

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaultButton = AwesomeButton()
        let customButton = AwesomeButton(withTitle: "CUSTOM AWESOME BUTTON", cornerRadius: 15, borderColor: UIColor.blue, backgroundColor: UIColor.red, andTextColor: UIColor.white)
        
        defaultButton.center = CGPoint(x: self.view.frame.midX, y: self.view.frame.maxY / 3)
        customButton.center = CGPoint(x: self.view.frame.midX, y: (self.view.frame.maxY / 3) * 2)
        
        self.view.addSubview(defaultButton)
        self.view.addSubview(customButton)
    }

}

