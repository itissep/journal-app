//
//  ViewController.swift
//  JournalApp
//
//  Created by The GORDEEVS on 18.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var notes: [Note] = [
        Note(author: "me", date: Date(), body: "some words to add later"),
        Note(author: "me", date: Date(), body: "some words to add later"),
        Note(author: "me", date: Date(), body: "some words to add later"),
        
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let settingsView = SettingsViewController(nibName: "SettingsViewController", bundle: nil)
        let newNoteView = NewNoteViewController(nibName: "NewNoteViewController", bundle: nil)
        
        self.addChild(settingsView)
        self.scrollView.addSubview(settingsView.view)
        settingsView.didMove(toParent: self)
        
        self.addChild(newNoteView)
        self.scrollView.addSubview(newNoteView.view)
        newNoteView.didMove(toParent: self)
        
        var newNoteViewFrame: CGRect = newNoteView.view.frame
        newNoteViewFrame.origin.x = self.view.frame.width
        newNoteView.view.frame = newNoteViewFrame
        
        self.scrollView.contentSize = CGSize(width: self.view.frame.width * 2, height: self.view.frame.size.height)
    }


}

//extension ViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return notes.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: <#T##String#>, for: indexPath)
//
//    }
//
//
//}
//
//extension ViewController: UITableViewDelegate {
//
//}

