//
// SFBody4Model.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct SFBody4Model: Codable {

    public enum SFTypeModel: String, Codable { 
        case instance = "INSTANCE"
        case product = "PRODUCT"
        case all = "ALL"
    }
    public var type: SFTypeModel?
    public var instanceKey: String?
    public var allInstances: Bool?
    public var allNotifications: Bool?
    public var major: Bool?
    public var minor: Bool?
    public var maintenances: Bool?
    public var serviceSubscriptions: [SFSubscriberssubscriptionsidServiceSubscriptionsModel]?

    public init(type: SFTypeModel?, instanceKey: String?, allInstances: Bool?, allNotifications: Bool?, major: Bool?, minor: Bool?, maintenances: Bool?, serviceSubscriptions: [SFSubscriberssubscriptionsidServiceSubscriptionsModel]?) {
        self.type = type
        self.instanceKey = instanceKey
        self.allInstances = allInstances
        self.allNotifications = allNotifications
        self.major = major
        self.minor = minor
        self.maintenances = maintenances
        self.serviceSubscriptions = serviceSubscriptions
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case instanceKey
        case allInstances
        case allNotifications
        case major
        case minor
        case maintenances
        case serviceSubscriptions = "ServiceSubscriptions"
    }


}
