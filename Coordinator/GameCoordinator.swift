//
//  GameCoordinator.swift
//  iQuizz
//
//  Created by MacBook DS on 07/12/2020.
//

import Foundation
import RxSwift


class GameCoordinator: BaseCoordinator {
    private let disposeBag = DisposeBag()
    
    override func start() {
        let viewModel = GameVM()
        let viewController = GameVC(viewModel: viewModel)

        
        navigationController.viewControllers = [viewController]
    }
}
