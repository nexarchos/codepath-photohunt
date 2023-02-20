//
//  Task.swift
//  PhotoHunt
//
//  Created by Nicole Exarchos on 2/14/23.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite flowers",
                 description: "What is your favorite flower and where is it located?"),
            Task(title: "Your favorite dog breed",
                 description: "What is your favorite type of dog breed and why?"),
            Task(title: "Your favorite waterfall location",
                 description: "Where is your favorite waterfall located and what about it made you fall in love with it?")
        ]
    }
}
