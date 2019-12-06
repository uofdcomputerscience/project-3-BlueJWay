//
//  ReviewListViewController.swift
//  Project3Sample
//
//  Created by Russell Mirabelli on 11/16/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit
import Foundation

class ReviewListViewController: UIViewController {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var service = ReviewService()
    
    let formatter = DateFormatter()
    //formatter.dateFormat = "yyyy-MM-dd hh:mm"
    //let dateString = formatter.string(from: thisDate)
      //"yyyy-MM-dd hh:mm"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is ReviewDetailViewController
        {
            let reviewDetail = segue.destination as? ReviewDetailViewController
            //reviewDetail?.thisReview = viewButton.reviewTag
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     service.fetchReviews() {
         DispatchQueue.main.async{
             self.tableView.reloadData()
         }
         
     }
        tableView.dataSource = self
        
    }
    
    
}

extension ReviewListViewController: UITableViewDataSource {

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return service.reviews.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
let index = service.reviews[indexPath.item]
    let cell = tableView.dequeueReusableCell(withIdentifier: "bookcell")!
if let reviewcell = cell as? ReviewCell {
    reviewcell.title.text = "\(index.title)"
    reviewcell.reviewer.text = "Written by: \(index.reviewer)"
    reviewcell.book.text = "Book ID: \(index.bookId)"
    if let date = index.date {
        reviewcell.date.text = "\(formatter.string(from: date))"
    }
    reviewcell.body.text = "Preview: \(index.body)"
                    
        
    
        
    }
    
    //task.resume()
    //}
    return cell

    }
 
}
