//
//  PhoneNumberParser.swift
//  phonenumbers
//
//  Created by Matt McMurry on 7/31/23.
//

import Foundation

struct PhoneNumber {
    let twoLetterCountryCode: String //example US
    let countryCode: String //example +1
    let flag: String //example: 🇺🇸
    var e164Formatted: String
    var internationalFormatted: String
}

class PhoneNumberParser {
    static func parsePhoneNumberInput(input: String) throws -> PhoneNumber {
        //use Apple's RegexBuilder
    }
}
