//
// SFInlineResponse2009Model.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public struct SFInlineResponse2009Model: Codable {
  public var _id: Int?
  public var name: String
  public var code: String

  public init(_id: Int?, name: String, code: String) {
    self._id = _id
    self.name = name
    self.code = code
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case name
    case code
  }
}
