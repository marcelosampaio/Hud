//
//  ViewController.swift
//  Hud
//
//  Created by Marcelo Sampaio on 27/12/18.
//  Copyright © 2018 Marcelo Sampaio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var status = false
    
    @IBOutlet weak var goButton: UIBarButtonItem!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func goAction(_ sender: Any) {
        if !status {
            self.view.showActivityLoading()
            status = true
            goButton.title = "Stop"
        }else{
            self.view.hideActivityLoading()
            status = false
            goButton.title = "Go"
        }
    }
    
    
    
    
}

