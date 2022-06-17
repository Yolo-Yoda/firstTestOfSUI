import Foundation

@propertyWrapper
struct UpperCaseAfterDot {
    
    private(set) var value: String = ""
    
    var wrappedValue: String {
        get {
            return uppered(value)
        }
        set {
            value = newValue
        }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}

func sanitizeString(_ string: String) -> String {
    let pattern = "([\\.,\\s])(\\1{1,})"
    var buffer = string as NSString

    guard let regex = try? NSRegularExpression(pattern: pattern, options: []) else {
        return string
    }

    while let match = regex.firstMatch(in: buffer as String, options: [], range: NSRange(location: 0, length: buffer.length)) {
        let range = match.range(at: 2)
        buffer = buffer.replacingCharacters(in: range, with: "") as NSString
    }

    return buffer as String
}

func uppered(_ text: String)  -> String {
    let myText = (sanitizeString(text))
    var literarray: [Character] = []
    var spacesList: [Int] = []
    var modifiedString: String = ""
    for liter in myText {
        literarray.append(liter)
    }
    literarray[0] = Character(String(literarray[0]).uppercased())
    for (index, value) in literarray.enumerated() {
        if value == "." {
            if literarray[index + 1] != " " {
                spacesList.append(index)
                literarray[index + 1] = Character(String(literarray[index + 1]).uppercased())
            } else if literarray[index + 1] == " " {
                literarray[index + 2] = Character(String(literarray[index + 2]).uppercased())
                continue
            } else {
                literarray[index + 1] = Character(String(literarray[index + 1]).uppercased())
            }
            
        }
    }
    for index in spacesList {
        literarray.insert(" ", at: index + 1)
    }
    
    for value in literarray {
        if value == "." {
            modifiedString += "\(String(value))"
        } else {
            modifiedString += "\(String(value))"
        }
        
    }
    return modifiedString
}
