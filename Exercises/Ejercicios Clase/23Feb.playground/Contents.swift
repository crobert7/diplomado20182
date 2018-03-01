//: Playground - noun: a place where people can play

import UIKit

/*func funcion(palabra: String) {
 print("Hola funcion \(palabra)")
 }
 
 var variable = funcion
 variable("hola mi niño")*/

//Actividad 1 numero primo

var res : Int = 0
 
 func Primo(_ p: Int)  {
 
    res = p % 2
 
        if res == 0{
 
            print("No es primo")
            
        }else if  res == 2 {
            
                print("Es primo")
            }
        else {
            
            print("Es primo")
        }
 }
 Primo(997)


//Fibonacci

 func fibonacci(_ n: Int) {
    var num = 0
    var num2 = 1
 
    for _ in 0..<n {
            let fibo = num + num2
            num = num2
            num2 = fibo
            print(num2)
 //print(Primo(num2))
    }
 //print("result(num2)")
}
 fibonacci(5)


/*func palindrome(_ cad : String) -> Bool {
    
    return cad == String(cad.reversed())
    
}
palindrome("anitalavalatina")*/

func palindrome(_ cad: String) {
    
    let cad : String = "anitalavalatina"
    let reversed = String(cad.reversed())
    
    if cad == reversed {
        
        print("Es palindromo \(cad)")
    }
    else{
        print("No es palindormo")
    }
}
palindrome("")

/*let cad : String = "anitalavalatina"
 let reversed = String(cad.reversed())
 
 if cad == reversed {
 
 print("Es palindromo \(cad)")
 }
 else{
 print("No es palindormo")
 }
 */

func letras(w1: String, w2: String) -> Bool{
    
    return w1.count == w2.count && w1.sorted() == w2.sorted()
}
letras(w1:"abcd", w2: "dacb")


let cadena: Set<Character> = ["a", "b", "c", "d"]

let cad2: Set<Character> = ["b", "d", "c", "c"]

print(cadena == cad2)

print(cadena.isSuperset(of: cad2))

print(cadena.intersection(cad2).sorted())

//let str: String = "shalom"
//let str2: String = "sergio"

//print(str.intersection(str2))

//for item in cadena {
//  print(item)
//}

//if cadena.contains(cad2){
//  print("Es igual")
//}

let str: String = "shalom"
let str2: String = "sergio"

//for _ in str.characters{

//print(str.characters)  //str2.characters

//}
