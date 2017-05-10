func dniLetters() -> [Character] {
    return ["T", "R", "W", "A", "G", "M", "Y", "F", "P", "D", "X", "B", "N", "J", "Z", "S", "Q", "V", "H", "L", "C", "K", "E"]
}

func letter(_ mod: Int) -> Character {
    return dniLetters()[mod]
}

func mod(of dni: Int) -> Int {
    return dni % 23
}

func characters(of dni: String) -> [Character] {
    if dni.characters.count == 8 {
        return ["0"] + Array(dni.characters)
    }
    
    return Array(dni.characters)
}

func checkLength(of dni: [Character]) -> Bool {
    return dni.count == 9
}

func checkLetter(of dni: [Character]) -> Bool {
    guard let number = Int(String(dni[0...7])) else {
        return false
    }
    
    return dni[8] == letter(mod(of: number))
}

func validate(_ dni: [Character]) -> Bool {
    return checkLength(of: dni) && checkLetter(of: dni)
}

func check(dni: String) -> Bool {
    return validate(characters(of: dni))
}

check(dni: "7124223L")
