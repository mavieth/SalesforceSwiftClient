//
// SFInlineResponse2007Model.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public struct SFInlineResponse2007Model: Codable {
  public var _id: Int?
  public var subject: String?
  public var body: String?
  public var startDate: String?

  public init(_id: Int?, subject: String?, body: String?, startDate: String?) {
    self._id = _id
    self.subject = subject
    self.body = body
    self.startDate = startDate
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case subject
    case body
    case startDate
  }
}
