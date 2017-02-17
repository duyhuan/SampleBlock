//
//  Person.swift
//  SampleBlock
//
//  Created by techmaster on 2/17/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import Foundation

class ModelItem {
    var labelName: String!
    var labelAge: String!
    var labelAssizes: String!
    var imgViewString: String!
    
    init(labelName: String, labelAge: String, labelAssizes: String, imgViewString: String) {
        self.labelName = labelName
        self.labelAge = labelAge
        self.labelAssizes = labelAssizes
        self.imgViewString = imgViewString
    }
}
