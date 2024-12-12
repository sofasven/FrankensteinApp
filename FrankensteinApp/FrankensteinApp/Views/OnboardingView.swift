//
//  OnboardingView.swift
//  FrankensteinApp
//
//  Created by Софа on 11.12.24.
//

import UIKit

class OnboardingView: UIView {
    
    // MARK: - Properties
    
    let page: Pages
    
    // MARK: - Subviews
    
    let backgroundView: UIView = .init()
    let imageView: UIImageView = .init()
    let titleLabel: UILabel = .init()
    let detailLabel: UILabel = .init()
    let gradient = CAGradientLayer()
    
    
    // MARK: - Lifecycle
    
    init(page: Pages) {
        self.page = page
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = bounds
    }
    
    // MARK: - Methods
    private func setup() {
        buildHierarhy()
        configureSubviews()
        layoutSubview()
    }
    
    private func buildHierarhy() {
        layer.addSublayer(gradient)
        addSubview(backgroundView)
        backgroundView.addSubview(imageView)
        addSubview(titleLabel)
        addSubview(detailLabel)
    }
    
    private func configureSubviews() {
        backgroundView.backgroundColor = .white.withAlphaComponent(0.2)
        backgroundView.layer.cornerRadius = 20
        
        imageView.image = page.image
        
        titleLabel.text = page.title
        titleLabel.attributedText = createAttributedString(text: page.title, font: UIFont.font(.h1), textColor: Asset.Colors.dark0.color, lineHeight: 40)
        
        
        detailLabel.text = page.detail
        detailLabel.attributedText = createAttributedString(text: page.detail, font: UIFont.font(.p3), textColor: Asset.Colors.dark10.color, lineHeight: 22)
        detailLabel.numberOfLines = 0
        
        gradient.colors = [page.colorStart, page.colorFinish]
        gradient.locations = [NSNumber(0), NSNumber(1)]
        gradient.frame = bounds
        gradient.startPoint = CGPoint(x:0, y:0)
        gradient.endPoint = CGPoint(x:1, y:1)
        
        
    }
    
    private func layoutSubview() {
        backgroundView.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(91)
            maker.leading.equalToSuperview().inset(20)
            maker.trailing.equalToSuperview().inset(20)
            maker.height.equalTo(self.snp.width).multipliedBy(0.98)
        }
        
        imageView.snp.makeConstraints { maker in
            maker.edges.equalTo(backgroundView)
        }
        
        titleLabel.snp.makeConstraints { maker in
            maker.top.equalTo(backgroundView.snp.bottom).offset(64)
            maker.leading.equalToSuperview().inset(20)
            maker.trailing.equalToSuperview().inset(20)
        }
        
        detailLabel.snp.makeConstraints { maker in
            maker.top.equalTo(titleLabel.snp.bottom).offset(12)
            maker.leading.equalToSuperview().inset(20)
            maker.trailing.equalToSuperview().inset(20)
        }
    }
    
    private func createAttributedString(text: String, font: UIFont, textColor: UIColor, lineHeight: CGFloat) -> NSAttributedString {
        var attributedString = AttributedString(text)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.minimumLineHeight = lineHeight
        paragraphStyle.maximumLineHeight = lineHeight
        paragraphStyle.alignment = .center
        attributedString.font = font
        attributedString.foregroundColor = textColor
        attributedString.paragraphStyle = paragraphStyle
        attributedString.kern = 5
        let string = NSAttributedString(attributedString)
        return string
    }
}
