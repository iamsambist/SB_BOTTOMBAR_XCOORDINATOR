//
//  DetailCoordinator.swift
//  Alamofire_IMP
//
//  Created by MacBook Two on 23/12/2024.
//

import Foundation
import XCoordinator

enum DetailRoute : Route{
    case screen2
}

class DetailCoordinator : NavigationCoordinator<DetailRoute>{
    init(){
        super.init(initialRoute: .screen2)
    }
    override func prepareTransition(for route: DetailRoute) -> NavigationTransition {
        switch route {
        case .screen2:
            let detailViewController = DetailViewController()
            return .push(detailViewController)
        }
    }
}
