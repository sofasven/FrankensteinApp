//
//  ViewController.swift
//  FrankensteinApp
//
//  Created by Софа on 11.12.24.
//

import UIKit
import SnapKit

class OnboardingViewController: UIViewController {
    
    
    // MARK: - Subviews
    private let scrollView: UIScrollView = .init()
    private let stackView: UIStackView = .init()
    private let pageControl: UIPageControl = .init()
    private let button: UIButton = .init()
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    
    // MARK: - Methods
    private func setup() {
        buildHierarhy()
        configureSubviews()
        layoutSubviews()
        setupActions()
    }
    
    private func buildHierarhy() {
        view.addSubview(scrollView)
        view.addSubview(pageControl)
        view.addSubview(button)
        scrollView.addSubview(stackView)
        
        for page in Pages.allCases {
            let pageView = OnboardingView(page: page)
            stackView.addArrangedSubview(pageView)
            pageView.snp.makeConstraints { maker in
                maker.width.equalTo(scrollView)
            }
        }
    }
    
    private func configureSubviews() {
        stackView.spacing = 0
        stackView.axis = .horizontal
        
        scrollView.isScrollEnabled = true
        
        button.configuration = createButtonConfiguration()
    }
    
    private func layoutSubviews() {
        scrollView.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
        
        stackView.snp.makeConstraints { maker in
            maker.edges.equalTo(scrollView)
            maker.height.equalToSuperview()
        }
        
        
        button.snp.makeConstraints { maker in
            maker.bottom.equalToSuperview().inset(86)
            maker.centerX.equalToSuperview()
            maker.height.equalTo(46)
            maker.width.equalTo(335)
        }
        
        pageControl.snp.makeConstraints { maker in
            maker.bottom.equalTo(button).offset(38)
            maker.leading.equalToSuperview().inset(20)
            maker.trailing.equalToSuperview().offset(20)
            maker.height.equalTo(22)
        }
    }
    
    private func setupActions() {
        
    }
    
    private func createButtonConfiguration() -> UIButton.Configuration  {
        var config = UIButton.Configuration.filled()
        config.buttonSize = .large
        config.cornerStyle = .medium
        config.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer { incoming in
            var outgoing = incoming
            outgoing.font = UIFont.font(.p1)
            outgoing.foregroundColor = Asset.Colors.dark100.color
            return outgoing
        }
        config.title = Localized.next
        config.baseBackgroundColor = Asset.Colors.dark0.color
        return config
    }
}

