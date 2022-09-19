//
//  ForYouViewController.swift
//  photoLibrary
//
//  Created by User on 03.09.2022.
//

import UIKit

class ForYouViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Для Вас"
        setupNavigationBar()
    }

    private func setupNavigationBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
    }


}
