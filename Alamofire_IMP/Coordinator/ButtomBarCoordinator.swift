////
////  ButtomBarCoordinator.swift
////  Alamofire_IMP
////
////  Created by MacBook Two on 23/12/2024.
////       


import Foundation
import XCoordinator

enum TabRoutes: Route {
    case home
    case detail
}

class ButtomBarCoordinator: TabBarCoordinator<TabRoutes> {

    // MARK: - Stored Properties
    private let homeRouter: StrongRouter<HomeRoutes>
    private let detailRouter: StrongRouter<DetailRoute>

    // Convenience initializer
    convenience init() {
        // Initialize child coordinators
        let tab1 = HomeCoordinator()
        tab1.rootViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .recents, tag: 0)

        let tab2 = DetailCoordinator()
        tab2.rootViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)

        // Pass the strong routers to the designated initializer
        self.init(homeRouter: tab1.strongRouter, detailsRouter: tab2.strongRouter)
    }

    // Designated initializer
    init(homeRouter: StrongRouter<HomeRoutes>, detailsRouter: StrongRouter<DetailRoute>) {
        self.homeRouter = homeRouter
        self.detailRouter = detailsRouter
        
        let tabs = [homeRouter.viewController,detailsRouter.viewController] as [Presentable]
        super.init(tabs: tabs, select: homeRouter)
    }

    // Route handling
    override func prepareTransition(for route: TabRoutes) -> TabBarTransition {
        switch route {
        case .home:
            return .select(index: 0)
        case .detail:
            return .select(index: 1)
        }
    }
}

