# ACMatrixCalculator
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

iOS framework that performs basic arithmetic operations with matrices. 

#Features
---
- [x] Matrix Addition
- [x] Matrix Subtraction
- [x] Matrix Multiplication 
- [ ] Transpose
- [x] Validation Matrix Dimensions

#Installation
---

#Carthage
If you dont have carthage installed already, you can install using brew

```
$ brew update
$ brew install carthage
```

To integrate ACMatrixCalculator in your iOS projects you can add the following to your ```Cartfile```. If you dont have a ```Cartfile``` go ahead and create one.

```
github "acuenco/ACMatrixCalculator" ~> 1.0.0 
```

Run ```carthage update``` then drag the built framework ```ACMatrixCalculator.framework``` into your project


#Usage
---
2D arrays will represent the raw matrix data and will be the inputs
```Swift
import ACMatrixCalculator
```
```Swift
var matOp = ACMatrixCalculator()
```

#Create a Matrix with a 2D array

```Swift
var matrixA = [[1.0, 2.0],
               [3.0, 4.0]]

var matrixB = [[2.0, 3.0],
               [4.0, 5.0]]
```

#Add Matricies
```Swift
var result:[[Double]]!
result = matOp.mAdd(a:matrixA, b:matrixB)
```

#Subtract Matricies
```Swift
var result:[[Double]]!
result = matOp.mSub(a:matrixA, b:matrixB)
```

#Multiply Matricies
```Swift
var result:[[Double]]!
result = matOp.mMult(a:matrixA, b:matrixB)
```
#Sample Project
A simple iOS app that uses ACMatrixCalculator:

https://github.com/acuenco/MatrixOp



