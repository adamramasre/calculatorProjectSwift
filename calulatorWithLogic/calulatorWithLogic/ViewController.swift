//
//  ViewController.swift
//  calulatorWithLogic
//
//  Created by Adam Ramasre on 3/31/22.
//

import UIKit




class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    var calculatorBrain: calcBrain = calcBrain()
    
    func display()
    {
        lblOutput.text = calculatorBrain.label
    }
    
    @IBOutlet weak var lblOutput: UILabel!
 
    @IBAction func btnNumberClick(_ sender: UIButton) {
        guard let theString = sender.titleLabel?.text else
        {
            return
        }
        let buttonNum:Int = Int("\(theString)")!
        
        calculatorBrain.btnNumberClick(num: buttonNum)
        display()
        
    }
    
    @IBAction func Add(_ sender: UIButton){
        calculatorBrain.btnAdd()
    }
    @IBAction func Subtract(_ sender: UIButton){
        calculatorBrain.btnSubtract()
    }
    @IBAction func Multiply(_ sender: UIButton){
        calculatorBrain.btnMultiply()
    }
    @IBAction func Divide(_ sender: UIButton){
        calculatorBrain.btnDivide()
    }
    
    @IBAction func btnNegative(_ sender: UIButton){
        
        calculatorBrain.label = lblOutput.text!
        calculatorBrain.changeNegative()
        display()
        
    }
    
    @IBAction func Decimal(_ sender:UIButton)
    {
        calculatorBrain.btnDecimal()
        display()
    }
    @IBAction func Percent(_ sender: UIButton)
    {
        
        calculatorBrain.btnPercent()
        display()
        
    }
    
    @IBAction func Clear(_ sender: UIButton)
    {
        calculatorBrain.btnClear()
        display()
    }
    
    @IBAction func Equals(_ sender:UIButton)
    {
        calculatorBrain.setOne(One: Double(lblOutput.text!)!)
        calculatorBrain.funcEquals()
        display()
    }
    

}
