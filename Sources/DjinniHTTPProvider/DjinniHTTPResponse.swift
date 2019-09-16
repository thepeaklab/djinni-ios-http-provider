//
//  DjinniHTTPResponse.swift
//  DjinniHTTProvider
//
//  Created by Christoph Pageler on 16.09.19.
//


import Foundation


public class DjinniHTTPResponse {

    public let request: DjinniHTTPRequest
    public let statusCode: Int16
    public let header: [String: String]
    public let body: Data

    public init(request: DjinniHTTPRequest,
                statusCode: Int16,
                header: [String: String],
                body: Data) {
        self.request = request
        self.statusCode = statusCode
        self.header = header
        self.body = body
    }

}
