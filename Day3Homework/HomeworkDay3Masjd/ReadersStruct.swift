//
//  ReadersStruct.swift
//  Day3Homework
//
//  Created by Bodour Alrashidi on 5/6/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import SwiftUI
import AVFoundation


struct ReadersStruct : Hashable ,Identifiable  {
     var id = UUID()
        
        var readername : String
        var voice : String
    }
        
        var readers :[ReadersStruct] = [
    ReadersStruct(readername: "العفاسي", voice: "العفاسي")


]
       


