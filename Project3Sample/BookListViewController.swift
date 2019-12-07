//
//  BookListViewController.swift
//  Project3Sample
//
//  Created by Russell Mirabelli on 11/16/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class BookListViewController: UIViewController {
    
   
    
    @IBOutlet weak var tableView: UITableView!
    var viewButton: BookButton!
       
       var service: BookService = BookService()
       
       override func prepare(for segue: UIStoryboardSegue, sender: Any?)
       {
           if segue.destination is BookDetailViewController
           {
               let bookDetail = segue.destination as? BookDetailViewController
            bookDetail?.thisBook = viewButton.bookTag
           }
       }
    
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
        service.fetchBooks() {
            DispatchQueue.main.async{
                self.tableView.reloadData()
            }
            
        }
           tableView.dataSource = self
           
       }
    
    
}

extension BookListViewController: UITableViewDataSource {

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return service.books.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let index = service.books[indexPath.item]
    let cell = tableView.dequeueReusableCell(withIdentifier: "bookcell")!
    if let bookcell = cell as? BookCell {
        bookcell.titleLabel.text = "\(index.title)"
        bookcell.button.bookTag = index
        //let session = URLSession(configuration: .ephemeral)
        //let task = session.dataTask(with: URL(string: service.image(for: index, completion: {_,_ in index}))!) { (data, response, error) in
            //if let data = data {
            //    let image = UIImage(data: data)
            //    DispatchQueue.main.async {
                    
        service.image(for: index) { [weak self] (retrievedBook, image) in
        if index.id == retrievedBook.id {
            DispatchQueue.main.async {
                bookcell.bookImage.image = image
            }
                        
            
            }
            
        }
    }
    //task.resume()
    //}
    return cell

    
    
    

}
}
