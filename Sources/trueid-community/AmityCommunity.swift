//
//  File.swift
//  
//
//  Created by Surasit Intawong on 26/8/2564 BE.
//

import Foundation
import SwiftyJSON
import Alamofire
import AmitySDK
import AmityUIKit

public class AmityCommunity {
    public static let shared = AmityCommunity()
    private var client: AmityClient?
    private init() {
        client = AmityClient(apiKey: "b0eceb5e68ddf36545308f4e000b12dcd90985e2bf3d6a2e")
        
        client?.registerDevice(withUserId: "21999389", displayName: "Benzzz", authToken: nil, completion: nil)
        AmityUIKitManager.setup(apiKey: "b0eceb5e68ddf36545308f4e000b12dcd90985e2bf3d6a2e")
        AmityUIKitManager.registerDevice(withUserId: "21999389", displayName: "Benzzz", authToken: nil)
    }
    
    public func openCommunity(viewController: UIViewController?) {
        let homePageViewController = AmityCommunityHomePageViewController.make()

        // present
        let navigationController = UINavigationController(rootViewController: homePageViewController)
        viewController?.present(navigationController, animated: true, completion: nil)
    }
    
    public func setDisplayName(name: String?) {
        let amityBuilder = AmityUserUpdateBuilder()
        amityBuilder.setDisplayName(name)
        client?.updateUser(amityBuilder, completion: nil)
    }
}
