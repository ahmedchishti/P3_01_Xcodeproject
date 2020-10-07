//
//  ViewController.swift
//  OC-Shamaz
//
//  Created by Ahmed Chishti on 9/28/20.
//

import UIKit

class ViewController: UIViewController {
    
    let futureSentences = ["Where do you see yourself in", "What will you be doing in", "What city will you be in", "What job will you have in", "Will you eat out in", "Will you go shopping in"]
    // This constant is an array of beginnnings of sentences, this constant + futureTimes = a full sentence which is displayed on the label
    let futureTimes = [" 5 days?"," 1 week?", " 3 weeks?", " 4 months?", " 2 months?", " 1 year?", " 5 years?", " a decade?"]
    // This constant is an array of endings of sentences, this constant + futureSentences = a full sentence which is displayed on the label
    let pastSentences = ["Where were you", "What were you doing", "What city were you in" , "What job did you have", "Did you order pizza", "Did you go shopping", "What was your favorite song"]
    // This constant is an array of beginnnings of sentences, this constant + pastTimes = a full sentence which is displayed on the label
    let pastTimes = [" 5 days ago?"," 1 week ago?", " 3 weeks ago?", " 4 months ago?", " 2 months ago?", " 1 year ago?", " 5 years ago?", " a decade ago?"]
    // This constant is an array of endings of sentences, this constant + pastSentences = a full sentence which is displayed on the label
    
    @IBOutlet weak var questionLabel: UILabel!
    
    // This is the connection from the storyboard to the view controller
    
    @IBAction func past() {
        // This is the connection from the storyboard to the view controller
        
        // This function is in relation to the PAST button on the storyboard. When the PAST button is pressed, a random phrase is composed from the "let pastSentences" and the "let pastTimes." One example of this would be, "Did you order pizza 1 week ago"
        
        let pastSentencesRandomIndex =  Int(arc4random_uniform(UInt32(pastSentences.count)))
        let randomPastSentences =  pastSentences[pastSentencesRandomIndex]
        
        let pastTimesRandomIndex = Int(arc4random_uniform(UInt32(pastTimes.count)))
        let randomPastTimes = pastTimes[pastTimesRandomIndex]
        
        let pastActingTask = randomPastSentences + randomPastTimes
        
        
        questionLabel.text = pastActingTask
        
    }
    
    @IBAction func future() {
        // This is the connection from the storyboard to the view controller
        
        // This function is in relation to the FUTURE button on the storyboard. When the FUTURE button is pressed, a random phrase is composed from the "let futureSentences" and the "let futureTimes." One example of this would be, "What city will you be in 5 years"
        
        let futureSentencesRandomIndex =  Int(arc4random_uniform(UInt32(futureSentences.count)))
        let randomFutureSentences =  futureSentences[futureSentencesRandomIndex]
        
        //print(randomFutureSentences)
        
        let futureTimesRandomIndex = Int(arc4random_uniform(UInt32(futureTimes.count)))
        let randomFutureTimes = futureTimes[futureTimesRandomIndex]
        
        //print(randomFutureTimes)
        
        let futureActingTask = randomFutureSentences + randomFutureTimes
        
        questionLabel.text = futureActingTask
        
    }
}

// I used MVC since I'm still new to the iOS development platform. The course thoroughly explained the Model - View - Controller and for now I though that this would be my best solution. For that reason, I chose to use MVC instead of MVVM, however, I plan to use MVVM in the future once I get a bit more used to XCode and a bit more of iOS development.

// GitHub code: 149eea8cf26933ccffd98f3de4ecb9727c0abcf2
