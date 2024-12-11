// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum Localized {
  /// Next
  internal static let next = Localized.tr("Localizable", "next", fallback: "Next")
  /// Make your mental health a priority. Track daily emotional condition
  internal static let page1Detail = Localized.tr("Localizable", "page1Detail", fallback: "Make your mental health a priority. Track daily emotional condition")
  /// Personal mood diary
  internal static let page1Title = Localized.tr("Localizable", "page1Title", fallback: "Personal mood diary")
  /// Start with assessing your current mood. Find out what makes you happier
  internal static let page2Detail = Localized.tr("Localizable", "page2Detail", fallback: "Start with assessing your current mood. Find out what makes you happier")
  /// Daily tracking
  internal static let page2Title = Localized.tr("Localizable", "page2Title", fallback: "Daily tracking")
  /// Get personalised analytical insights and interactive charts
  internal static let page3Detail = Localized.tr("Localizable", "page3Detail", fallback: "Get personalised analytical insights and interactive charts")
  /// Advanced statistics
  internal static let page3Title = Localized.tr("Localizable", "page3Title", fallback: "Advanced statistics")
  /// Reduce stress and anxiety levels with special breathing techniques
  internal static let page4Detail = Localized.tr("Localizable", "page4Detail", fallback: "Reduce stress and anxiety levels with special breathing techniques")
  /// Breathing exercises
  internal static let page4Title = Localized.tr("Localizable", "page4Title", fallback: "Breathing exercises")
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension Localized {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
