//
//  MasjidDetails.swift
//  Day3Homework
//
//  Created by Bodour Alrashidi on 5/6/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import SwiftUI

struct MasjidDetails: View {
    var prayer = ["الفجر","الظهر","العصر","المغرب"," العشاء"]
    var time = ["3:37 am","11:46am","3:21 pm","6:27 pm","7:52 pm"]
    var masjid : MasjidStruct
    var reader : [String] = ["1","2","3"]
    var body: some View {
        ZStack{
            Color.black
            VStack{
                
                Image(masjid.masjidname)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500, height: 400)
                    .offset(y : -150)
                
                ScrollView(.horizontal){
                    HStack( spacing: -50){
                            ForEach(reader, id: \.self)
                            { i in
                                Button(action: {
                                    playsound(sound: i, type: "mp3")
                                }) {
                                    Image(i).renderingMode(.original)
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .frame(width: 250,height: 140)
                                        .overlay(Circle().stroke(Color.black, lineWidth: 6))
                                }
                                
                            }
                        
                    }.padding()
                    
                }.offset(y: -270)
                
            
          
            
                ScrollView(.vertical){
               
                    
                        VStack(spacing: 40){
                            ForEach(0..<time.count ){ i in
                            HStack(spacing: 250){
                                Text(self.prayer[i])
                                Text(self.time[i])
                                
                            }
                        }
                        
                    }.background(Color(.white).opacity(0.5))
       
                }.offset(y:-100)
            
                .foregroundColor(.white)
            
            }//end of Vstack
            
            
            
            
            
        }.edgesIgnoringSafeArea(.all) // end of Zstack
    }}


struct MasjidDetails_Previews: PreviewProvider {
    static var previews: some View {
        MasjidDetails(masjid: masjids[0])
            .environment(\.colorScheme, .dark)
          .environment(\.layoutDirection, .rightToLeft)
    }
}

