import Foundation

/**
 Root protocol, defines the interface common to all asset types.
 */
public protocol Asset: AnyObject {
  /// The human-readable name of the asset. Can be changed at will.
  var name: String { get set }

  /// Uniquely identifies the asset. Immutable, generated on creation.
  var identifier: String { get }
}

/**
 Defines the interface common to all metadata-only assets.
 */
public protocol PrimitiveAsset: Asset {

}

/**
 Defines the interface common to all asset types that depend on a binary resource.
 */
public protocol BasicAsset: Asset {

  /// Uniquely identifies the binary resource on which this asset depends.
  var binaryResourceIdentifier: String { get }
}

/**
 Defines the interface common to all asset types that depend on other assets.
 */
public protocol CompositeAsset: Asset {
  var dependencies: [any Asset] { get set }
}

