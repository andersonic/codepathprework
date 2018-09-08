//
//  ViewController.swift
//  CodePathDemo
//
//  Created by Jun Ru Anderson on 9/8/18.
//  Copyright © 2018 Jun Ru Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeTextColorButton: UIButton!
    @IBOutlet weak var changeViewButton: UIButton!
    @IBOutlet weak var changeTextButton: UIButton!
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var labelTextField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    var bgColor: UIColor!
    override func viewDidLoad() {
        super.viewDidLoad()
        bgColor = view.backgroundColor
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapButton(_ sender: Any) {
        helloLabel.textColor = UIColor.brown
    }
    
    @IBAction func didTapChangeView(_ sender: Any) {
        mainView.backgroundColor = UIColor.cyan
        changeViewButton.setTitleColor(UIColor.cyan, for: .normal)
        changeTextButton.setTitleColor(UIColor.cyan, for: .normal)
        changeTextColorButton.setTitleColor(UIColor.cyan, for: .normal)
    }
    
    @IBAction func didTapChangeText(_ sender: Any) {
        if labelTextField.hasText{
            helloLabel.text = labelTextField.text
        } else {
            helloLabel.text = "Hello from Jun Ru!"
        }
        labelTextField.text = ""
    }
    @IBAction func didReset(_ gestureRecognizer: UIGestureRecognizer) {
        if gestureRecognizer.state == .ended{
            mainView.backgroundColor = bgColor
            changeViewButton.setTitleColor(bgColor, for: .normal)
            changeTextButton.setTitleColor(bgColor, for: .normal)
            changeTextColorButton.setTitleColor(bgColor, for: .normal)
            helloLabel.text = "Hello from Jun Ru!"
            helloLabel.textColor = UIColor.black
        }
    }
    
    
}

