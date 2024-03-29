//
// InstancesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import Foundation

open class InstancesAPI {
  /**

   - parameter key: (path) Instance Alias Key
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getInstanceAliasByKey(key: String, completion: @escaping ((_ data: SFInlineResponse20012Model?, _ error: Error?) -> Void)) {
    getInstanceAliasByKeyWithRequestBuilder(key: key).execute { (response, error) -> Void in
      completion(response?.body, error)
    }
  }

  /**
      - GET /instanceAliases/{key}
      - Get Instance Alias
      - examples: [{contentType=application/json, example={
   "aliasType" : "aliasType",
   "key" : "key",
   "instanceKey" : "instanceKey"
   }}]

      - parameter key: (path) Instance Alias Key

      - returns: RequestBuilder<SFInlineResponse20012Model>
   */
  open class func getInstanceAliasByKeyWithRequestBuilder(key: String) -> RequestBuilder<SFInlineResponse20012Model> {
    var path = "/instanceAliases/{key}"
    let keyPreEscape = "\(key)"
    let keyPostEscape = keyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{key}", with: keyPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil

    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<SFInlineResponse20012Model>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**

   - parameter products: (query) Filter by parent product (optional)
   - parameter childProducts: (query) Include nested products. products must be set. (optional, default to false)
   - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getInstanceStatusPreview(products: String? = nil, childProducts: Bool? = nil, locale: String? = nil, completion: @escaping ((_ data: [Any]?, _ error: Error?) -> Void)) {
    getInstanceStatusPreviewWithRequestBuilder(products: products, childProducts: childProducts, locale: locale).execute { (response, error) -> Void in
      completion(response?.body, error)
    }
  }

  /**
   - GET /instances/status/preview
   - Return all instances and associated incidents, maintenances, and general messages. For each instance returns a state enum indicating the most severe ongoing event, and if it effects a core service.  Status Enums * OK * MAJOR_INCIDENT_CORE * MINOR_INCIDENT_CORE * MAINTENANCE_CORE * MAJOR_INCIDENT_NONCORE * MINOR_INCIDENT_NONCORE * MAINTENANCE_NONCORE
   - examples: [{contentType=application/json, example=[ "{}", "{}" ]}]

   - parameter products: (query) Filter by parent product (optional)
   - parameter childProducts: (query) Include nested products. products must be set. (optional, default to false)
   - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)

   - returns: RequestBuilder<[Any]>
   */
  open class func getInstanceStatusPreviewWithRequestBuilder(products: String? = nil, childProducts: Bool? = nil, locale: String? = nil) -> RequestBuilder<[Any]> {
    let path = "/instances/status/preview"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil

    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "products": products,
      "childProducts": childProducts,
      "locale": locale
    ])

    let requestBuilder: RequestBuilder<[Any]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**

   - parameter key: (path) Instance Key
   - parameter productKey: (query) Filter by parent product (optional)
   - parameter childProducts: (query) Include nested products. productKey must be set. (optional, default to false)
   - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getInstanceStatusPreviewByKey(key: String, productKey: String? = nil, childProducts: Bool? = nil, locale: String? = nil, completion: @escaping ((_ data: [Any]?, _ error: Error?) -> Void)) {
    getInstanceStatusPreviewByKeyWithRequestBuilder(key: key, productKey: productKey, childProducts: childProducts, locale: locale).execute { (response, error) -> Void in
      completion(response?.body, error)
    }
  }

