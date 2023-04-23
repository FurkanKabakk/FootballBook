//
//  ViewController.swift
//  FootballBook
//
//  Created by furkan on 20.03.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var footballPlayersArray = [FootballPlayers]()
    var choosenFootballPlayer : FootballPlayers?
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let messi = FootballPlayers(playerName: "Lionel Messi", playerPozition: "Forward", playerTeam: "Paris Saint Germain", playerImage: UIImage(named: "leomessi")!)
        let ronaldo = FootballPlayers(playerName: "Cristiano Ronaldo", playerPozition: "Forward", playerTeam: "Manchester United", playerImage: UIImage(named: "cristianoronaldo")!)
        let deBruyne = FootballPlayers(playerName: "Kevin De Bruyne", playerPozition: "Midfielder", playerTeam: "Manchester City", playerImage: UIImage(named: "kevindebruyne")!)
        let neymar = FootballPlayers(playerName: "Neymar JR", playerPozition: "Forward", playerTeam: "Paris Saint Germain", playerImage: UIImage(named: "neymarjr")!)
        let mbappe = FootballPlayers(playerName: "Kylian Mbappe", playerPozition: "Forward", playerTeam: "Paris Saint Germain", playerImage: UIImage(named: "kylianmbappe")!)
        
        footballPlayersArray.append(messi)
        footballPlayersArray.append(ronaldo)
        footballPlayersArray.append(deBruyne)
        footballPlayersArray.append(neymar)
        footballPlayersArray.append(mbappe)


    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return footballPlayersArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = footballPlayersArray[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenFootballPlayer = footballPlayersArray[indexPath.row]
        performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC"{
            let destinationVC = segue.destination as! DetailVC
            destinationVC.selectedFootballPlayer = choosenFootballPlayer
        }
    }
    
    


}

