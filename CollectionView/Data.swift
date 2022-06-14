//
//  Data.swift
//  CollectionView
//
//  Created by singsys on 10/06/22.
//

import Foundation
import UIKit

class Employee{
    var name:String
    var employeeId:Int
    var dept:String
    
    init(name:String, id:Int, dept:String) {
        self.name = name
        self.employeeId = id
        self.dept = dept
    }
}