  /**
   - GET /instances/{key}/status/preview
   - Rerurn an instance with associated incidents, maintenances, and general messages. For a given instance returns a state enum indicating the most severe ongoing event, and if it effects a core service.  Status Enums * OK * MAJOR_INCIDENT_CORE * MINOR_INCIDENT_CORE * MAINTENANCE_CORE * MAJOR_INCIDENT_NONCORE * MINOR_INCIDENT_NONCORE * MAINTENANCE_NONCORE
   - examples: [{contentType=application/json, example=[ "{}", "{}" ]}]

   - parameter key: (path) Instance Key
   - parameter productKey: (query) Filter by parent product (optional)
   - parameter childProducts: (query) Include nested products. productKey must be set. (optional, default to false)
   - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)

   - returns: RequestBuilder<[Any]>
   */
  open class func getInstanceStatusPreviewByKeyWithRequestBuilder(key: String, productKey: String? = nil, childProducts: Bool? = nil, locale: String? = nil) -> RequestBuilder<[Any]> {
    var path = "/instances/{key}/status/preview"
    let keyPreEscape = "\(key)"
    let keyPostEscape = keyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{key}", with: keyPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil

    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "productKey": productKey,
      "childProducts": childProducts,
      "locale": locale
    ])

    let requestBuilder: RequestBuilder<[Any]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**

   - parameter key: (path) Instance Key
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getInstanceStatusbyAlias(key: String, completion: @escaping ((_ data: [Any]?, _ error: Error?) -> Void)) {
    getInstanceStatusbyAliasWithRequestBuilder(key: key).execute { (response, error) -> Void in
      completion(response?.body, error)
    }
  }

  /**
   - GET /instanceAliases/{key}/status
   - Return an by instance with associated incidents, maintenances, and general messages. Returns a state enum indicating the most severe ongoing event, and if it effects a core service.  Status Enums: * OK * MAJOR_INCIDENT_CORE * MINOR_INCIDENT_CORE * MAINTENANCE_CORE * MAJOR_INCIDENT_NONCORE * MINOR_INCIDENT_NONCORE * MAINTENANCE_NONCORE
   - examples: [{contentType=application/json, example=[ "{}", "{}" ]}]

   - parameter key: (path) Instance Key

   - returns: RequestBuilder<[Any]>
   */
  open class func getInstanceStatusbyAliasWithRequestBuilder(key: String) -> RequestBuilder<[Any]> {
    var path = "/instanceAliases/{key}/status"
    let keyPreEscape = "\(key)"
    let keyPostEscape = keyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{key}", with: keyPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil

    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<[Any]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**

   - parameter key: (path) Instance Key
   - parameter productKey: (query) Filter by parent product (optional)
   - parameter childProducts: (query) Include nested products. productKey must be set. (optional, default to false)
   - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getInstanceStatusbyKey(key: String, productKey: String? = nil, childProducts: Bool? = nil, locale: String? = nil, completion: @escaping ((_ data: [Any]?, _ error: Error?) -> Void)) {
    getInstanceStatusbyKeyWithRequestBuilder(key: key, productKey: productKey, childProducts: childProducts, locale: locale).execute { (response, error) -> Void in
      completion(response?.body, error)
    }
  }

  /**
   - GET /instances/{key}/status
   - Return an by instance with associated incidents, maintenances, and general messages. Returns a state enum indicating the most severe ongoing event, and if it effects a core service.  Status Enums: * OK * MAJOR_INCIDENT_CORE * MINOR_INCIDENT_CORE * MAINTENANCE_CORE * MAJOR_INCIDENT_NONCORE * MINOR_INCIDENT_NONCORE * MAINTENANCE_NONCORE
   - examples: [{contentType=application/json, example=[ "{}", "{}" ]}]

   - parameter key: (path) Instance Key
   - parameter productKey: (query) Filter by parent product (optional)
   - parameter childProducts: (query) Include nested products. productKey must be set. (optional, default to false)
   - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)

   - returns: RequestBuilder<[Any]>
   */
  open class func getInstanceStatusbyKeyWithRequestBuilder(key: String, productKey: String? = nil, childProducts: Bool? = nil, locale: String? = nil) -> RequestBuilder<[Any]> {
    var path = "/instances/{key}/status"
    let keyPreEscape = "\(key)"
    let keyPostEscape = keyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{key}", with: keyPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil

    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "productKey": productKey,
      "childProducts": childProducts,
      "locale": locale
    ])

    let requestBuilder: RequestBuilder<[Any]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**

   - parameter products: (query) Filter by parent product (optional)
   - parameter childProducts: (query) Include nested products. products must be set. (optional, default to false)
   - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getInstanceStatuses(products: String? = nil, childProducts: Bool? = nil, locale: String? = nil, completion: @escaping ((_ data: [Any]?, _ error: Error?) -> Void)) {
    getInstanceStatusesWithRequestBuilder(products: products, childProducts: childProducts, locale: locale).execute { (response, error) -> Void in
      completion(response?.body, error)
    }
  }

  /**
   - GET /instances/status
   - DEPRECATED WARNING ROUTE WILL BE REMOVED Use /instance/status/preview for overall current status and currently ongoing incidents, maintenances, and general messages. Use /instances/{key}/status for current status and recent history of incidents, maintenances, and general messages for sepcific instance  Return all instances and associated incidents
   - examples: [{contentType=application/json, example=[ "{}", "{}" ]}]

   - parameter products: (query) Filter by parent product (optional)
   - parameter childProducts: (query) Include nested products. products must be set. (optional, default to false)
   - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)

   - returns: RequestBuilder<[Any]>
   */
  open class func getInstanceStatusesWithRequestBuilder(products: String? = nil, childProducts: Bool? = nil, locale: String? = nil) -> RequestBuilder<[Any]> {
    let path = "/instances/status"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil

    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "products": products,
      "childProducts": childProducts,
      "locale": locale
    ])

    let requestBuilder: RequestBuilder<[Any]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**

   - parameter sort: (query) Sort by property (optional)
   - parameter order: (query) Ordering of property (optional)
   - parameter products: (query) Filter by parent product (optional)
   - parameter tags: (query) Filter by tag ids (optional)
   - parameter childProducts: (query) Include nested products. products must be set. (optional, default to false)
   - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getInstances(sort: String? = nil, order: String? = nil, products: String? = nil, tags: [Int]? = nil, childProducts: Bool? = nil, locale: String? = nil, completion: @escaping ((_ data: [SFInstanceModel]?, _ error: Error?) -> Void)) {
    getInstancesWithRequestBuilder(sort: sort, order: order, products: products, tags: tags, childProducts: childProducts, locale: locale).execute { (response, error) -> Void in
      completion(response?.body, error)
    }
  }

  /**
      - GET /instances
      - Return all locales
      - examples: [{contentType=application/json, example=[ {
   "environment" : "environment",
   "serviceKeys" : [ "serviceKeys", "serviceKeys" ],
   "releaseVersion" : "releaseVersion",
   "location" : "location",
   "releaseNumber" : "releaseNumber",
   "isActive" : true,
   "key" : "key",
   "tags" : [ {
     "Instances" : [ null, null ],
     "id" : 0,
     "type" : "type",
     "value" : "value"
   }, {
     "Instances" : [ null, null ],
     "id" : 0,
     "type" : "type",
     "value" : "value"
   } ]
   }, {
   "environment" : "environment",
   "serviceKeys" : [ "serviceKeys", "serviceKeys" ],
   "releaseVersion" : "releaseVersion",
   "location" : "location",
   "releaseNumber" : "releaseNumber",
   "isActive" : true,
   "key" : "key",
   "tags" : [ {
     "Instances" : [ null, null ],
     "id" : 0,
     "type" : "type",
     "value" : "value"
   }, {
     "Instances" : [ null, null ],
     "id" : 0,
     "type" : "type",
     "value" : "value"
   } ]
   } ]}]

      - parameter sort: (query) Sort by property (optional)
      - parameter order: (query) Ordering of property (optional)
      - parameter products: (query) Filter by parent product (optional)
      - parameter tags: (query) Filter by tag ids (optional)
      - parameter childProducts: (query) Include nested products. products must be set. (optional, default to false)
      - parameter locale: (query) Two-letter language code ISO 639-1 code. If objects in response have any associated Localizations, the objects will also return fields with localized text. Depending on internal configuration, a default may be set.  (optional)

      - returns: RequestBuilder<[SFInstanceModel]>
   */
  open class func getInstancesWithRequestBuilder(sort: String? = nil, order: String? = nil, products: String? = nil, tags: [Int]? = nil, childProducts: Bool? = nil, locale: String? = nil) -> RequestBuilder<[SFInstanceModel]> {
    let path = "/instances"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil

    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "sort": sort,
      "order": order,
      "products": products,
      "tags": tags,
      "childProducts": childProducts,
      "locale": locale
    ])

    let requestBuilder: RequestBuilder<[SFInstanceModel]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }
}
