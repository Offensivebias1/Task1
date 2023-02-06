//
//  ViewController.swift
//  Task
//
//  Created by Vamsi Abhinay on 2/5/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var fnamefield: UITextField!
    
    @IBOutlet weak var lnamefield: UITextField!
    
    
    @IBOutlet weak var subject1marks: UITextField!
    
    
    @IBOutlet weak var subject2marks: UITextField!
    
    @IBOutlet weak var resultlabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        var obj = Student()
//        obj.fname="vamsi"
//        obj.lfname="abhi"
//        obj.s1marks=90
//        obj.s2marks=78
//
//        studentArrr.append(obj)
        
//        print(studentArrr)
        
    }

    
    @IBAction func enter(_ sender: Any) {
//       var studentArrr = [Student]()
        let fname = fnamefield.text ?? ""
        let lfname = lnamefield.text ?? ""
        let s1marks = subject1marks.text ?? "0"
        let s2marks = subject2marks.text ?? "0"
        let num1 = Int(s1marks) ?? 0
        let num2 = Int(s2marks) ?? 0
        let result = ""
                
        var student = Student(fname: fname, lfname: lfname, s1marks: num1, s2marks: num2, result: result)
        
        if num1 > 40 && num2 > 40{
            print("Pass")
            
            student.result = "Pass"
            let studentarr = [student]
            print(studentarr)
            resultlabel.text = student.result
            resultlabel.textColor = UIColor.green
        }
        else{
            print("Fail")
            student.result = "Fail"
            let studentarr = [student]
            print(studentarr)
            resultlabel.text = student.result
            resultlabel.textColor = UIColor.red
        }
    }
    

}

struct Student {
    var fname: String
    var lfname: String
    var s1marks: Int
    var s2marks: Int
    var result: String
    
}






