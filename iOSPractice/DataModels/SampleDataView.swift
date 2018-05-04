//
//  SampleDataView.swift
//  iOSPractice
//
//  Created by MacBook on 5/4/18.
//  Copyright © 2018 Satori. All rights reserved.
//

import UIKit

public class SampleDataView {

    public static func GetSampleData() -> [MyModel] {
    
        var source = [MyModel]()
        
        let fruits = MyModel()
        let cars = MyModel()
        
        fruits.modelTypeID = 1
        fruits.modelTypeName = "Fruits"
        
        cars.modelTypeID = 2
        cars.modelTypeName = "Cars"
        
        let f1 = MyModelList()
        f1.modelID = 1
        f1.modelName = "Jabuka"
        
        f1.modelDetails.modelID = 1
        f1.modelDetails.modelName = "Jabuka"
        f1.modelDetails.modelColour = "Zelena"
        f1.modelDetails.modelYear = 2017
        f1.modelDetails.modelCategory = "Zlatni delises"
        
        let f2 = MyModelList()
        f2.modelID = 2
        f2.modelName = "Kruska"
        
        f2.modelDetails.modelID = 2
        f2.modelDetails.modelName = "Kruska"
        f2.modelDetails.modelColour = "Zuta"
        f2.modelDetails.modelYear = 2018
        f2.modelDetails.modelCategory = "Karmen"
        
        let f3 = MyModelList()
        f3.modelID = 3
        f3.modelName = "Narandza"
        
        f3.modelDetails.modelID = 3
        f3.modelDetails.modelName = "Narandza"
        f3.modelDetails.modelColour = "Narandzasta"
        f3.modelDetails.modelYear = 2017
        f3.modelDetails.modelCategory = "Klementina"

        let f4 = MyModelList()
        f4.modelID = 4
        f4.modelName = "Kivi"
        
        f4.modelDetails.modelID = 4
        f4.modelDetails.modelName = "Kivi"
        f4.modelDetails.modelColour = "Svetlo zelena"
        f4.modelDetails.modelYear = 2018
        f4.modelDetails.modelCategory = "Hejvord"
        
        fruits.modelList.append(f1)
        fruits.modelList.append(f2)
        fruits.modelList.append(f3)
        fruits.modelList.append(f4)
        
        let c1 = MyModelList()
        c1.modelID = 1
        c1.modelName = "VW"
        
        c1.modelDetails.modelID = 1
        c1.modelDetails.modelName = "VW"
        c1.modelDetails.modelColour = "Plava"
        c1.modelDetails.modelYear = 2013
        c1.modelDetails.modelCategory = "Putnicko"
        
        let c2 = MyModelList()
        c2.modelID = 2
        c2.modelName = "BMW"
        
        c2.modelDetails.modelID = 2
        c2.modelDetails.modelName = "BMW"
        c2.modelDetails.modelColour = "Crna"
        c2.modelDetails.modelYear = 2017
        c2.modelDetails.modelCategory = "Putnicko"
        
        let c3 = MyModelList()
        c3.modelID = 3
        c3.modelName = "Ford"
        
        c3.modelDetails.modelID = 3
        c3.modelDetails.modelName = "Ford"
        c3.modelDetails.modelColour = "Bela"
        c3.modelDetails.modelYear = 2000
        c3.modelDetails.modelCategory = "Teretno"
        
        let c4 = MyModelList()
        c4.modelID = 4
        c4.modelName = "Mercedes"
        
        c4.modelDetails.modelID = 4
        c4.modelDetails.modelName = "Mercedes"
        c4.modelDetails.modelColour = "Bela"
        c4.modelDetails.modelYear = 2013
        c4.modelDetails.modelCategory = "Autobus"
        
        cars.modelList.append(c1)
        cars.modelList.append(c2)
        cars.modelList.append(c3)
        cars.modelList.append(c4)
        
        source.append(fruits)
        source.append(cars)
        
        return source
    }
}
