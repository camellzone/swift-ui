//
//  DriverDetails.swift
//  SwiftUITest
//
//  Created by Toni Ramirez Rosales on 28/03/2020.
//  Copyright © 2020 Toni Ramirez Rosales. All rights reserved.
//

import SwiftUI

struct DriverDetails: View {
    
    var driver: Driver
    
    var body: some View {
        //Text("Hello, World!")
        VStack {
            
            Image(driver.team.imageName)
                .resizable()
                .frame(height:200.0)
            
            Image(driver.imageName)
                .resizable()
                .frame(width: 170.0, height: 170.0)
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 18)
                .offset(x:0, y:-45)
                .padding(.bottom,-40.0)
            
            
            Text(driver.name)
                .font(.system(size:40))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                //.padding(.bottom, 40)
            
            VStack{
                
                StatsRow(statKey: "Age", statValue: String(driver.age))
                StatsRow(statKey: "Number", statValue: String(driver.number))
                StatsRow(statKey: "Country", statValue: driver.birthPlace)
            }.padding(.top, 70)
            Spacer()
            
        }.edgesIgnoringSafeArea(.top)
    }
}

struct DriverDetails_Previews: PreviewProvider {
    static var previews: some View {
        DriverDetails(driver:drivers[2])
    }
}
