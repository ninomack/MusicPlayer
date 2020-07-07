//
//  SearchViewController.swift
//  MusicPlayer
//
//  Created by Михаил Ушаков on 07.07.2020.
//  Copyright © 2020 Михаил Ушаков. All rights reserved.
//

import Foundation
import UIKit

struct TrackModel {
    var trackName: String
    var artistName: String
}

class SearchViewController: UITableViewController {
    
    let searchController = UISearchController(searchResultsController: nil)
    let tracks = [TrackModel(trackName: "track 1", artistName: "artist 1"), TrackModel(trackName: "track 2", artistName: "artist 2")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupSearchBar()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "ident")

    }
    
    private func setupSearchBar() {
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return tracks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ident", for: indexPath)
        let track = tracks[indexPath.row]
        cell.textLabel?.text = "\(track.trackName)\n\(track.artistName)"
        cell.textLabel?.numberOfLines = 2
        return cell
    }
}
