//
//  Response.swift
//  DjinniHTTProvider
//
//  Created by Christoph Pageler on 16.09.19.
//


import Foundation


public class Response {

    public let request: Request
    public let statusCode: Int16
    public let header: [String: String]
    public let body: Data

    public init(request: Request,
                statusCode: Int16,
                header: [String: String],
                body: Data) {
        self.request = request
        self.statusCode = statusCode
        self.header = header
        self.body = body
    }

}
