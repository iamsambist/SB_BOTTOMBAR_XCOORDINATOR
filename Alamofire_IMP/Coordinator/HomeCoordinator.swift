//
//  HomeCoordinator.swift
//  Alamofire_IMP
//
//  Created by MacBook Two on 23/12/2024.
//

import XCoordinator

enum HomeRoutes : Route{
    case screen1
}

class HomeCoordinator : NavigationCoordinator<HomeRoutes>{
    init(){
        super.init(initialRoute: .screen1)
    }
    
    override func prepareTransition(for route: HomeRoutes) -> NavigationTransition {
        switch route {
        case .screen1:
            let viewController = HomeViewController()
            return .push(viewController)
        }
    }
}
