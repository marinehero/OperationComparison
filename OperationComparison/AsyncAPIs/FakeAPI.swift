//
//  FakeAPI.swift
//  OperationComparison
//
//  Created by Ellen Shapiro on 10/10/18.
//  Copyright © 2018 Bakken & Baeck. All rights reserved.
//

import UIKit

struct FakeAPI {
    
    static func fetchUser(completion: @escaping (Result<User>) -> Void) {
        pretendWereGoingToTheInternet(for: 1.5) {
            completion(.success(User.fakeUser))
        }
    }

    private static func pretendWereGoingToTheInternet(for seconds: TimeInterval, completion: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: completion)
    }

}
