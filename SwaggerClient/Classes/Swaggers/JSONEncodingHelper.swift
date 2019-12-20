//
// JSONEncodingHelper.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import Foundation

open class JSONEncodingHelper {
  open class func encodingParameters<T: Encodable>(forEncodableObject encodableObj: T?) -> Parameters? {
    var params: Parameters?

    // Encode the Encodable object
    if let encodableObj = encodableObj {
      let encodeResult = CodableHelper.encode(encodableObj, prettyPrint: true)
      if encodeResult.error == nil {
        params = JSONDataEncoding.encodingParameters(jsonData: encodeResult.data)
      }
    }

    return params
  }

  open class func encodingParameters(forEncodableObject encodableObj: Any?) -> Parameters? {
    var params: Parameters?

    if let encodableObj = encodableObj {
      do {
        let data = try JSONSerialization.data(withJSONObject: encodableObj, options: .prettyPrinted)
        params = JSONDataEncoding.encodingParameters(jsonData: data)
      } catch {
        print(error)
        return nil
      }
    }

    return params
  }
}
