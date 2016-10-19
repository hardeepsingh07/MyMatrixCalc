//
//  twoBytwo_B.swift
//  mCalc
//
//  Created by adriene on 3/1/16.
//  Copyright © 2016 adriene_c. All rights reserved.
//

import UIKit
import Foundation

class twoBytwo_B: UIViewController {
    
    @IBOutlet weak var a1: UITextField!
    
    @IBOutlet weak var a2: UITextField!
    
    @IBOutlet weak var b1: UITextField!
    
    @IBOutlet weak var b2: UITextField!
    
    var matrixA: [[Double]]!
    var matrixB: [[Double]]!
    
    
    let row : Int = 2
    let col: Int = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(twoBytwo_B.dismissKeyboard))
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
        
        if (segue.identifier == "segueA2") {

            matrixB = [[Double]]()
            var bRow = [Double]()
            
            bRow.append(Double(a1.text!)!)
            bRow.append(Double(a2.text!)!)
            matrixB.append(bRow)
            
            bRow = [Double]()
            bRow.append(Double(b1.text!)!)
            bRow.append(Double(b2.text!)!)
            matrixB.append(bRow)
            
            print(matrixB)
            let svc = segue.destinationViewController as! results;
            svc.matrixA = matrixA
            svc.matrixB = matrixB
            svc.row = row
            svc.col = col
            
        }
    }
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}

