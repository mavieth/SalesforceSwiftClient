//
// SFLocalizationsLocalizedTextsModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public struct SFLocalizationsLocalizedTextsModel: Codable {
  public var _id: Int?
  public var text: String?
  public var code: String?

  public init(_id: Int?, text: String?, code: String?) {
    self._id = _id
    self.text = text
    self.code = code
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case text
    case code
  }
}
