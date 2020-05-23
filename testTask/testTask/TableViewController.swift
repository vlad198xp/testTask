//
//  TableViewController.swift
//  testTask
//
//  Created by Vladislav Gavrilenko on 5/23/20.
//  Copyright © 2020 Vladislav Gavrilenko. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var songs = [song]()
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return songs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    func confgSong(){
        songs.append(song(name: "",
                          albumName: "",
                          artistName: "",
                          imageName: ""))
    }
    
    struct song {
        let name:String
        let albumName:String
        let artistName:String
        let imageName:String
    }
}
