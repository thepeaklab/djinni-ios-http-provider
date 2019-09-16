//
//  PerformResult.swift
//  DjinniHTTProvider
//
//  Created by Christoph Pageler on 16.09.19.
//


import Foundation


public class PerformResult {

    public let response: Response?
    public let errorCode: ErrorCode?

    public init(response: Response?, errorCode: ErrorCode?) {
        self.response = response
        self.errorCode = errorCode
    }

}
