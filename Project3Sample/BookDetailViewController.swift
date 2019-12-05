//
//  BookDetailViewController.swift
//  Project3Sample
//
//  Created by Russell Mirabelli on 11/16/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {
    
    var thisBook: Book! = Book(title: "ha", author: "ha", published: "ha", image: "ha")
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var publishedLabel: UILabel!
    @IBOutlet var coverImage: UIImageView!
    
    override func viewDidLoad() {
        titleLabel.text = "\(thisBook.title)"
        authorLabel.text = "Author: \(thisBook.author)"
        publishedLabel.text = "Published: \(thisBook.published)"
        coverImage = UIImageView()
    }
    
}
