import UIKit

protocol GameUnit {

    var id: String { get }
    var isAlive : Bool { get set }
    var healthLevel: Int { get set }
    mutating func hitTaken()
    
}

