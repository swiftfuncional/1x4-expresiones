func check(dni: String) -> Bool {
    let letters: [Character] = ["T", "R", "W", "A", "G", "M", "Y", "F", "P", "D", "X", "B", "N", "J", "Z", "S", "Q", "V", "H", "L", "C", "K", "E"]
    
    var dniArray = Array(dni.characters)
    
    if dniArray.count == 8 {
        dniArray.insert("0", at: 0)
    }
    
    if dniArray.count != 9 {
        return false
    }
    
    let dniNumber = String(dniArray[0...7])
    
    guard let number = Int(dniNumber) else {
        return false
    }
    
    let mod = number % 23
    
    let letter = letters[mod]
    
    if dniArray[8] != letter {
        return false
    }
    
    return true
}

check(dni: "7124223L")