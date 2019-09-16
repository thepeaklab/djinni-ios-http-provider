//
//  DjinniHTTPPerformResult.swift
//  DjinniHTTProvider
//
//  Created by Christoph Pageler on 16.09.19.
//


import Foundation


public class DjinniHTTPPerformResult {

    public let response: DjinniHTTPResponse?
    public let errorCode: DjinniHTTPErrorCode

    public init(response: DjinniHTTPResponse?, errorCode: DjinniHTTPErrorCode) {
        self.response = response
        self.errorCode = errorCode
    }

}
