//
// SFInlineResponse20016Model.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public struct SFInlineResponse20016Model: Codable {
  public var key: String
  public var tags: [SFTagModel]?

  public init(key: String, tags: [SFTagModel]?) {
    self.key = key
    self.tags = tags
  }

  public enum CodingKeys: String, CodingKey {
    case key
    case tags = "Tags"
  }
}
