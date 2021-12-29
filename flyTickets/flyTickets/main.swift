//
//  main.swift
//  flyTickets
//
//  Created by AlanoudApple on 22/05/1443 AH.
//

import Foundation

//print("﹌﹌﹌﹌﹌﹌﹌﹌﹌﹌﹌﹌﹌﹌﹌﹌﹌﹌﹌﹌﹌﹌﹌﹌﹌﹌﹌")
//print("﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏")
//print("⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈⑈")
//print("⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄⑄")
//print("☵☵☵☵☵☵☵☵☵☵☵☵☵☵☵☵☵☵☵☵☵☵☵☵☵☵☵☵☵☵☵")

print("\r\n*・゜・*:.。.*.。.:*・☆・゜・*:.。.*.。.:*・☆・゜・*:.。.*.。.:*・☆・゜・*:.。.:*・☆・\r\n")
print(".。.:*・☆・Welcome to the AS Fly Ticktes Apps☆・゜・*:.。. \r\n")
print("﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏ Home Page ﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏ \r\n")
print("Please Select your choice:\r\n")
print("1. Book your flight 🛫!")
print("2. Best Deals of flights 🛬!")
print("3. Your resevation and check in ✅.")
print("4. Explore the cities 🔍.")
print("5. Trips 💡.")
//print("6. Cruise Deals 🚢")
//print("7. Trains Deals 🚉")
//print("8. Rental Cars Deals 🚘")
print("6. Contact us 📩 \r\n")

// func UserMenue
func userMenue(){
    var userChoice :String = ""
    if let input = readLine(){
        userChoice = input
        switch userChoice{
        case "1":
            bookFlight()
        case "2":
            print("Best Deals of flights 🛬")
        case "3":
            print("Your resevation and check in \r\n Enter Your resevation number")
            let resevationNO = readLine()
            print ("There is no number match \(String(describing: resevationNO)) !")
            
        case "4":
            print("Explore the cities 🔍")
        case "5":
            print("Trips 💡.")
        case "6":
            print("Contact us 📩")
            let contact:String = """
    For frequently asked questions

    For terms & conditions

    For IKEA Business

    For jobs

    For suggestions, email us at suggestions@AS.com.sa
    """
            print("Contact us 📩 \(contact)")
        default:
            print("Please enter a valid value")
        }
    }}
userMenue()



// Func naumber of passangers
func pasangers(){
    print ("Please enter a number of passangers .. \r\n")
    print ("Adults:")
    let adult = readLine()
    print ("Children (From age 0 - 12 Years) :")
    let child = readLine()
    print ("continue for ( \(adult!) ) adults & ( \(child!) ) Children  ")
    flightClass()
}
// Degree
func flightClass(){
    print("Please choose your flight class you want:\r\n 1. Economy \r\n 2. Business \r\n 3. First")

   var degree: String = ""
 
    if let userClass = readLine(){
        degree = userClass
    switch degree {
case"1":
        let economy = "Economy"
        print("Continue with \(economy) class")
        flightInfo()
case"2":
        let business = "Business"
        print("Continue with \(business) class")
        flightInfo()
case"3":
        let first = "First"
        print("Continue with \(first) class")
        flightInfo()
default:
    print("Please enter a valid number")
    break
    }
    }
}


//Fun for bookFlight
func bookFlight (){
    let trips: String = """
    1. One way Trip
    2. Round Trips
    3. Multi City Trips
    """
print("Please choose the type of trips:")
print(trips)
    if let tripTypeChoice = readLine(){
        switch tripTypeChoice{
        case"1":
        pasangers()
        case"2":
        pasangers()
            print("please enter your return Date: ")
           // userDate()
            
            
        case"3":
        pasangers()
        default:
            print("Please enter a valid number")
            break
        }
}
}


