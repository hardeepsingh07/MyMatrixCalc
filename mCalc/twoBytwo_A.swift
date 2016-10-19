//
//  twoBytwo_A.swift
//  mCalc
//
//  Created by adriene on 3/1/16.
//  Copyright © 2016 adriene_c. All rights reserved.
//

import UIKit
import Foundation

class twoBytwo_A: UIViewController {
    
    @IBOutlet weak var a1: UITextField!
    @IBOutlet weak var a2: UITextField!
    @IBOutlet weak var b1: UITextField!
    @IBOutlet weak var b2: UITextField!
    
    
    var matrixA: [[Double]]!
    
    var row : Int?
    var col: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        row = 2
        col = 2
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(twoBytwo_A.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        //Check for nil textfields. 
        if(a1.text == ""){ a1.text = "0"}
        if(a2.text == ""){ a2.text = "0"}
        if(b1.text == ""){ b1.text = "0"}
        if(b2.text == ""){ b2.text = "0"}
        
        
        if segue.identifier == "segueA1" {
            
            matrixA = [[Double]]()
            
            var row0 = [Double]()
            row0.append(Double(a1.text!)!)
            row0.append(Double(a2.text!)!)
            
            matrixA.append(row0)
            
            var row1 = [Double]()
            row1.append(Double(b1.text!)!)
            row1.append(Double(b2.text!)!)

            matrixA.append(row1)
            
            
            let svc = segue.destinationViewController as! twoBytwo_B;
            svc.matrixA = matrixA
        }
    }
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
}
