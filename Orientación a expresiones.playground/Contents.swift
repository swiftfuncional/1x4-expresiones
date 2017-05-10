func characters(of dni: String) -> [Character] {
    if dni.characters.count == 8 {
        return ["0"] + Array(dni.characters)
    }
    
    return Array(dni.characters)
}

func validate(_ dni: [Character]) -> Bool {
    let letters: [Character] = ["T", "R", "W", "A", "G", "M", "Y", "F", "P", "D", "X", "B", "N", "J", "Z", "S", "Q", "V", "H", "L", "C", "K", "E"]
    
    if dni.count != 9 {
        return false
    }
    
    let dniNumber = String(dni[0...7])
    
    guard let number = Int(dniNumber) else {
        return false
    }
    
    let mod = number % 23
    
    let letter = letters[mod]
    
    if dni[8] != letter {
        return false
    }
    
    return true
}

func check(dni: String) -> Bool {
    return validate(characters(of: dni))
}

check(dni: "7124223L")