// Fun for fightInfo
func flightInfo(){
    let destination:String = """

・*:.。.*.。.:*・☆・゜・*:.。.:*・☆・
    1. Abha International Airport.
    2. Al-Ahsa International Airport.
    3.Prince Abdul Majeed bin Abdulaziz International Airport.
    4.Prince Naif bin Abdulaziz International Airport.
    5.King Fahd International Airport.
    6.King Abdulaziz International Airport.
    7.Prince Mohammad bin Abdulaziz International Airport.
    8.King Khalid International Airport.
    9.Taif International Airport.
    10.Prince Abdul Mohsin bin Abdulaziz International Airport.

"""
    print("Please choose your current city : \r\n \(destination)")
    if let destinationChoice = readLine(){
        switch destinationChoice {
        case "1":
            print("Abha International Airport has been chosen! \r\n ")
            print("Please choose your destination city from the same menu above : \r\n ")
            if let destinationChoice2 = readLine(){
            switch destinationChoice2 {
            case "1":
            print("You cannot choose the same current place \r\n ")
            case "2":
            print("Al-Ahsa International Airport has been chosen as destination! \r\n ")
            case "3":
            print("Prince Abdul Majeed bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "4":
            print("Prince Naif bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "5":
            print("King Fahd International Airport has been chosen as destination! \r\n ")
            case "6" :
            print("King Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "7":
            print("Prince Mohammad bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "8" :
            print("King Khalid International Airport has been chosen as destination! \r\n ")

            case "9" :
            print("Taif International Airport has been chosen as destination! \r\n ")
            case "10" :
            print("Prince Abdul Mohsin bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            default:
                print("Please enter a valid number")
                break
            }

        }
        case "2":
            print("Al-Ahsa International Airport has been chosen! \r\n ")
            print("Please choose your destination city from the same menu above : \r\n ")
            if let destinationChoice2 = readLine(){
            switch destinationChoice2 {
            case "2":
            print("You cannot choose the same current place \r\n ")
            case "1":
            print("Abha International Airport has been chosen as destination! \r\n ")
            case "3":
            print("Prince Abdul Majeed bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "4":
            print("Prince Naif bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "5":
            print("King Fahd International Airport has been chosen as destination! \r\n ")
            case "6" :
            print("King Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "7":
            print("Prince Mohammad bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "8" :
            print("King Khalid International Airport has been chosen as destination! \r\n ")

            case "9" :
            print("Taif International Airport has been chosen as destination! \r\n ")
            case "10" :
            print("Prince Abdul Mohsin bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            default:
                print("Please enter a valid number")
                break
            }

        }
        case "3":
            print("Prince Abdul Majeed bin Abdulaziz International Airport has been chosen! \r\n ")
            print("Please choose your destination city from the same menu above : \r\n ")
            if let destinationChoice2 = readLine(){
            switch destinationChoice2 {
            case "3":
            print("You cannot choose the same current place \r\n ")
            case "2":
            print("Al-Ahsa International Airport has been chosen as destination! \r\n ")
            case "1":
            print("Abha International Airport has been chosen as destination! \r\n ")
            case "4":
            print("Prince Naif bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "5":
            print("King Fahd International Airport has been chosen as destination! \r\n ")
            case "6" :
            print("King Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "7":
            print("Prince Mohammad bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "8" :
            print("King Khalid International Airport has been chosen as destination! \r\n ")

            case "9" :
            print("Taif International Airport has been chosen as destination! \r\n ")
            case "10" :
            print("Prince Abdul Mohsin bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            default:
                print("Please enter a valid number")
                break
            }

        }
        case"4":
            print("Prince Naif bin Abdulaziz International Airport has been chosen! \r\n ")
            print("Please choose your destination city from the same menu above : \r\n ")
            if let destinationChoice2 = readLine(){
            switch destinationChoice2 {
            case "4":
            print("You cannot choose the same current place \r\n ")
            case "2":
            print("Al-Ahsa International Airport has been chosen as destination! \r\n ")
            case "3":
            print("Prince Abdul Majeed bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "1":
            print("Abha International Airport has been chosen as destination! \r\n ")
            case "5":
            print("King Fahd International Airport has been chosen as destination! \r\n ")
            case "6" :
            print("King Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "7":
            print("Prince Mohammad bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "8" :
            print("King Khalid International Airport has been chosen as destination! \r\n ")

            case "9" :
            print("Taif International Airport has been chosen as destination! \r\n ")
            case "10" :
            print("Prince Abdul Mohsin bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            default:
                print("Please enter a valid number")
                break
            }

        }
        case"5":
            print(" King Fahd International Airporthas been chosen! \r\n ")
            print("Please choose your destination city from the same menu above : \r\n ")
            if let destinationChoice2 = readLine(){
            switch destinationChoice2 {
            case "5":
            print("You cannot choose the same current place \r\n ")
            case "2":
            print("Al-Ahsa International Airport has been chosen as destination! \r\n ")
            case "3":
            print("Prince Abdul Majeed bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "4":
            print("Prince Naif bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "1":
            print("Abha International Airport  has been chosen as destination! \r\n ")
            case "6" :
            print("King Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "7":
            print("Prince Mohammad bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "8" :
            print("King Khalid International Airport has been chosen as destination! \r\n ")

            case "9" :
            print("Taif International Airport has been chosen as destination! \r\n ")
            case "10" :
            print("Prince Abdul Mohsin bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            default:
                print("Please enter a valid number")
                break
            }

        }
        case"6":
            print("King Abdulaziz International Airport has been chosen! \r\n ")
            print("Please choose your destination city from the same menu above : \r\n ")
            if let destinationChoice2 = readLine(){
            switch destinationChoice2 {
            case "6":
            print("You cannot choose the same current place \r\n ")
            case "2":
            print("Al-Ahsa International Airport has been chosen as destination! \r\n ")
            case "3":
            print("Prince Abdul Majeed bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "4":
            print("Prince Naif bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "5":
            print("King Fahd International Airport has been chosen as destination! \r\n ")
            case "1" :
            print("Abha International Airport  has been chosen as destination! \r\n ")
            case "7":
            print("Prince Mohammad bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "8" :
            print("King Khalid International Airport has been chosen as destination! \r\n ")

            case "9" :
            print("Taif International Airport has been chosen as destination! \r\n ")
            case "10" :
            print("Prince Abdul Mohsin bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            default:
                print("Please enter a valid number")
                break
            }

        }
        case"7":
            print("Prince Mohammad bin Abdulaziz International Airport has been chosen! \r\n ")
            print("Please choose your destination city from the same menu above : \r\n ")
            if let destinationChoice2 = readLine(){
            switch destinationChoice2 {
            case "7":
            print("You cannot choose the same current place \r\n ")
            case "2":
            print("Al-Ahsa International Airport has been chosen as destination! \r\n ")
            case "3":
            print("Prince Abdul Majeed bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "4":
            print("Prince Naif bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "5":
            print("King Fahd International Airport has been chosen as destination! \r\n ")
            case "6" :
            print("King Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "1":
            print("Abha International Airport has been chosen as destination! \r\n ")
            case "8" :
            print("King Khalid International Airport has been chosen as destination! \r\n ")
            case "9" :
            print("Taif International Airport has been chosen as destination! \r\n ")
            case "10" :
            print("Prince Abdul Mohsin bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            default:
                print("Please enter a valid number")
                break
            }

        }
        case"8":
            print("King Khalid International Airport has been chosen! \r\n ")
            print("Please choose your destination city from the same menu above : \r\n ")
            if let destinationChoice2 = readLine(){
            switch destinationChoice2 {
            case "8":
            print("You cannot choose the same current place \r\n ")
            case "2":
            print("Al-Ahsa International Airport has been chosen as destination! \r\n ")
            case "3":
            print("Prince Abdul Majeed bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "4":
            print("Prince Naif bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "5":
            print("King Fahd International Airport has been chosen as destination! \r\n ")
            case "6" :
            print("King Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "7":
            print("Prince Mohammad bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "1" :
            print("Abha International Airport has been chosen as destination! \r\n ")
            case "9" :
            print("Taif International Airport has been chosen as destination! \r\n ")
            case "10" :
            print("Prince Abdul Mohsin bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            default:
                print("Please enter a valid number")
                break
            }

        }
        case"9":
            print("Taif International Airport has been chosen! \r\n ")
            print("Please choose your destination city from the same menu above : \r\n ")
            if let destinationChoice2 = readLine(){
            switch destinationChoice2 {
            case "9":
            print("You cannot choose the same current place \r\n ")
            case "2":
            print("Al-Ahsa International Airport has been chosen as destination! \r\n ")
            case "3":
            print("Prince Abdul Majeed bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "4":
            print("Prince Naif bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "5":
            print("King Fahd International Airport has been chosen as destination! \r\n ")
            case "6" :
            print("King Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "7":
            print("Prince Mohammad bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "8" :
            print("King Khalid International Airport has been chosen as destination! \r\n ")

            case "1" :
            print("Abha International Airport has been chosen as destination! \r\n ")
            case "10" :
            print("Prince Abdul Mohsin bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            default:
                print("Please enter a valid number")
                break
            }

        }
        case"10":
            print("Prince Abdul Mohsin bin Abdulaziz International Airport has been chosen! \r\n ")
            print("Please choose your destination city from the same menu above : \r\n ")
            if let destinationChoice2 = readLine(){
            switch destinationChoice2 {
            case "10":
            print("You cannot choose the same current place \r\n ")
            case "2":
            print("Al-Ahsa International Airport has been chosen as destination! \r\n ")
            case "3":
            print("Prince Abdul Majeed bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "4":
            print("Prince Naif bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "5":
            print("King Fahd International Airport has been chosen as destination! \r\n ")
            case "6" :
            print("King Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "7":
            print("Prince Mohammad bin Abdulaziz International Airport has been chosen as destination! \r\n ")
            case "8" :
            print("King Khalid International Airport has been chosen as destination! \r\n ")

            case "9" :
            print("Taif International Airport has been chosen as destination! \r\n ")
            case "1" :
            print("Abha International Airport has been chosen as destination! \r\n ")
            default:
                print("Please enter a valid number")
                break
            }

        }
        default:
        print("Please enter a valid number")

        }
    }

    userDate()
    print (" Are you want to proceed the process? Enter Y as yes and N as NO")
        var userAnwser :String = ""
        if var proceed = readLine(){
            userAnwser = proceed
        if  userAnwser == "Y" {
            proceed = userAnwser
            print("Continue to Passanger information")
            passangerInfo ()
        }
        else {
            print("Cancel")
        }
    }
}

//flightInfo()

func passangerInfo (){
    print("Enter Your name :")
    let name = readLine()
    print("Enter Your ID number :")
     let Id = readLine()
    print("Enter Your age :")
    let age = readLine()
    print("Your Information is:\r\n Yor name is \(String(describing: name))\r\n Your ID = \(String(describing: Id))\r\n your Birth day is : \(String(describing: age))")
    print (" Are you want to confirm your  resevation ? Enter Y as yes and N as NO")
        var userAnwser :String = ""
        if var proceed = readLine(){
            userAnwser = proceed
        if  userAnwser == "Y" {
            proceed = userAnwser
            print("Continue to Payment")
        }
        else {
            print("Cancel")
        }
    
}
}

// Fun Date
func userDate (){
    print("Please enter flight date that you want (by format 'dd/MM/yy') ! \r\n")
    guard let inputDate = readLine() else {
        return
    }
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd/MM/yy"
    dateFormatter.date(from: inputDate)
    let tim:String = """
1. 9:00
2. 14:00
3. 22:00
"""
    print("There is a list of times that available in this day\(tim)")
    guard let inputTime = readLine() else {
        return
    }
    dateFormatter.date(from: inputTime)
    print("Your date and time are:")
    print (inputDate)
    print (inputTime)
//    var date = Date()
//    let dateFormatter = DateFormatter()
//    dateFormatter.date(from: inputDate)
//    dateFormatter.dateStyle = .short
//    dateFormatter.timeStyle = .short
//    var dateComponents = DateComponents()
//    dateComponents.calendar = Calendar.current
//    date = dateComponents.date!
//    print(dateFormatter.string(from: date))
}
