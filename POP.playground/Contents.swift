import UIKit

protocol GameUnit {

    var id: String { get }
    var isAlive : Bool { get set }
    var healthLevel: Int { get set }
    mutating func hitTaken()
    
}

extension GameUnit {
    mutating func hitTaken() {
        if healthLevel > 0 {
            healthLevel-=1
            if healthLevel == 0 {
                isAlive = false
            }
        } else {
            isAlive = false
        }
        let state = isAlive ? String(repeating: "♥️", count: healthLevel) : "🚀"
        print("\(id): Arghh! \(state)")
    }
}


class Bishop: GameUnit {
    var id: String
    
    var isAlive: Bool = true
    
    var healthLevel: Int = 2
    
    init(name: String) {
        id = name
    }
    
}


struct Soldier: GameUnit {
    var id: String
    
    var isAlive: Bool = true
    
    var healthLevel: Int = 3
    
    init(name: String) {
        id = name
    }
  
}

struct Knight: GameUnit {
    var id: String
    
    var isAlive: Bool = true
    
    var healthLevel: Int = 5
    
    init(name: String) {
        id = name
    }
   
}

var bishop = Bishop(name: "Xander")
var soldier = Soldier(name: "Bean")
soldier.hitTaken()
soldier.hitTaken()
soldier.hitTaken()
