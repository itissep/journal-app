//
//  ViewController.swift
//  JournalApp
//
//  Created by The GORDEEVS on 18.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let settingsView = SettingsViewController(nibName: "SettingsViewController", bundle: nil)
        let newNoteView = NewNoteViewController(nibName: "NewNoteViewController", bundle: nil)
        let mainView = MainViewController(nibName: "MainViewController", bundle: nil)
        
        
        
        self.addChild(newNoteView)
        self.scrollView.addSubview(newNoteView.view)
        newNoteView.didMove(toParent: self)
        
        self.addChild(mainView)
        self.scrollView.addSubview(mainView.view)
        mainView.didMove(toParent: self)
        
        self.addChild(settingsView)
        self.scrollView.addSubview(settingsView.view)
        settingsView.didMove(toParent: self)
        
        var mainViewFrame: CGRect = mainView.view.frame
        mainViewFrame.origin.x = self.view.frame.width
        mainView.view.frame = mainViewFrame
        
        var newNoteViewFrame: CGRect = newNoteView.view.frame
        newNoteViewFrame.origin.x = self.view.frame.width * 2
        newNoteView.view.frame = newNoteViewFrame
        
        
        self.scrollView.contentSize = CGSize(width: self.view.frame.width * 3, height: self.view.frame.size.height)
        self.scrollView.scrollRectToVisible(mainViewFrame, animated: true)
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

