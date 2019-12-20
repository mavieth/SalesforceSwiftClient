//
// SFIncidentPostModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public struct SFIncidentPostModel: Codable {
  public var affectsAll: Bool?
  public var serviceKeys: [String]?
  public var instanceKeys: [String]?
  public var incidentImpacts: [SFIncidentsIncidentImpactsModel]
  public var incidentEvents: [SFIncidentsIncidentEventsModel]?

  public init(affectsAll: Bool?, serviceKeys: [String]?, instanceKeys: [String]?, incidentImpacts: [SFIncidentsIncidentImpactsModel], incidentEvents: [SFIncidentsIncidentEventsModel]?) {
    self.affectsAll = affectsAll
    self.serviceKeys = serviceKeys
    self.instanceKeys = instanceKeys
    self.incidentImpacts = incidentImpacts
    self.incidentEvents = incidentEvents
  }

  public enum CodingKeys: String, CodingKey {
    case affectsAll
    case serviceKeys
    case instanceKeys
    case incidentImpacts = "IncidentImpacts"
    case incidentEvents = "IncidentEvents"
  }
}
