//
//  BookInputViewController.swift
//  Project3Sample
//
//  Created by Russell Mirabelli on 11/16/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class BookInputViewController: UIViewController {
    
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var authorField: UITextField!
    @IBOutlet weak var publicationField: UITextField!
    @IBOutlet weak var imageField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var endLabel: UILabel!
    
    
    
    @IBAction func buttonClicked(_ sender: UIButton){
        let service = BookService()
        service.createBook(book: Book(title: titleField.text!, author: authorField.text!, published: publicationField.text!, image: imageField.text!), completion: {})
        endLabel.isHidden = true
    }
    
    override func viewDidLoad() {
        submitButton.isEnabled = true
        endLabel.isHidden = true
        titleField.placeholder = "Book Title"
        titleField.delegate = self as? UITextFieldDelegate
        authorField.placeholder = "Book Author"
        authorField.delegate = self as? UITextFieldDelegate
        publicationField.placeholder = "Publication year"
        publicationField.delegate = self as? UITextFieldDelegate
        imageField.placeholder = "Cover Image"
        imageField.delegate = self as? UITextFieldDelegate
    }
}
