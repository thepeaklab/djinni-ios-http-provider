//
//  Method.swift
//  DjinniHTTProvider
//
//  Created by Christoph Pageler on 16.09.19.
//


import Foundation


public enum Method {

    case get
    case head
    case post
    case put
    case delete
    case connect
    case options
    case trace
    case patch

    public func stringValue() -> String {
        switch self {
        case .get: return "GET"
        case .head: return "HEAD"
        case .post: return "POST"
        case .put: return "PUT"
        case .delete: return "DELETE"
        case .connect: return "CONNECT"
        case .options: return "OPTIONS"
        case .trace: return "TRACE"
        case .patch: return "PATCH"
        }
    }

}
