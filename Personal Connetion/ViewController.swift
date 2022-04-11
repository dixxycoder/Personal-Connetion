//
//  ViewController.swift
//  Personal Connetion
//
//  Created by Grant Spraker on 3/2/22.
//

import UIKit

// Button Corner Radius and Border code from StackOverflow.com

@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
    //    let nextViewController = segue.destination as! When_Button_is_Pressed_Controller
        
//        let randomNumber = Int.random(in: 1...3)
        
        
//        if segue.identifier == "redDwarf"
//        {
//            nextViewController.starName = "redDwarf\(randomNumber)"
//        }
//        else
//        {
//            nextViewController.starName = "blueDwarf\(randomNumber)"
//        }
    }
}

