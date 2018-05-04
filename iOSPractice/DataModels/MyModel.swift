//
//  MyModel.swift
//  iOSPractice
//
//  Created by MacBook on 5/4/18.
//  Copyright © 2018 Satori. All rights reserved.
//

import UIKit

public class MyModel {

    var modelTypeID : Int = 0
    var modelTypeName : String = "NA"
    var modelList : [MyModelList] = [MyModelList]()
}

public class MyModelList {
    var modelID : Int = 0
    var modelName : String = "NA"
    var modelDetails : MyModelDetails = MyModelDetails()
}

public class MyModelDetails {
    var modelID : Int = 0
    var modelName : String = "NA"
    var modelColour : String = "NA"
    var modelYear : Int = 0
    var modelCategory : String = "NA"
}
