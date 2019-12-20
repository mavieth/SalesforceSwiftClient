//
// SFServiceModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct SFServiceModel: Codable {

    public var key: String?
    /** Sets if service is a \&quot;core service\&quot; or not. */
    public var isCore: Bool?

    public init(key: String?, isCore: Bool?) {
        self.key = key
        self.isCore = isCore
    }


}
