//
// IncidentsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class IncidentsAPI {
    /**

     - parameter _id: (path) Incident id 
     - parameter locale: (query) Two-letter language code (ISO 639-1)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getIncidentById(_id: String, locale: String? = nil, completion: @escaping ((_ data: SFInlineResponse2001Model?,_ error: Error?) -> Void)) {
        getIncidentByIdWithRequestBuilder(_id: _id, locale: locale).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /incidents/{id}
     - Returns an Incident based on Id.
     - examples: [{contentType=application/json, example={
  "createdAt" : "createdAt",
  "serviceKeys" : [ "serviceKeys", "serviceKeys" ],
  "IncidentEvents" : [ {
    "createdAt" : "createdAt",
    "id" : 1,
    "type" : "type",
    "message" : "message",
    "updatedAt" : "updatedAt"
  }, {
    "createdAt" : "createdAt",
    "id" : 1,
    "type" : "type",
    "message" : "message",
    "updatedAt" : "updatedAt"
  } ],
  "isCore" : true,
  "instanceKeys" : [ "instanceKeys", "instanceKeys" ],
  "id" : 0,
  "affectsAll" : true,
  "IncidentImpacts" : [ {
    "createdAt" : "createdAt",
    "startTime" : "startTime",
    "id" : 6,
    "serviceIssue" : "serviceIssue",
    "endUserImpact" : "endUserImpact",
    "type" : "type",
    "updatedAt" : "updatedAt"
  }, {
    "createdAt" : "createdAt",
    "startTime" : "startTime",
    "id" : 6,
    "serviceIssue" : "serviceIssue",
    "endUserImpact" : "endUserImpact",
    "type" : "type",
    "updatedAt" : "updatedAt"
  } ],
  "updatedAt" : "updatedAt"
}}]
     
     - parameter _id: (path) Incident id 
     - parameter locale: (query) Two-letter language code (ISO 639-1)  (optional)

     - returns: RequestBuilder<SFInlineResponse2001Model> 
     */
    open class func getIncidentByIdWithRequestBuilder(_id: String, locale: String? = nil) -> RequestBuilder<SFInlineResponse2001Model> {
        var path = "/incidents/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "locale": locale
        ])

        let requestBuilder: RequestBuilder<SFInlineResponse2001Model>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getIncidentEventTypes(locale: String? = nil, completion: @escaping ((_ data: [Any]?,_ error: Error?) -> Void)) {
        getIncidentEventTypesWithRequestBuilder(locale: locale).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /incidents/eventTypes
     - Returns an array of incident imapct type fields.
     - examples: [{contentType=application/json, example=[ "{}", "{}" ]}]
     
     - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)

     - returns: RequestBuilder<[Any]> 
     */
    open class func getIncidentEventTypesWithRequestBuilder(locale: String? = nil) -> RequestBuilder<[Any]> {
        let path = "/incidents/eventTypes"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "locale": locale
        ])

        let requestBuilder: RequestBuilder<[Any]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getIncidentFields(locale: String? = nil, completion: @escaping ((_ data: [Any]?,_ error: Error?) -> Void)) {
        getIncidentFieldsWithRequestBuilder(locale: locale).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /incidents/fields
     - Returns an array of Incident fields.
     - examples: [{contentType=application/json, example=[ "{}", "{}" ]}]
     
     - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)

     - returns: RequestBuilder<[Any]> 
     */
    open class func getIncidentFieldsWithRequestBuilder(locale: String? = nil) -> RequestBuilder<[Any]> {
        let path = "/incidents/fields"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "locale": locale
        ])

        let requestBuilder: RequestBuilder<[Any]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getIncidentImpactTypes(locale: String? = nil, completion: @escaping ((_ data: [Any]?,_ error: Error?) -> Void)) {
        getIncidentImpactTypesWithRequestBuilder(locale: locale).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /incidents/impactTypes
     - Returns an array of incident imapct type fields.
     - examples: [{contentType=application/json, example=[ "{}", "{}" ]}]
     
     - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)

     - returns: RequestBuilder<[Any]> 
     */
    open class func getIncidentImpactTypesWithRequestBuilder(locale: String? = nil) -> RequestBuilder<[Any]> {
        let path = "/incidents/impactTypes"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "locale": locale
        ])

        let requestBuilder: RequestBuilder<[Any]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter startTime: (query) Start time for Incidents to return (ISO 8601) (optional)
     - parameter service: (query) Filter by impacted Services (case insensitive) (optional)
     - parameter instance: (query) Filter by impacted Instances (case insensitive) (optional)
     - parameter limit: (query) Limit for pagination (optional, default to 10000)
     - parameter offset: (query) Offset for pagination (optional, default to 0)
     - parameter sort: (query) Sort by property (optional)
     - parameter order: (query) Ordering of property (optional)
     - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getIncidents(startTime: String? = nil, service: String? = nil, instance: String? = nil, limit: Double? = nil, offset: Double? = nil, sort: String? = nil, order: String? = nil, locale: String? = nil, completion: @escaping ((_ data: [Any]?,_ error: Error?) -> Void)) {
        getIncidentsWithRequestBuilder(startTime: startTime, service: service, instance: instance, limit: limit, offset: offset, sort: sort, order: order, locale: locale).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /incidents
     - Returns an array of Incident objects. Defaults to last 30 days.
     - examples: [{contentType=application/json, example=[ "{}", "{}" ]}]
     
     - parameter startTime: (query) Start time for Incidents to return (ISO 8601) (optional)
     - parameter service: (query) Filter by impacted Services (case insensitive) (optional)
     - parameter instance: (query) Filter by impacted Instances (case insensitive) (optional)
     - parameter limit: (query) Limit for pagination (optional, default to 10000)
     - parameter offset: (query) Offset for pagination (optional, default to 0)
     - parameter sort: (query) Sort by property (optional)
     - parameter order: (query) Ordering of property (optional)
     - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)

     - returns: RequestBuilder<[Any]> 
     */
    open class func getIncidentsWithRequestBuilder(startTime: String? = nil, service: String? = nil, instance: String? = nil, limit: Double? = nil, offset: Double? = nil, sort: String? = nil, order: String? = nil, locale: String? = nil) -> RequestBuilder<[Any]> {
        let path = "/incidents"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "startTime": startTime, 
            "service": service, 
            "instance": instance, 
            "limit": limit, 
            "offset": offset, 
            "sort": sort, 
            "order": order, 
            "locale": locale
        ])

        let requestBuilder: RequestBuilder<[Any]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}