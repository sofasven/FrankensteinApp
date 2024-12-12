//
//  Pages.swift
//  FrankensteinApp
//
//  Created by Софа on 12.12.24.
//

import UIKit

enum Pages: CaseIterable {
    
    case page1
    case page2
    case page3
    case page4
}

extension Pages {
    var image: UIImage {
        return switch self {
        case .page1:
            Asset.Images.page1Image.image
        case .page2:
            Asset.Images.page2Image.image
        case .page3:
            Asset.Images.page3Image.image
        case .page4:
            Asset.Images.page4Image.image
        }
    }
    var title: String {
        return switch self {
        case .page1:
            Localized.page1Title
        case .page2:
            Localized.page2Title
        case .page3:
            Localized.page3Title
        case .page4:
            Localized.page4Title
        }
    }
    var detail: String {
        return switch self {
        case .page1:
            Localized.page1Detail
        case .page2:
            Localized.page2Detail
        case .page3:
            Localized.page3Detail
        case .page4:
            Localized.page4Detail
        }
    }
    var colorStart: CGColor {
        return switch self {
        case .page1:
            Asset.Colors.greenGradientStart.color.cgColor
        case .page2:
            Asset.Colors.blueGradientStart.color.cgColor
        case .page3:
            Asset.Colors.purpleGradientStart.color.cgColor
        case .page4:
            Asset.Colors.yellowGradientStart.color.cgColor
        }
    }
    var colorFinish: CGColor {
        return switch self {
        case .page1:
            Asset.Colors.greenGradientFinish.color.cgColor
        case .page2:
            Asset.Colors.blueGradientFinish.color.cgColor
        case .page3:
            Asset.Colors.purpleGradientFinish.color.cgColor
        case .page4:
            Asset.Colors.yellowGradientFinish.color.cgColor
        }
    }
}
