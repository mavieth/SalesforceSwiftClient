//
// SFLoginActionModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public struct SFLoginActionModel: Codable {
  /** Email Address to Send Link to */
  public var emailAddress: String?

  public init(emailAddress: String?) {
    self.emailAddress = emailAddress
  }
}
