//
//  GameVC.swift
//  iQuizz
//
//  Created by MacBook DS on 04/12/2020.
//

import UIKit
import RxSwift

class GameVC: UIViewController {
    
    //MARK: - Private Properties
    
    private let viewModel: GameVM
    
    private lazy var gameView: GameView = {
        let view = GameView(viewModel: viewModel)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //MARK: - Init
    
    init(viewModel: GameVM,
         nibName: String? = nil,
         bundle: Bundle? = nil) {
        self.viewModel = viewModel
        super.init(nibName: nibName, bundle: bundle)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Memory Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

//MARK: - Setup

private extension GameVC {
    
    func setup() {
        view.addSubview(gameView)
        view.backgroundColor = .white
        setupConstraints()
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            
            gameView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            gameView.widthAnchor.constraint(equalTo: view.widthAnchor),
            gameView.topAnchor.constraint(equalTo: view.topAnchor),
            gameView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
        
    }
    
}
