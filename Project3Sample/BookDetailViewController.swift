//
//  BookDetailViewController.swift
//  Project3Sample
//
//  Created by Russell Mirabelli on 11/16/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {
    
    var thisBook: Book! = Book(title: "ha", author: "ha", published: "ha", image: "https://upload.wikimedia.org/wikipedia/commons/3/3c/Tales_serial.jpg")
    
    
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var publishedLabel: UILabel!
    @IBOutlet var coverImage: UIImageView!
    
    func setImage() {
        let bookService = BookService()
        let book: Book! = thisBook
        bookService.image(for: book) { [weak self] (retrievedBook, image) in
            if book.id == retrievedBook.id {
                DispatchQueue.main.async {
                    self?.coverImage.image = image
                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        titleLabel.text = "\(thisBook.title)"
        authorLabel.text = "Author: \(thisBook.author)"
        publishedLabel.text = "Published: \(thisBook.published)"
        setImage()
    }
    
}


