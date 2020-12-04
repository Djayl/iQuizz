//
//  GameView.swift
//  iQuizz
//
//  Created by MacBook DS on 04/12/2020.
//

import UIKit


final class GameView: UIScrollView {
    
    //MARK: - Private Properties
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.accessibilityIdentifier = "contentView"
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = .black
        label.font = .systemFont(ofSize: 20)
        label.accessibilityIdentifier = "titleLabel"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var questionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = .black
        label.font = .systemFont(ofSize: 20)
        label.accessibilityIdentifier = "questionLabel"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: - Init
    
    init(viewModel: GameVM) {
        super.init(frame: .zero)
        titleLabel.text = viewModel.title
        questionLabel.text = viewModel.question
        setup()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
}

//MARK: - Setup

private extension GameView {
    
    func setup() {
        setupInterface()
        setupConstraints()
    }
    
    func setupInterface() {
        addSubview(contentView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(questionLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            contentView.centerXAnchor.constraint(equalTo: centerXAnchor),
            contentView.widthAnchor.constraint(equalTo: widthAnchor),
            contentView.topAnchor.constraint(equalTo: topAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 25),
            titleLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 3/4),
            
            questionLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            questionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            questionLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 3/4),
            questionLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
            
        ])
    }
}
