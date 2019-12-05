//
//  ReviewInputViewController.swift
//  Project3Sample
//
//  Created by Russell Mirabelli on 11/16/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ReviewInputViewController: UIViewController {
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var reviewerField: UITextField!
    @IBOutlet weak var bookIdField: UITextField!
    @IBOutlet weak var bodyField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var endLabel: UILabel!
    
    
    
    @IBAction func buttonClicked(_ sender: UIButton){
        let service = ReviewService()
        service.createReview(review: Review(id: nil, bookId: Int(bookIdField.text!)!, date: Date(), reviewer: reviewerField.text!, title: titleField.text!, body: bodyField.text!), completion: {})
        endLabel.isHidden = false
    }
    
    override func viewDidLoad() {
        submitButton.isEnabled = true
        endLabel.isHidden = true
        titleField.placeholder = "Review Title"
        titleField.delegate = self as? UITextFieldDelegate
        reviewerField.placeholder = "Book Author"
        reviewerField.delegate = self as? UITextFieldDelegate
        bookIdField.placeholder = "Book ID Number"
        bookIdField.delegate = self as? UITextFieldDelegate
        bodyField.placeholder = "Type your review"
        bodyField.delegate = self as? UITextFieldDelegate
    }
    
    
    
    
}
