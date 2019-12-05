//
//  ReviewButton.swift
//  Project3Sample
//
//  Created by Brendan Flood on 12/5/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ReviewButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var reviewTag: Review! = Review(id: nil, bookId: 0, date: nil, reviewer: "", title: "", body: "")
}
