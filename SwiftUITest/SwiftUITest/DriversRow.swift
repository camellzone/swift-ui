//
//  DriversRow.swift
//  SwiftUITest
//
//  Created by Toni Ramirez Rosales on 29/03/2020.
//  Copyright © 2020 Toni Ramirez Rosales. All rights reserved.
//

import SwiftUI

struct DriversRow: View {
    
    var driver: Driver
    
    var body: some View {
        HStack{
            HStack{
                Image(driver.imageName)
                    .resizable().scaledToFit()
                    .frame(minWidth: 10, maxWidth: 50, minHeight: 10, maxHeight: .infinity)
                    .clipShape(Circle())
                    .background(Circle().foregroundColor(driver.team.color))
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    .shadow(radius: 2)
                    //.padding([.top, .bottom, .leading] , 5)
                    .padding(.trailing, 15)
                    .padding(.leading, 5)
            }
            HStack{
                Text(driver.name)
                    .font(.headline)
                    .italic()
                    .multilineTextAlignment(.leading)
            }
            Spacer()
        }
        
    }
}

struct DriversRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            DriversRow(driver:drivers[0]).previewLayout(.fixed(width: 450, height: 80))
            DriversRow(driver:drivers[0]).previewLayout(.fixed(width: 450, height: 80))
        }
    }
}
