//
//  ViewController.swift
//  midterm2
//
//  Created by Аружан on 3/7/20.
//  Copyright © 2020 Аружан. All rights reserved.


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Button( sender: UIButton){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard
            let selectVC = storyboard.instantiateInitialViewController(identifier: "select") as? SelView
            else{return}
        
        selectVC.onSelect = { [weak self] color in
            guard self != nil else {return}
            sender.backgroundColor=color
        }
        self.present(selectVC, animated: true)
    }
}

