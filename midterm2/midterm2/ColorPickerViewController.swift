//
//  ColorPickerViewController.swift
//  midterm2
//
//  Created by Аружан on 3/7/20.
//  Copyright © 2020 Аружан. All rights reserved.
//

import Foundation
import UIKit

class SelView: UIViewController{
    var onSelect: ((UIColor)->Void)? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func ColButton( sender: UIButton){
        if sender.titleLabel?.text == "RED" {
            self.onSelect?(UIColor.red)
        }else{
            self.onSelect?(UIColor.blue)
        }
        self.dismiss(animated: true)
    }
}
