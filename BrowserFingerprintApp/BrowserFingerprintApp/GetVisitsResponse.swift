//
//  GetVisitsResponse.swift
//  BrowserFingerprintApp
//
//  Created by Margels on 16/02/24.
//

import Foundation
import UIKit
import FingerprintPro

struct GetVisitsResponse: Decodable {
    let visitorId: String
    let visits: [VisitsModel]?
}

struct VisitsModel: Decodable {
    let requestId: String
    let browserDetails: BrowserDetailModel
    let incognito: Bool
    let ip: String
    let time: String
    let url: String
    let confidence: ConfidenceModel
    let visitorFound: Bool
    let firstSeenAt: SeenAtResponseModel?
    let lastSeenAt: SeenAtResponseModel?
}

struct BrowserDetailModel: Decodable {
    let browserName: String?
    let browserMajorVersion: String?
    let browserFullVersion: String?
    let os: String?
    let osVersion: String?
    let device: String?
    let userAgent: String?
}

struct ConfidenceModel: Decodable {
    let score: Double
}

struct SeenAtResponseModel: Decodable {
    let global: String?
    let subscription: String?
}
