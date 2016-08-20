//
//  GraphPaperViewController.swift
//  Segmenter
//
//  Created by Stuart Nelson on 8/18/16.
//  Copyright © 2016 Stuart Nelson. All rights reserved.
//

import UIKit

class GraphPaperViewController: UIViewController {
    
    @IBOutlet weak var graphPaperView: GraphPaperView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        graphPaperView.gridSize = (40, 28)
    }
}
