//
//  calcBrain.swift
//  calulatorWithLogic
//
//  Created by Adam Ramasre on 3/31/22.
//

import Foundation

class calcBrain {
    

var label:String

init()
{
    label="0"
}




func setLabel(newLabel:String?)
{
    label = newLabel!
}

func getLabel()-> String
{
    return label
}

var one : Double = 0

func setOne(One:Double)
{
    one = One
}

var two : Double = 0

func setTwo(Two:Double)
{
    two = Two
}
var negative = false

func setNegative(Negative:Bool)
{
    negative=Negative
}
var answer: Double = 0

func setAnswer(Answer:Double)
{
    answer=Answer
}
var whatToDo: String = ""

func setWhatToDo(WhatToDo:String?)
{
    whatToDo = WhatToDo!
}
var negativeTwo = false

func setNegativeTwo(NegativeTwo:Bool)
{
    negativeTwo=NegativeTwo
}
var didEquals = false

func setDidEquals(DidEquals:Bool)
{
    didEquals=DidEquals
}

var isThereDecimal = false

func setIsThereDecimal(IsThereDecimal:Bool)
{
    isThereDecimal=IsThereDecimal
}



func display() -> String
{
    return "\(label)"
}

func btnClear()
{
    isThereDecimal = false
    one = 0
    two = 0
    

    negative = false
    negativeTwo=false
    label = "0"
    didEquals=false
    
    
}

    func clickReset(){
        
        label = "0"
        isThereDecimal = false
        didEquals = false
        
        
    }
    
    func btnNumberClick(num:Int) {
        if(didEquals)
        {
            clickReset()
            label="\(num)"
            
        }
        else if label=="0"
        {
            label = "\(num)"
        }
        else
        {
            label += "\(num)"
    
        }
       

        
        
        
        
    }

func changeNegative(){
    if negative==true
    {
        negative = false
        var newNegativeInt = Double(label)!
        newNegativeInt = newNegativeInt*(-1.0)
        label = "\(String(describing: newNegativeInt))"
        
        
    }
    else if negative == false && Int(label)! != 0
    {
        negative = true
        var newNegativeInt = Double(label)
        newNegativeInt = newNegativeInt!*(-1.0)
        label = "\(String(describing:newNegativeInt))"
        
    }
    
    
}

func btnPercent()
{
    let toPercent = Double(label)!*(0.01)
    isThereDecimal = true
    label = "\(toPercent)"
    
}

func btnDecimal()
{
    if(isThereDecimal == false)
    {
        label += "."
        isThereDecimal = true
    }
}
func operatorDefault()
{
    two = Double(label)!
    label="0"
    isThereDecimal = false
    
    if(negative)
    {
        negativeTwo = negative
        negative = false
    }
}

func btnAdd() {
    operatorDefault()
    whatToDo = "Add"
}


func btnSubtract() {
    operatorDefault()
    whatToDo = "Subtract"
}


func btnMultiply() {
    operatorDefault()
    whatToDo = "Multiply"
}

func btnDivide() {
    operatorDefault()
    whatToDo = "Divide"
}
    
    




func funcEquals() {
    one = Double(label)!
            //print(two)
    //print(negativeTwo)
    /*if negativeTwo
    {
        two = two * (-1)
        
    }*/
    //print(two)

  
    switch whatToDo{
        
    case "Add":
        //print(one)
        //print(negative)
        /*if(negative)
        {
            one = one*(-1)
        }*/
            //print("One: \(one) Two: \(two)")
            answer = two + one
        
        label = "\(answer)"
        isThereDecimal = true
        
    case "Subtract":
        answer = two - one
        label = "\(answer)"
        isThereDecimal = true
        
    case "Multiply":
        answer = two * one
        label = "\(answer)"
        isThereDecimal = true
    case "Divide":
        answer = two / one
        label = "\(answer)"
        isThereDecimal = true
    
    default:
        print("Error")
    }
    didEquals = true
    
}
    
}




