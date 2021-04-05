//
//  AppUserDefaults.swift
//  SampleProject
//
//  Created by Hyunho Park on 2021/04/04.
//

import SwiftyUserDefaults

extension DefaultsKeys {
    var launchCount: DefaultsKey<Int> { .init("launchCount", defaultValue: 0) }
}

class AppUserDefaults: NSObject {
    static var launchCount: Int {
        get { return Defaults.launchCount }
        set { Defaults.launchCount = newValue }
    }
}
