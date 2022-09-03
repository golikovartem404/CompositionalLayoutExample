//
//  ViewController.swift
//  photoLibrary
//
//  Created by User on 03.09.2022.
//

import UIKit
import SnapKit

class AlbumsViewController: UIViewController {

    // MARK: - Outlets

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Альбомы"
        setupNavigationBar()
    }

    // MARK: - Setups

    private func setupNavigationBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                           target: self,
                                                           action: #selector(addPhotoAlbum))
    }

    // MARK: - Actions

    @objc func addPhotoAlbum() {
        
    }


    // MARK: - Extension


}

