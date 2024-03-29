//
// SFTagModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public struct SFTagModel: Codable {
  public var _id: Int?
  public var value: String
  public var type: String
  public var instances: [SFInstanceModel]?

  public init(_id: Int?, value: String, type: String, instances: [SFInstanceModel]?) {
    self._id = _id
    self.value = value
    self.type = type
    self.instances = instances
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case value
    case type
    case instances = "Instances"
  }
}
