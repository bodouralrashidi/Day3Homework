//
//  MasjidStruct.swift
//  Day3Homework
//
//  Created by Bodour Alrashidi on 5/6/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import SwiftUI

struct MasjidStruct : Hashable,Identifiable {
    var id = UUID()
    
    var masjidname : String
    var place : String
   // var readername : String
    //    var voice : String
}
    
    var masjids :[MasjidStruct]
    = [MasjidStruct(masjidname: "عيسي العثمان", place: "الخالديه"),
    MasjidStruct(masjidname: "المسجد الكبير", place: "الكويت")
]

