import UIKit

/*
 func имя_функции(параметры)-> возвращаемый_тип {
 // Тело функции
}
*/

/*
 1. Написать функции, которая:
 - Будет просто выводить в консоль ”Hello, world!”.
 - Будет принимать аргумент “имя” и выводить в консоль “Hello, имя” (вызов функции
 должен быть следующим - printHi(“Misha”)).
 - Будет принимать аргумент имя и возвращать строку приветствия “Hello! имя”.
 */

func sayHello () {
    print("Hello world!")
}

sayHello()

func printHi(_ name: String) {
    print("Hello, \(name)")
}

printHi("Misha")

func helloMassage(_ name: String) -> () { // Можно не ставить return, т.к. функция содержит 1 элемент и Swift понимает это
    print("Hello! \(name)")
}
helloMassage("Kirill")

/*
 2. Написать функцию, которая принимает две строки и возвращает сумму количества
 символов двух строк.
*/

func sumSymbol(firstString: String, secondString: String) -> Int {
    return firstString.count + secondString.count
}

let sumString = sumSymbol(firstString: "Hello", secondString: "Kirill")
print(sumString)

/*
 3. Написать функцию, которая выводит в консоль квадрат переданного числа.
*/

func printSquare( namber: Int) {
    print("\(namber * namber)")
}

printSquare(namber: 14)

/*
 4. Создать функцию, которая принимает параметры и вычисляет площадь круга.
 */

func squareCircle(radius: Double) -> () {
    .pi * (radius * radius)
    
}
squareCircle(radius: 4)

/*
 5. Создать функцию, которая принимает логический тип “ночь ли сегодня” и возвращает
 строку с описанием времени суток. Можно делать с логическим типом, можно делать со временем.
 */

func timeOfDayV1(isNight: Bool) -> String {
    return isNight ? "Night" : "Day"
}
print(timeOfDayV1(isNight: true))


func timeOfDayV2(isNightV2: Bool) -> String {
    if isNightV2 {
        return "Night"
    } else {
        return "Day"
    }
}

// MARK: ВОПРОС!!!

//print(timeOfDayV2(isNightV2: false))
//
//func timeOfDayV3() -> String {
//    let hour = 21
//    
//    if hour >= 0 && hour < 6 {
//        return "Night"
//    } else if hour >= 6 && hour < 24 {
//        return "Day"
//    } else {
//        return "Invilid"
//    }
//}
//
//print(timeOfDayV3())

/*
 6. Создать функцию, принимающую 1 аргумент — номер месяца (от 1 до 12), и
 возвращающую время года, которому этот месяц принадлежит (зима, весна, лето или
 осень).
*/

func seasonOfYear(month: Int) -> String {
    switch month {
    case 12,1,2:
        return "Winter"
    case 3...5:
        return "Spring"
    case 6...8:
        return "Summer"
    case 9...11:
        return "Autumn"
    default:
        return "Invflid month!"
    }
}
seasonOfYear(month: 6 )
seasonOfYear(month: 11 )
seasonOfYear(month: 14 )
print(seasonOfYear(month: 3 ))

/*
 7. Разбить номер телефона на составляющие. Код страны, код оператора, сам номер.
 Используем функции строки: prefix, suffix.    (ПОМОГ chatGPT)
*/
//MARK:  ПОМОГ ChatGPT
func phoneNumber(number: String) -> (countryCode: String, operatorCode: String, mainNumber: String) {
    let countryCode = number.prefix(4)
    let operatorCode = number.dropFirst(4).prefix(2)
    let mainNumber = number.suffix(7)
    return(String(countryCode), String(operatorCode), String(mainNumber))
}

let phone = "+375441112233"
let parsed = phoneNumber(number: phone)

print("Contry code: \(parsed.countryCode)")
print("Operator code: \(parsed.operatorCode)")
print("Main number: \(parsed.mainNumber)")
