//
//  LvlSystem.swift
//  Motivator
//
//  Created by Mathias Larsen on 18/02/2019.
//  Copyright © 2019 Mathias Larsen. All rights reserved.
//

import Foundation
import UIKit

class LvlSystem{
    
    var xp = 0.0
    
    // xp=250+lvl^2*100
    // lvl=sqrt((xp-250)/100)
    
    
    //calculates the lvl based on xp
    func getLvl() -> Int{
        if xp < 250{
            return 0
        }else{
            return Int(sqrt((xp-250)/100))
        }
        
    }
    
    //calculates the total amount of xp requered for lvl+1
    func xpForNextLvl(lvl:Int)->Double{
        return 100.0*(Double)(lvl+1)*(Double)(lvl+1)+250.0
    }
    
    func xpForThisLvl(lvl:Int)->Double{
        if lvl == 0{
            return 0.0
        }else
        {
        return 100.0*(Double)(lvl)*(Double)(lvl)+250.0
        }
    }
    
    //calculates how many xp you need to get to the next lvl
    func xpRemaningToNextLvl()->Double{
        return xpForNextLvl(lvl: getLvl()) - xp
    }
    
    func addXp(newXp: Double){
        xp = xp + newXp
    }
    
}
