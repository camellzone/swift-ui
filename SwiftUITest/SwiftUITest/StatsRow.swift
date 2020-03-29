//
//  StatsRow.swift
//  SwiftUITest
//
//  Created by Toni Ramirez Rosales on 28/03/2020.
//  Copyright © 2020 Toni Ramirez Rosales. All rights reserved.
//

import SwiftUI

struct StatsRow: View {
    
    var statKey: String
    var statValue: String
    
    //let statKey = "Age"
    //let statValue = "35"
    
    var body: some View {
        HStack(alignment: .center){
        
            Text(statKey + ":")
                .font(.system(size:30))
                .fontWeight(.semibold)
                .padding(.leading, 30)
            Text(statValue)
                .font(.system(size:30))
                .fontWeight(.ultraLight)
                .padding(.trailing, 30)
            Spacer()
        }
        
    }
}

struct StatsRow_Previews: PreviewProvider {
    static var previews: some View {
        //StatsRow(statKey: "Age", statValue: "34")
        StatsRow(statKey: "Age", statValue: "34")
    }
}
