//
//  SpaceShip.swift
//  TimeTravel
//
//  Created by William Robinson on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Double {
    case none = 0
    case slow = 50
    case medium = 150
    case fast = 1000
    case lightSpeed = 1000000
    
    init(spaceSpeed: Double) {
        switch spaceSpeed {
        case 0...49:
            self = .none
        case 50...149:
            self = .slow
        case 150...999:
            self = .medium
        case 1000...999999:
            self = .fast
        default:
            self = .lightSpeed
        }
    }
    
    var isAtLightSpeed: Bool {
        return self == .lightSpeed
    }
    
    func isFaster(than speed: Speed) -> Bool {
        return self.rawValue > speed.rawValue
    }
}

enum Weather {
    case cold
    case warm
    case hot
    case superDuperHot
}

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    var hasLife: Bool {
        return self == .earth || self == .mars
    }
    var weather: Weather {
        switch self {
        case .earth:
            return .warm
        case .mercury, .venus, .mars, .jupiter:
            return .hot
        case .saturn, .uranus, .neptune:
            return .cold
        }
    }
}

class SpaceShip {
    let name: String
    var speed: Speed = .none
    var currentPlanet: Planet
    
    var description: String {
        return "I love planets and Will needs coffee! :("
    }
    
    init(name: String, currentPlanet: Planet) {
        self.name = name
        self.currentPlanet = currentPlanet
    }
    
    func timeTravel() -> Bool {
        return speed.isAtLightSpeed
    }
    
    func isFaster(than spaceship:SpaceShip) -> Bool {
        return self.speed.rawValue > spaceship.speed.rawValue
    }
    
    func travel(to planet: Planet) -> Bool {
        if currentPlanet == .mercury {
            return true
        }
        if (planet == .neptune || planet == .venus) && speed == .lightSpeed {
            currentPlanet = .mars
            return false
        }
        switch planet {
        case .venus, .earth, .neptune:
            return speed == .fast
        case .jupiter, .uranus:
            return speed == .slow
        case .saturn:
            return speed == .medium
        default:
            return speed == .lightSpeed
        }
    }
}

