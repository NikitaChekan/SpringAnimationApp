//
//  DataManager.swift
//  SpringAnimationApp
//
//  Created by Nikita Chekan on 01.11.2022.
//

import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    
    let curves = AnimationPreset.allCases
    
    private init() {}
}
