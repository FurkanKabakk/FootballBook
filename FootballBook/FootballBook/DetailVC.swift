//
//  DetailVC.swift
//  FootballBook
//
//  Created by furkan on 20.03.2023.
//

import UIKit

class DetailVC: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pozitionLabel: UILabel!
    @IBOutlet weak var teamLabel: UILabel!
    
    var selectedFootballPlayer : FootballPlayers?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedFootballPlayer?.name
        pozitionLabel.text = selectedFootballPlayer?.pozition
        teamLabel.text = selectedFootballPlayer?.team
        imageView.image = selectedFootballPlayer?.image

    }
    


}
