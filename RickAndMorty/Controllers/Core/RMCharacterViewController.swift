//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Ihor Orlenko on 12.08.2023.
//

import UIKit

/// Controller to show and serch for Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: \(model.info.count)")
                print("Pages result count: \(model.results.count)")
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}
