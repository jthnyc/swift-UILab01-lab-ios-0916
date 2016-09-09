//
//  ViewController.swift
//  LightBulb
//
//  Created by Michael Dippery on 6/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lightBulb: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        lightBulb.backgroundColor = UIColor.redColor()

    }

    func changeColor(to color: UIColor) {
        lightBulb.backgroundColor = color

    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
        switch (sender.selectedSegmentIndex) {
        case 0:
            changeColor(to: UIColor.redColor())
        case 1:
            changeColor(to: UIColor.yellowColor())
        case 2:
            changeColor(to: UIColor.blueColor())
        case 3:
            changeColor(to: UIColor.greenColor())
        default:
            break
        }
    }
}