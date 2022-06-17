import Foundation

@propertyWrapper
struct TrimmedSpaces {
    
    private(set) var value: String = ""
    
    var wrappedValue: String {
        get {
            return value
        }
        set {
            value = newValue.replacingOccurrences(of: " ", with: "")
        }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}



