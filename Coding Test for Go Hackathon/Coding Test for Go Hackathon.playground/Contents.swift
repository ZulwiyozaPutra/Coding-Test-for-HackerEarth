print(23333)
var T = readLine()

func isEven(number: Int) -> Bool {
    
    var isEven: Bool = false
    
    if (number % 2) == 0 {
        isEven = true
    }
    return isEven
    
}

if let number = T {
    var isMagicNumberBoolean: Bool = false
    
    let stringOfNumber = T
    
    var arrayOfNumber = [Int]()
    
    for character in ((stringOfNumber?.characters))! {
        
        let stringOfCharacter = String(character)
        
        if let intOfCharacter = Int(stringOfCharacter) {
            arrayOfNumber.append(intOfCharacter)
        }
        
    }
    
    var arrayOfEvenNumber: [Int] = [0]
    var arrayOfOddNumber: [Int] = [0]
    
    for x in arrayOfNumber {
        if isEven(number: x) == true {
            arrayOfEvenNumber.append(x)
        } else {
            arrayOfOddNumber.append(x)
        }
    }
    
    
    
    var sumOfArrayOfEvenNumber: Int = 0
    var sumOfArrayOfOddNumber: Int = 0
    
    for x in arrayOfEvenNumber {
        
        sumOfArrayOfEvenNumber = sumOfArrayOfEvenNumber + x
        
    }
    
    for x in arrayOfOddNumber {
        
        sumOfArrayOfOddNumber = sumOfArrayOfOddNumber + x
    }
    
    
    isEven(number: sumOfArrayOfEvenNumber)
    isEven(number: sumOfArrayOfOddNumber)
    
    if isEven(number: sumOfArrayOfEvenNumber) == true && isEven(number: sumOfArrayOfOddNumber) == false {
        isMagicNumberBoolean = true
    } else if isEven(number: sumOfArrayOfEvenNumber) == true && sumOfArrayOfOddNumber == 0 {
        isMagicNumberBoolean = true
    } else if isEven(number: sumOfArrayOfOddNumber) == false && sumOfArrayOfEvenNumber == 0 {
        isMagicNumberBoolean = true
    }
    
    if isMagicNumberBoolean == true {
        print("YES")
        
        
    } else {
        print("NO")
        
        
    }

}

