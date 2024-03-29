//
// SFIncidentEventModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public struct SFIncidentEventModel: Codable {
  public var _id: Int?
  public var type: String
  public var message: String?
  public var createdAt: String?
  public var updatedAt: String?

  public init(_id: Int?, type: String, message: String?, createdAt: String?, updatedAt: String?) {
    self._id = _id
    self.type = type
    self.message = message
    self.createdAt = createdAt
    self.updatedAt = updatedAt
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case type
    case message
    case createdAt
    case updatedAt
  }
}
