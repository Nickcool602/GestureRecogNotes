//
//  ViewController.swift
//  GestureRecogNotes
//
//  Created by NICHOLAS VINTARTAS on 10/1/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelLabel: UILabel!
    
    @IBOutlet weak var panOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapRecog(_ sender: UITapGestureRecognizer) {
        if view.backgroundColor == .red {
            view.backgroundColor = .orange
        }
        else if view.backgroundColor == .orange {
            view.backgroundColor = .yellow
        }
        else if view.backgroundColor == .yellow {
            view.backgroundColor = .green
        }
        else if view.backgroundColor == .green {
            view.backgroundColor = .blue
        }
        else if view.backgroundColor == .blue {
            view.backgroundColor = .purple
        }
        else if view.backgroundColor == .purple {
            view.backgroundColor = .red
        }
        else {
            view.backgroundColor = .red
        }
        var clickLoc = sender.location(in:view)
        labelLabel.center = clickLoc
    }

    @IBAction func panRecog(_ sender: UIPanGestureRecognizer) {
        var panLoc = sender.location(in: view)
        panOutlet.center = panLoc
    }
    
}

