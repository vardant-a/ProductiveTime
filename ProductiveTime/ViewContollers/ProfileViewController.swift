//
//  ProfileViewController.swift
//  ProductiveTime
//
//  Created by Алексей on 08.10.2022.
//

import SwiftUI

final class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        title = "Profile"
    }
}

struct SecondVC_Provider: PreviewProvider {
    static var previews: some View {
        ProfileViewController().showPreview()
    }
}
