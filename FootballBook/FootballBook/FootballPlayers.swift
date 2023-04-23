//
//  FootballPlayers.swift
//  FootballBook
//
//  Created by furkan on 20.03.2023.
//

import Foundation
import UIKit

class FootballPlayers{
    
    var name : String
    var pozition : String
    var team : String
    var image : UIImage
    
    init(playerName: String, playerPozition: String, playerTeam: String, playerImage : UIImage) {
        name = playerName
        pozition = playerPozition
        team = playerTeam
        image = playerImage
    }
}
