
import UIKit
import Foundation


class results: UIViewController {
    
    @IBOutlet weak var resultText: UILabel!
    @IBOutlet weak var mA: UILabel!
    @IBOutlet weak var mB: UILabel!
    @IBOutlet weak var segCon: UISegmentedControl!
    
    var row : Int!
    var col: Int!
    
    var matrixA = [[Double]]()
    var matrixB = [[Double]]()
    var op: ACMatrixCalculator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        op = ACMatrixCalculator()
        mA.text = "Matrix A:\n" + stringify(matrixA)
        mB.text = "Matrix B:\n" + stringify(matrixB)
        
        self.mA.layer.borderColor = UIColor.grayColor().CGColor;
        self.mA.layer.borderWidth = 0.5;
        self.mA.layer.cornerRadius = 5;
        
        self.mB.layer.borderColor = UIColor.grayColor().CGColor;
        self.mB.layer.borderWidth = 0.5;
        self.mB.layer.cornerRadius = 5;
        
        self.resultText.layer.borderColor = UIColor.grayColor().CGColor;
        self.resultText.layer.borderWidth = 0.5;
        self.resultText.layer.cornerRadius = 5;
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doSegCon(sender: UISegmentedControl) {
        
        switch segCon.selectedSegmentIndex
        {
        case 0:
            let addResult = op.mAdd(matrixA, b: matrixB)
            resultText.text = "A + B = \n" + stringify(addResult)
        case 1:
            let subResult = op.mSub(matrixA, b: matrixB)
            resultText.text = "A - B = \n" + stringify(subResult)
        case 2:
            let multResult = op.mMult(matrixA, b: matrixB)
            resultText.text = "A * B = \n" + stringify(multResult)
        default:
            break; 
        }
    }
    func stringify(a: [[Double]]) -> String{
        let m = a.count
        let n = a[0].count
        var result: String = ""
        for i in 0 ..< n {
            for j in 0 ..< m {
                result = result + String(a[i][j])
                print(a[i][j], terminator: "")
                result = result + "  "
                print("  ", terminator: "")
            }
            result = result + "\n"
            print("\n")
        }
        return result
    }
    
    
}

