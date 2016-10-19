//
//  fourByfour_A.swift
//  mCalc
//
//  Created by Adriene on 3/3/16.
//  Copyright © 2016 adriene_c. All rights reserved.
//

import UIKit
import Foundation

class fourByfour_A: UIViewController {
    
    @IBOutlet weak var a1: UITextField!
    @IBOutlet weak var a2: UITextField!
    @IBOutlet weak var a3: UITextField!
    @IBOutlet weak var a4: UITextField!
    
    @IBOutlet weak var b1: UITextField!
    @IBOutlet weak var b2: UITextField!
    @IBOutlet weak var b3: UITextField!
    @IBOutlet weak var b4: UITextField!
    
    @IBOutlet weak var c1: UITextField!
    @IBOutlet weak var c2: UITextField!
    @IBOutlet weak var c3: UITextField!
    @IBOutlet weak var c4: UITextField!
    
    @IBOutlet weak var d1: UITextField!
    @IBOutlet weak var d2: UITextField!
    @IBOutlet weak var d3: UITextField!
    @IBOutlet weak var d4: UITextField!
    
    
    var matrixA: [[Double]]!
    var row : Int = 4
    var col: Int = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        if(a3.text == ""){ a3.text = "0"}
        if(a4.text == ""){ a4.text = "0"}
        
        if(b1.text == ""){ b1.text = "0"}
        if(b2.text == ""){ b2.text = "0"}
        if(b3.text == ""){ b3.text = "0"}
        if(b4.text == ""){ b4.text = "0"}
        
        if(c1.text == ""){ c1.text = "0"}
        if(c2.text == ""){ c2.text = "0"}
        if(c3.text == ""){ c3.text = "0"}
        if(c4.text == ""){ c4.text = "0"}
        
        if(d1.text == ""){ d1.text = "0"}
        if(d2.text == ""){ d2.text = "0"}
        if(d3.text == ""){ d3.text = "0"}
        if(d4.text == ""){ d4.text = "0"}
        
        
        if (segue.identifier == "segueC1") {
            
            
            matrixA = [[Double]]()
            
            var row0 = [Double]()
            row0.append(Double(a1.text!)!)
            row0.append(Double(a2.text!)!)
            row0.append(Double(a3.text!)!)
            row0.append(Double(a4.text!)!)
            
            var row1 = [Double]()
            row1.append(Double(b1.text!)!)
            row1.append(Double(b2.text!)!)
            row1.append(Double(b3.text!)!)
            row1.append(Double(b4.text!)!)
            
            var row2 = [Double]()
            row2.append(Double(c1.text!)!)
            row2.append(Double(c2.text!)!)
            row2.append(Double(c3.text!)!)
            row2.append(Double(c4.text!)!)
            
            var row3 = [Double]()
            row3.append(Double(d1.text!)!)
            row3.append(Double(d2.text!)!)
            row3.append(Double(d3.text!)!)
            row3.append(Double(d4.text!)!)
            
            matrixA.append(row0)
            matrixA.append(row1)
            matrixA.append(row2)
            matrixA.append(row3)

            
            let svc = segue.destinationViewController as! fourByfour_B;
            svc.matrixA = matrixA
        }
    }
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
}
