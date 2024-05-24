//
//  CountryVM.swift
//  Protocol
//
//  Created by Abdurrahman Karaoluk on 24.05.2024.
//

import Foundation

class CountyVM {
    
    var listItems = [Country]()
    
    func configureList() {
        listItems = [Country(name: "England", flag: "flag1"),
                     Country(name: "England", flag: "flag1"),
                     Country(name: "England", flag: "flag1"),
                     Country(name: "England", flag: "flag1")]
    }
}
