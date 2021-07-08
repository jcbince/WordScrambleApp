//
//  ViewController.swift
//  WordScrambleApp
//
//  Created by user198555 on 7/7/21.
//

import UIKit

class ViewController: UITableViewController {
        
    var allWords = [String]()
    var usedWords = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt")
        {
            if let startWords = try? String(contentsOf: startWordsURL)
            {
                allWords = startWords.components(separatedBy: "\n")
            }
        }
        
        if allWords.isEmpty
        {
            allWords = ["silkworm"]
        }
        
    }
    
    func startGame()
    {
        title = allWords.randomElement()
        usedWords.removeAll(keepingCapacity: true)
        tableView.reloadData()
    }
    


}

