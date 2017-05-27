//
//  ViewController.swift
//  TextFieldPlay
//
//  Created by Josh & Erica on 5/25/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var location = CGPoint(x: 0, y: 0)
    
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.resignFirstResponder()
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(self.userDragged(gesture:)))
    
        textField.addGestureRecognizer(panGesture)
        textField.isUserInteractionEnabled = true
        
        }
    
    func userDragged(gesture: UIPanGestureRecognizer){
        let loc = gesture.location(in: self.view)
        self.textField.center = loc
        
    }


   func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        var touch : UITouch! = touches.first as! UITouch
        
        location = touch.location(in: self.view)
        
        textField.center = location
    }
    
    func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        var touch : UITouch! = touches.first as! UITouch
        
        location = touch.location(in: self.view)
        
        textField.center = location
    }
    
    func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        var touch : UITouch! = touches.first as! UITouch
        
        let location = touch.location(in: self.view)
        
        textField.center = location
    }
    

    


}

