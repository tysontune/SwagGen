//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class PlacePolygon: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var commonName: String?

    public var geoPoints: [GeoPoint]?

    public init(commonName: String? = nil, geoPoints: [GeoPoint]? = nil) {
        self.commonName = commonName
        self.geoPoints = geoPoints
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        commonName = jsonDictionary.json(atKeyPath: "commonName")
        geoPoints = jsonDictionary.json(atKeyPath: "geoPoints")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let commonName = commonName {
            dictionary["commonName"] = commonName
        }
        if let geoPoints = geoPoints?.encode() {
            dictionary["geoPoints"] = geoPoints
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
