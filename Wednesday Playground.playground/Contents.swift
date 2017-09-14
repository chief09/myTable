//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Create a new class call it TaxCalculator
//This class will have property: taxAmount, taxPct and total
//Create the initializer of the class

//Create a method called printTaxAmount. This methiod will print taxAmount.
//Create a method called calculateTaxForNewPct. This method will take newPct as parameter. This methiod will return newPct * total
//Create a method that is called calculateTaxForNewPctAndAmount. This method will take newPct and newAmount as paramter. This method will return newAmount * newPct
//Create a method called calculateTaxAndAmountFor
//This method will rtake newPct, newAmount and personName as parameter
//This method will print "Tax for Mr/Mrs <<personName>> is <<newPct * new Amount>>"

class TaxCalculator {
    var taxAmount : Double
    var taxPct : Double
    var total : Double
    
    init(taxPct : Double, total : Double) {
        self.taxAmount = taxPct * total
        self.taxPct = taxPct
        self.total = total
    }
    
    func printTaxAmount() -> Void {
        print(taxAmount)
    }
    
    //when underscroll put in the front of an param, the argument name no need to define when method calling
    func calculateTaxForNewPct(_ newPct : Double) -> Double {
        return total * newPct
    }
    
    func calculateTaxForNewPctAndAmount(newPct : Double, newAmount : Double) -> Double {
        return newAmount * newPct
    }
    
    func calculateTaxFor(newPct : Double, newAmount : Double, personName : String) -> Void {
        print("Tax for Mr/Mrs \(personName) is \(newPct * newAmount)")
    }
}

//Inheritance
//Create an object GSTCalculator that inherits of TaxCalculator
//This class will having the mapping of countrycode and the taxPct Eg: MY: 0.06, SG: 0.07, BN: 0.11,VN: 0.09
//Create the initializer
//Create a function printTaxAmount that is specifically for GSTCalculator. The function will simply do "The GST Amount is "
class GSTCalculator : TaxCalculator {
    var countryDict = ["MY" : 0.06, "SG" : 0.07, "BN" : 0.11, "VN" : 0.09]
    
    init(total : Double, countryCode : String) {
        super.init(taxPct: countryDict[countryCode]!, total: total)
    }
    
    override func printTaxAmount() -> Void {
        print("The GST amount is ", terminator:"")
        super.printTaxAmount()
    }
}

var tax = GSTCalculator(total: 1500, countryCode: "MY")
var tax1 = TaxCalculator(taxPct: 1500, total: 0.1)
tax.printTaxAmount()
tax.calculateTaxForNewPct(0.2)
tax.calculateTaxForNewPctAndAmount(newPct: 0.2, newAmount: 2000)
tax.calculateTaxFor(newPct: 0.2, newAmount: 3000, personName: "Ali")

tax1.printTaxAmount()
tax1.calculateTaxForNewPct(0.2)
tax1.calculateTaxForNewPctAndAmount(newPct: 0.2, newAmount: 3000)
tax1.calculateTaxFor(newPct: 0.2, newAmount: 4000, personName: "Abu")

var myString = "Hello World"
myString.characters.count

(myString as NSString).substring(from: 5)



