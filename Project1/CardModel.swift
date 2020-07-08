//
//  CardModel.swift
//  Project1
//
//  Created by Zia on 07/07/20.
//  Copyright © 2020 Zia. All rights reserved.
//

import SwiftUI

struct CardModel : Identifiable {
    var id = UUID()
    var title : String
    var headline : String
    var imageName : String
    var callToAction : String
    var message : String
    var color : [Color]
}
