//
//  DriversList.swift
//  SwiftUITest
//
//  Created by Toni Ramirez Rosales on 29/03/2020.
//  Copyright © 2020 Toni Ramirez Rosales. All rights reserved.
//

import SwiftUI

struct DriversList: View {
    var body: some View {
        NavigationView{
            List(drivers){
                driver in
                NavigationLink(destination: DriverDetails(driver: driver)){
                DriversRow(driver: driver)
                }
            }
            .navigationBarTitle(Text("Formula 1 - Drivers"), displayMode: .large)
        }
    }
}

struct DriversList_Previews: PreviewProvider {
    static var previews: some View {
        DriversList()
    }
}
