//
// SFInlineResponse20010Model.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct SFInlineResponse20010Model: Codable {

    public var key: String?
    /** Sets if service is a \&quot;core service\&quot; or not. */
    public var isCore: Bool?

    public init(key: String?, isCore: Bool?) {
        self.key = key
        self.isCore = isCore
    }


}
