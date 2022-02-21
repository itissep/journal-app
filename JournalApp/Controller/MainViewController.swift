//
//  MainViewController.swift
//  JournalApp
//
//  Created by The GORDEEVS on 18.02.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var notes: [Note] = [
        Note(author: "me", date: Date(), body: "1some words to add later"),
        Note(author: "me", date: Date(), body: "2some words to add later"),
        Note(author: "me", date: Date(), body: "3some words to add later"),
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.register(UINib(nibName: NoteCell.nibId, bundle: nil), forCellReuseIdentifier: NoteCell.id)


        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MainViewController: UITableViewDelegate {
    
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let note = notes[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: NoteCell.id, for: indexPath) as! NoteCell
        
        cell.timeLabel.text = "time"
        cell.noteBodyLabel.text = note.body
        return cell
    }
    
    
}
