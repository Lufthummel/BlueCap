// Playground - noun: a place where people can play

import Foundation

protocol ProfileableEnum {
    typealias EnumType
    class func fromRaw(newValue:UInt8) -> EnumType?
    class func fromString(newValue:String) -> EnumType?
    var stringValue : String {get}
    func toRaw() -> UInt8
    
}

enum Enabled : UInt8, ProfileableEnum {
    case No     = 0
    case Yes    = 1
    var stringValue : String {
        get {
            switch self {
            case .No:
                return "No"
            case .Yes:
                return "Yes"
            }
        }
    }
    static func fromString(newValue:String) -> Enabled? {
        switch newValue {
        case "No":
            return Enabled.No
        case "Yes":
            return Enabled.Yes
        default:
            return nil
        }
    }

}

if let a = Enabled.fromRaw(1) {
    a.stringValue
    a.toRaw()
}

if let a = Enabled.fromString("No") {
    a.stringValue
} else {
    println("invalid")
}
