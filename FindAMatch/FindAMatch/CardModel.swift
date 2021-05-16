//
//  CardModel.swift
//  FindAMatch
//
//  Created by Adrian Minnich on 15/05/2021.
//

import Foundation

class CardModel {
    
    
    
    func getCards() -> [Card] {
        
        var generatedNumbersArray = [Int]()
        
        var generatedCardsArray = [Card]()
        
        while generatedNumbersArray.count < 8 {
            
            let randomNumber = arc4random_uniform(13) + 1
            
            if generatedNumbersArray.contains(Int(randomNumber)) == false {
                
                generatedNumbersArray.append(Int(randomNumber))
                
                let cardOne = Card()
                cardOne.imageName = "card\(randomNumber)"
                generatedCardsArray.append(cardOne)
            
                let cardTwo = Card()
                cardTwo.imageName = "card\(randomNumber)"
                generatedCardsArray.append(cardTwo)
            }
        }
        
        for i in 0...generatedCardsArray.count - 1 {
            
            let randomNumber = Int(arc4random_uniform(UInt32(generatedCardsArray.count)))
            
            let temporaryStorage = generatedCardsArray[i]
            generatedCardsArray[i] = generatedCardsArray[randomNumber]
            generatedCardsArray[randomNumber] = temporaryStorage
        }
        
        return generatedCardsArray
    }
    
}
