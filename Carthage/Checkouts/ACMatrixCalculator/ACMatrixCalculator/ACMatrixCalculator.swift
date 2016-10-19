//
//  ACMatrixCalculator.swift
//  ACMatrixCalculator
//
//  Created by Adriene on 5/3/16.
//  Copyright © 2016 Adriene Cuenco. All rights reserved.
//


import Foundation

/// Perform Matrix Operations

public class ACMatrixCalculator{
    public init(){}
    /**
     
     Matrix Addition
     
     - Parameter a: The first 2d array.
     - Parameter b: The second 2d array.
     
     - Returns: the result after performing a + b as a 2d array.
     
     */
    public func mAdd( a: [[Double]], b: [[Double]]) -> [[Double]]{
        let m = a.count
        let n = a[0].count
        print("n(row): " + String(n) + "m(col): " + String(m) );
        var result = [[Double]]()
    
        //Init a mxn matrix with 0's
        for _ in 0 ..< n {
            var temp = [Double]()
            for _ in 0 ..< m {
                temp.append(0.0)
            }
            result.append(temp)
        }
        
        
        for i in 0 ..< n {
            for j in 0 ..< m { 
                result[i][j] = a[i][j] + b[i][j]
            }
        }
        
        return result
    }

    /**
     Matrix Subtraction
     
     - Parameter a: The first 2d array.
     - Parameter b: The second 2d array.
     
     - Returns: the result after performing a - b as a 2d array.
     
     */
    public func mSub( a: [[Double]], b: [[Double]]) -> [[Double]]{
        let m = a.count
        let n = a[0].count
        var result = [[Double]]()
        
        //Init a mxn matrix with 0's
        for _ in 0 ..< n {
            var temp = [Double]()
            for _ in 0 ..< m {
                temp.append(0.0)
            }
            result.append(temp)
        }
        
        
        for i in 0 ..< n {
            for j in 0 ..< m {
                result[i][j] = a[i][j] - b[i][j]
            }
        }
        
        return result
    }

    /**
     
     Matrix Multiplication
     
     - Parameter a: The first 2d array.
     - Parameter b: The second 2d array.
     - Returns: the result after performing a x b as a 2d array
     
    */
    public func mMult( a: [[Double]], b: [[Double]]) -> [[Double]]{
        let m = a.count
        let n = b[0].count
        var result = [[Double]]()
        
        //Init a mxn matrix with 0's
        for _ in 0 ..< m {
            var temp = [Double]()
            for _ in 0 ..< n {
                temp.append(0.0)
            }
            result.append(temp)
        }
        
        for i in 0 ..< m {
            for j in 0 ..< n {
                result[i][j] = 0
                for k in 0 ..< a[0].count{
                    result[i][j] = result[i][j] + (a[i][k] * b[k][j])
                }
                
            }
        }
        
        return result
    }
    
    /**
        Validates if two matrices have the correct dimensions to perform addition or subtaraction.
     
       - Parameter a: The first 2d array.
       - Parameter b: The second 2d array.
     
       - Returns: True if array dimensions are legal for performing addition or subtraction, false if not legal.
     
     */
    public func addSubValidate( a:[[Double]], b:[[Double]]) -> Bool{
            if ( (a.count == b.count) && (a[0].count == b[0].count) ){
                return true
            }
            return false
    }
    
    /**
     Validates if two matrices have the correct dimensions to perform multiplication. A x B = B X D
     
     - Parameter a: The first 2d array.
     - Parameter b: The second 2d array.
     
     - Returns: True if array dimensions are legal for performing multiplication, false if not legal.
     
     */
    
    public func multValidate(a:[[Double]], b:[[Double]]) -> Bool{
        if a[0].count == b.count{
            return true
        }
        return false
    }
}


