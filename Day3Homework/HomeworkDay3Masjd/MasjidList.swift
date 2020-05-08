//
//  MasjidList.swift
//  Day3Homework
//
//  Created by Bodour Alrashidi on 5/6/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import SwiftUI

struct MasjidList: View {
    @State var masjid : MasjidStruct
    var body: some View {
       ZStack{
        NavigationView{
            List( masjids) { masjid in
               
        NavigationLink(destination: MasjidDetails(masjid: masjid))
        {
                    layoutRow(masjid: masjid)
                }
                
            }.navigationBarTitle("مساجد الكويت")
            
                    
                }
                
            }
            
        }
               }
    


struct MasjidList_Previews: PreviewProvider {
    static var previews: some View {
        MasjidList(masjid: masjids[0])
        .environment(\.colorScheme, .dark)
           .environment(\.layoutDirection, .rightToLeft)

    }
}
struct layoutRow :View{
    var masjid : MasjidStruct
    
    var body: some View{
        HStack{
            Image(masjid.masjidname)
                .resizable()
                .scaledToFit()
                .frame(height :100)
                .clipShape(Circle())
            // shape of the icon
            VStack(alignment: .leading)
            {Text(masjid.masjidname).font(.headline)
                
            }
            
            }.padding(.vertical)
        
    }
}
