//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by Kevin Sanderson on 2015-06-18.
//  Copyright (c) 2015 Kevin Sanderson. All rights reserved.
//

import Foundation

class TipCalculatorModel {
    
    var total: Double
    var taxPct: Double
    var subtotal: Double {
        get {
            return total / (taxPct + 1)
        }
    }
    
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
    }//end init
    
    func calcTipWIthTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }//end calcTipWithTipPct
    
    //DictionaryBIIITCH
    func returnPossibleTips() -> [Int: Double] {
        
        let possibleTipsInferred = [0.15,0.18,0.20]
        var retVal = [Int: Double]()
        
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            retVal[intPct] = calcTipWIthTipPct(possibleTip)
        }// end foreach
        return retVal
    }//end returnPossibleTips
    
}//end class TipCalculatorModel