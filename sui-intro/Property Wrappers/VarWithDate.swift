
import Foundation

@propertyWrapper
struct VarWithDate {
    
    private var value: String = ""
    
    var wrappedValue: String {
        get {
            return ownDateFormater()
        }
        set {
            value = ownDateFormater()
        }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}

func ownDateFormater() -> String {
    let currentDate = Date()
    let formater = DateFormatter()
    formater.dateFormat = "yyyy/MM/dd HH:mm"
    let convertedDate: String = formater.string(from: currentDate)
    return convertedDate
}

