//
//  SecondViewController.swift
//  ProductiveTime
//
//  Created by Алексей on 08.10.2022.
//

import SwiftUI

final class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
    }
}

struct SecondVC_Provider: PreviewProvider {
    static var previews: some View {
        SecondViewController().showPreview()
    }
}
