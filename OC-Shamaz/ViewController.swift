//
//  ViewController.swift
//  OC-Shamaz
//
//  Created by Ahmed Chishti on 9/28/20.
//

import UIKit

class ViewController: UIViewController {

    let futureSentences = ["Where do you see yourself in", "What will you be doing in", "What city will you be in", "What job will you have in", "Will you eat out in", "Will you go shopping in"]
    
    let futureTimes = [" 5 days?"," 1 week?", " 3 weeks?", " 4 months?", " 2 months?", " 1 year?", " 5 years?", " a decade?"]
    
    let pastSentences = ["Where were you", "What were you doing", "What city were you in" , "What job did you have", "Did you order pizza", "Did you go shopping", "What was your favorite song"]
    
    var pastTimes = [" 5 days ago?"," 1 week ago?", " 3 weeks ago?", " 4 months ago?", " 2 months ago?", " 1 year ago?", " 5 years ago?", " a decade ago?"]
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBAction func past() {
       
        let pastSentencesRandomIndex =  Int(arc4random_uniform(UInt32(pastSentences.count)))
        let randomPastSentences =  pastSentences[pastSentencesRandomIndex]
                
        let pastTimesRandomIndex = Int(arc4random_uniform(UInt32(pastTimes.count)))
        let randomPastTimes = pastTimes[pastTimesRandomIndex]
        
        let pastActingTask = randomPastSentences + randomPastTimes
        
        
        questionLabel.text = pastActingTask
        
    }
    
    @IBAction func future() {
        
        let futureSentencesRandomIndex =  Int(arc4random_uniform(UInt32(futureSentences.count)))
        let randomFutureSentences =  futureSentences[futureSentencesRandomIndex]
       
        print(randomFutureSentences)
        
        let futureTimesRandomIndex = Int(arc4random_uniform(UInt32(futureTimes.count)))
        let randomFutureTimes = futureTimes[futureTimesRandomIndex]
        print(randomFutureTimes)
        
        let futureActingTask = randomFutureSentences + randomFutureTimes
        
        questionLabel.text = futureActingTask

    }
}

