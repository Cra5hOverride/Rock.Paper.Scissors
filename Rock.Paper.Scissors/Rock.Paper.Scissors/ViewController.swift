//
//  ViewController.swift
//  Rock.Paper.Scissors
//
//  Created by student on 30/1/2562 BE.
//  Copyright © 2562 Override. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var P1: UIImageView!
    @IBOutlet weak var P2: UIImageView!

    var img : [String] = ["P","R","S"]
    var round: Int = 0
    var scoreP1: Int = 0
    var scoreP2: Int = 0
    var targetValue: Int = 0
    @IBOutlet weak var numround: UILabel!
    @IBOutlet weak var numscoreP1: UILabel!
    @IBOutlet weak var numscoreP2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
        
    }
    func startNewRound(){
        scoreP1 = 0
        scoreP2 = 0
        round = 0
        numscoreP1.text = String(scoreP1)
        numscoreP2.text = String(scoreP2)
        numround.text = String(round)
        P1.alpha = 0
        P2.alpha = 0

        
    }
    @IBAction func hitME(){
        P1.alpha = 1
        P2.alpha = 1
        let player1 = Int.random(in: 0...2)
        let player2 = Int.random(in: 0...2)
        P1.image = UIImage (named: img[player1])
        P2.image = UIImage (named: img[player2])
        if player1==0 {
            if player2==1{
                scoreP1 += 1
            }
            else if player2==2{
                scoreP2 += 1
            }
        }
        else if player1==1 {
            if player2==0{
                scoreP2 += 1
            }
            else if player2==2{
                scoreP1 += 1
            }
        }
        else if player1==2{
            if player2==0{
                scoreP1 += 1
            }
            else if player2==1{
                scoreP2 += 1
            }
        }
        round += 1
        numscoreP1.text = String(scoreP1)
        numscoreP2.text = String(scoreP2)
        numround.text = String(round)
        
    }
    

    @IBAction func reSet(){
        startNewRound()
    }

}

