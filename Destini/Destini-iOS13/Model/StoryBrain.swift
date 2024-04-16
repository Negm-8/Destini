    //
    //  StoryBrain.swift
    //  Destini-iOS13
    //
    //  Created by Angela Yu on 08/08/2019.
    //  Copyright © 2019 The App Brewery. All rights reserved.
    //
    
    import Foundation
    
    struct StoryBrain {
        
        var storyNumber = 0
        
        let stories = [
            Story(
                title: "تستتتتتتت.",
                choice1: "هاكتب ساعه كوبي واديلو", choice1Destination: 2,
                choice2: "يابحر وينك.", choice2Destination: 1
            ),
            Story(
                title: "He nods slowly, unfazed by the question.",
                choice1: "At least he's honest. I'll climb in.", choice1Destination: 2,
                choice2: "Wait, I know how to change a tire.", choice2Destination: 3
            ),
            Story(
                title: "اكتب الي تحتاجه.",
                choice1: "حبك سفاوووو.", choice1Destination: 5,
                choice2: "فلوسسسسسسسسس.", choice2Destination: 4
            ),
            Story(
                title: "محتاج ٤ عربيات من كل علامه بس عدا الصيني ",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0
            ),
            Story(
                title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0
            ),
            Story(
                title: "عربياتتتتتتت.'",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0
            )
        ]
        
        func getStoryTitle() -> String {
            return stories[storyNumber].title
        }
        
        func getChoice1() -> String {
            return stories[storyNumber].choice1
        }
        
        func getChoice2() -> String {
            return stories[storyNumber].choice2
        }
        
        mutating func nextStory(userChoice: String) {
            
            let currentStory = stories[storyNumber]
            if userChoice == currentStory.choice1 {
                storyNumber = currentStory.choice1Destination
            } else if userChoice == currentStory.choice2 {
                storyNumber = currentStory.choice2Destination
            }
        }
        
    }
    
    
