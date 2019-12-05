//
//  ReviewDetailViewController.swift
//  Project3Sample
//
//  Created by Russell Mirabelli on 11/16/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ReviewDetailViewController: UIViewController {
    
    var thisReview: Review!
    let formatter = DateFormatter()
    
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var reviewerLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var bookIdLabel: UILabel!
    @IBOutlet var bodyLabel: UILabel!
    
    override func viewDidLoad() {
        titleLabel.text = "\(thisReview.title)"
        reviewerLabel.text = "Reviewer: \(thisReview.reviewer)"
        dateLabel.text = "Date Submitted: \(formatter.string(from: thisReview.date!))"
        bookIdLabel.text = "Book ID: \(Int(thisReview.bookId))"
        bodyLabel.text = thisReview.body
        
    }
    
}
