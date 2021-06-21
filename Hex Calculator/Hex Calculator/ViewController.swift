//
//  ViewController.swift
//  Hex Calculator
//
//  Created by Nabin Tamang on 6/19/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var screen = ""
    var operator_1 = ""
    var operator_2 = ""
    var operand = ""
    var res = ""
    
    @IBOutlet weak var calc_label: UILabel!
    
    @IBOutlet weak var btn_0: UIButton!
    @IBOutlet weak var btn_1: UIButton!
    @IBOutlet weak var btn_2: UIButton!
    @IBOutlet weak var btn_3: UIButton!
    
    @IBOutlet weak var btn_4: UIButton!
    @IBOutlet weak var btn_5: UIButton!
    @IBOutlet weak var btn_6: UIButton!
    @IBOutlet weak var btn_7: UIButton!
    
    @IBOutlet weak var btn_8: UIButton!
    @IBOutlet weak var btn_9: UIButton!
    @IBOutlet weak var btn_A: UIButton!
    @IBOutlet weak var btn_B: UIButton!
    
    @IBOutlet weak var btn_C: UIButton!
    @IBOutlet weak var btn_D: UIButton!
    @IBOutlet weak var btn_E: UIButton!
    @IBOutlet weak var btn_F: UIButton!
    
    @IBOutlet weak var btn_ADD: UIButton!
    @IBOutlet weak var btn_SUB: UIButton!
    @IBOutlet weak var btn_MUL: UIButton!
    @IBOutlet weak var btn_DIV: UIButton!
    
    @IBOutlet weak var btn_EQ: UIButton!
    @IBOutlet weak var btn_RST: UIButton!
    
    
    @IBAction func click_0(_ sender: Any) {
        if(screen.count != 0)
        {
            screen+="0"
            calc_label.text = screen
            
        }
    }
    @IBAction func click_1(_ sender: Any) {
        screen+="1"
        calc_label.text = screen
        
    }
    @IBAction func click_2(_ sender: Any) {
        screen+="2"
        calc_label.text = screen
        
    }
    @IBAction func click_3(_ sender: Any) {
        screen+="3"
        calc_label.text = screen
        
    }
    
    @IBAction func click_4(_ sender: Any) {
        screen+="4"
        calc_label.text = screen
        
    }
    @IBAction func click_5(_ sender: Any) {
        screen+="5"
        calc_label.text = screen
        
    }
    @IBAction func click_6(_ sender: Any) {
        screen+="6"
        calc_label.text = screen
        
    }
    @IBAction func click_7(_ sender: Any) {
        screen+="7"
        calc_label.text = screen
        
    }
    @IBAction func click_8(_ sender: Any) {
        screen+="8"
        calc_label.text = screen
        
    }
    @IBAction func click_9(_ sender: Any) {
        screen+="9"
        calc_label.text = screen
        
    }
    @IBAction func click_A(_ sender: Any) {
        screen+="A"
        calc_label.text = screen
        
    }
    @IBAction func click_B(_ sender: Any) {
        screen+="B"
        calc_label.text = screen
        
    }
    @IBAction func click_C(_ sender: Any) {
        screen+="C"
        calc_label.text = screen
        
    }
    @IBAction func click_D(_ sender: Any) {
        screen+="D"
        calc_label.text = screen
        
    }
    @IBAction func click_E(_ sender: Any) {
        screen+="E"
        calc_label.text = screen
        
    }
    @IBAction func click_F(_ sender: Any) {
        screen+="F"
        calc_label.text = screen
        
    }
    
    @IBAction func click_ADD(_ sender: Any) {
        if(screen == "")
        {
            operator_1 = "0"
        }
        else if(res != "")
        {
          operator_1 = res
        }
        else
        {
            operator_1 = screen
        }
        operand = "+"
        screen = ""
        calc_label.text = "0"
        
    }
    @IBAction func click_SUB(_ sender: Any) {
        if(screen == "")
        {
            operator_1 = "0"
        }
        else if(res != "")
        {
          operator_1 = res
        }
        else
        {
            operator_1 = screen
        }
        operand = "-"
        screen = ""
        calc_label.text = "0"
    }
    @IBAction func click_MUL(_ sender: Any) {
        if(screen == "")
        {
            operator_1 = "0"
        }
        else if(res != "")
        {
          operator_1 = res
        }
        else
        {
            operator_1 = screen
        }
        operand = "*"
        screen = ""
        calc_label.text = "0"
    }
    @IBAction func click_DIV(_ sender: Any) {
        if(screen == "")
        {
            operator_1 = "0"
        }
        else if(res != "")
        {
          operator_1 = res
        }
        else
        {
            operator_1 = screen
        }
        operand = "/"
        screen = ""
        calc_label.text = "0"
    }
    
    
    @IBAction func click_EQU(_ sender: Any) {
        if(screen == "")
        {
            operator_2 = "0"
        }
        else
        {
            operator_2 = screen
        }
        print("Before Calculation: ", operator_1 + operand + operator_2 + " Screen: " + screen, "Result: " + res)
        res = calculator(op_1:operator_1,oprnd: operand,op_2: operator_2)
        print("After Calculation: ",operator_1 + operand + operator_2  +  " Screen: " + screen, "Result: " + res)
        calc_label.text = res
        screen = "2"
        if(res == "Error" || res == "Out of Range")
        {
            screen = ""
            operator_1 = ""
            operator_2 = ""
            operand = ""
            calc_label.text = res
            res = ""
        }
        else
        {
            operator_1 = res
        }
        print("After Reset: ",operator_1 + operand + operator_2  +  " Screen: " + screen, "Result: " + res)
    }
    @IBAction func click_RES(_ sender: Any) {
        screen = ""
        operator_1 = ""
        operator_2 = ""
        operand = ""
        res = ""
        calc_label.text = "0"
    }
    
}
func calculator(op_1:String,oprnd:String,op_2:String) -> String{
    var intHex_1:UInt = 0
    var intHex_2:UInt = 0
    var res_dec:UInt = 0
    
    if(op_1.count > 16 ||  op_2.count > 16)
    {
        return "Out of Range"
    }
    intHex_1 = UInt(op_1, radix: 16)!
    //print("IN calc %d", intHex_1)
    
    intHex_2 = UInt(op_2, radix: 16)!
    //print("IN calc %d", intHex_2)
    
    
    if(oprnd == "+")
    {
        res_dec = intHex_1 &+ intHex_2
    }
    else if (oprnd == "-")
    {
        res_dec = intHex_1 &- intHex_2
    }
    else if (oprnd == "*")
    {
        res_dec = intHex_1 &* intHex_2
    }
    else if (oprnd == "/" && op_2 == "0")
    {
        return "Error"
    }
    else
    {
        res_dec = intHex_1 / intHex_2
    }
    
    if(res_dec < 0 || res_dec > UInt.max)
    {
        return "Out of Range"
    }
    return String(res_dec, radix: 16).uppercased()
}

