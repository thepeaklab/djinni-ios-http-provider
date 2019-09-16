//
//  DjinniHTTPRequest.swift
//  DjinniHTTProvider
//
//  Created by Christoph Pageler on 16.09.19.
//


import Foundation


public class DjinniHTTPRequest {

    public let method: DjinniHTTPMethod
    public let url: String
    public let header: [String: String]
    public let body: Data

    public init(method: DjinniHTTPMethod,
                url: String,
                header: [String: String],
                body: Data) {
        self.method = method
        self.url = url
        self.header = header
        self.body = body
    }

}
