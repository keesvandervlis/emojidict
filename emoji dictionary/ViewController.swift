//
//  ViewController.swift
//  emoji dictionary
//
//  Created by Kees van der vlis on 16/04/2017.
//  Copyright © 2017 Kees van der vlis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var MyTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        MyTableView.dataSource = self
        MyTableView.delegate = self
        emojis = MakeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji =  emojis[indexPath.row]
        cell.textLabel?.text = emoji.emojiString
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "MoveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DefVC = segue.destination as! DefinitionViewController
        DefVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func MakeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.emojiString = "😇"
        emoji1.emojiCategory = "Smiley"
        emoji1.emojiDescription = "Halo Smiley"
        emoji1.emojiBirthyear = 2010
        
        let emoji2 = Emoji()
        emoji2.emojiString = "😎"
        emoji2.emojiCategory = "Smiley"
        emoji2.emojiDescription = "sunglass Smiley"
        emoji2.emojiBirthyear = 2000
       
        let emoji3 = Emoji()
        emoji3.emojiString = "😈"
        emoji3.emojiCategory = "Smiley"
        emoji3.emojiDescription = "devil Smiley"
        emoji3.emojiBirthyear = 2001
        
        let emoji4 = Emoji()
        emoji4.emojiString = "💩"
        emoji4.emojiCategory = "Smiley"
        emoji4.emojiDescription = "Poo Smiley"
        emoji4.emojiBirthyear = 2012
    
        let emoji5 = Emoji()
        emoji5.emojiString = "👻"
        emoji5.emojiCategory = "Smiley"
        emoji5.emojiDescription = "Ghost Smiley"
        emoji5.emojiBirthyear = 2013
    
        let emoji6 = Emoji()
        emoji6.emojiString = "🐹"
        emoji6.emojiCategory = "Animal"
        emoji6.emojiDescription = "Cute Hamster"
        emoji6.emojiBirthyear = 2015
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }
    


}

