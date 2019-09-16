//
//  DjinniHTTProvider.swift
//  DjinniHTTProvider
//
//  Created by Christoph Pageler on 16.09.19.
//


import Foundation


public protocol DjinniHTTPProvider {

    func perform(_ request: Request) -> PerformResult

}

public extension DjinniHTTPProvider {

    func perform(_ request: Request) -> PerformResult {
        let urlRequest = NSMutableURLRequest(url: URL(string: request.url)!)
        urlRequest.httpMethod = request.method.stringValue()
        urlRequest.allHTTPHeaderFields = request.header
        urlRequest.httpBody = request.body

        var result = PerformResult(response: nil, errorCode: .ok)

        let dispatchGroup = DispatchGroup()
        dispatchGroup.enter()
        URLSession.shared.dataTask(with: (urlRequest as URLRequest)) { (data, response, error) in
            guard let httpResponse = response as? HTTPURLResponse else {
                result = PerformResult(response: nil, errorCode: .parsingError)
                return
            }

            let headerSequence = httpResponse.allHeaderFields.compactMap({ (key, value) -> (String, String)? in
                guard let keyString = key as? String, let valueString = value as? String else { return nil }
                return (keyString, valueString)
            })
            let stringHeaders = Dictionary(uniqueKeysWithValues: headerSequence)
            let response = Response(request: request,
                                    statusCode: Int16(httpResponse.statusCode),
                                    header: stringHeaders,
                                    body: data!)
            result = PerformResult(response: response, errorCode: .ok)

            dispatchGroup.leave()
        }.resume()
        dispatchGroup.wait()

        return result
    }

}
