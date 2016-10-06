//
//  ViewController.swift
//  TimeTravel
//
//  Created by James Campagno on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var planetLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var destinationLabel: UILabel!
    @IBOutlet weak var canTravelLabel: UILabel!
    let spaceShip = SpaceShip(name: "Great Ship", currentPlanet: .earth)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        planetLabel.text = "\(spaceShip.currentPlanet)".capitalized
        speedLabel.text = "\(spaceShip.speed)".capitalized
        destinationLabel.text = ""
        canTravelLabel.text = ""
    }
    
    @IBAction func speedButtonPressed(_ sender: AnyObject) {
        speedLabel.text = sender.titleLabel!?.text!
        switch speedLabel.text! {
        case "None":
            spaceShip.speed = .none
        case "Slow":
            spaceShip.speed = .slow
        case "Medium":
            spaceShip.speed = .medium
        case "Fast":
            spaceShip.speed = .fast
        case "Light":
            spaceShip.speed = .lightSpeed
        default:
            break
        }
        
        switch destinationLabel.text! {
        case "Mercury":
            if spaceShip.travel(to: .mercury) {
                canTravelLabel.text = "Preparing for depature"
            }
        case "Venus":
            if spaceShip.travel(to: .venus) {
                canTravelLabel.text = "Preparing for depature"
            }
        case "Earth":
            if spaceShip.travel(to: .earth) {
                canTravelLabel.text = "Preparing for depature"
            }
        case "Mars":
            if spaceShip.travel(to: .mars) {
                canTravelLabel.text = "Preparing for depature"
            }
        case "Jupiter":
            if spaceShip.travel(to: .jupiter) {
                canTravelLabel.text = "Preparing for depature"
            }
        case "Saturn":
            if spaceShip.travel(to: .saturn) {
                canTravelLabel.text = "Preparing for depature"
            }
        case "Uranus":
            if spaceShip.travel(to: .uranus) {
                canTravelLabel.text = "Preparing for depature"
            }
        case "Neptune":
            if spaceShip.travel(to: .neptune) {
                canTravelLabel.text = "Preparing for depature"
            }
        default:
            break
        }
    }
    
    @IBAction func destinationButtonPressed(_ sender: AnyObject) {
        destinationLabel.text = sender.titleLabel!?.text!
    }
}

