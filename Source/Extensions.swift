//
//  Extensions.swift
//  Hasura
//
//  Created by Jaison on 14/07/17.
//  Copyright © 2017 Hasura. All rights reserved.
//

import Foundation

extension String {
    static func +(left: String, right: Int) -> String {
        return "\(left)\(right)"
    }
}

extension Error {
    func getHasuraError() -> HasuraError {
        return HasuraError.unknown()
    }
}

extension Data {
    func toJsonString() -> String {
        guard let jsonString = String(data: self, encoding: .utf8) else {
            return "No JSON string for this data"
        }
        return jsonString
    }
}
