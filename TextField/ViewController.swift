//
//  ViewController.swift
//  TextField
//
//  Created by Francesco Bordignon on 14/08/15.
//  Copyright © 2015 Francesco Bordignon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIScrollViewDelegate {

    @IBOutlet var myScroll: UIScrollView!
    @IBOutlet var myText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        
        if textField == myText{
            
            var trasformazione = CGAffineTransform()
            trasformazione = CGAffineTransformMakeTranslation(0.0, -200.0)
            myScroll.transform = trasformazione
        }
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        
        var trasformazione = CGAffineTransform()
        trasformazione = CGAffineTransformMakeTranslation(0.0, 0.0)
        myScroll.transform = trasformazione

        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
         textField.resignFirstResponder()
        return true
    }


}

