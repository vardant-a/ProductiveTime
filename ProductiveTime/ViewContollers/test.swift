//
//  test.swift
//  ProductiveTime
//
//  Created by Алексей on 21.10.2022.
//

import SwiftUI

final class TestView: UIViewController {
    
//    private lazy var customStackView = UIStackView()
    private lazy var testStackView = CustomStackVIEW()
    
//    private lazy var orLabel: UILabel = {
//       let label = UILabel()
//        label.text = "OR"
//        label.textColor = .gray
//        return label
//    }()
//
//    private lazy var lineView: UIView = {
//        let view = UIView()
//        view.backgroundColor = .gray
//        return view
//    }()
//    private lazy var secondLineView: UIView = {
//        let view = UIView()
//        view.backgroundColor = .gray
//        return view
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        getStackView()
        
        view.addSubview(testStackView)

        NSLayoutConstraint.activate([
            testStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            testStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            testStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            testStackView.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
}

//extension TestView {
//    private func getStackView() {
//
//        customStackView.addArrangedSubview(lineView)
//        customStackView.addArrangedSubview(orLabel)
//        customStackView.addArrangedSubview(secondLineView)
//
//        view.addSubview(customStackView)
//
//        customStackView.axis = .horizontal
//        customStackView.distribution = .fillEqually
//        customStackView.spacing = 16.0
//        customStackView.alignment = .fill
//
//        setConstraintsStack()
//
//    }
//
//    private func setConstraintsStack() {
//        customStackView.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            customStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            customStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            customStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
//            customStackView.heightAnchor.constraint(equalToConstant: 40)
//        ])
//
//        orLabel.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            orLabel.heightAnchor.constraint(equalToConstant: 30)
//        ])
//
//        lineView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            lineView.heightAnchor.constraint(equalToConstant: 10)
//        ])
//
//    }
//}


struct test_Provider: PreviewProvider {
    static var previews: some View {
        TestView().showPreview()
    }
}


class CustomStackVIEW: UIStackView {
    
    private lazy var orLabel: UILabel = {
       let label = UILabel()
        label.text = "OR"
        label.textColor = .gray
        return label
    }()
    
    private lazy var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    private lazy var line2View: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupStack()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupStack()
    }
    
    private func setupStack() {
        self.addArrangedSubview(lineView)
        self.addArrangedSubview(orLabel)
        self.addArrangedSubview(line2View)
        
        
        self.axis = .horizontal
        self.distribution = .fillEqually
        self.spacing = 16.0
        self.alignment = .fill
        
        setConstraintsStack()
    }
    
    private func setConstraintsStack() {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        orLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            orLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        lineView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lineView.heightAnchor.constraint(equalToConstant: 10),
            lineView.widthAnchor.constraint(equalToConstant: 200)
        ])

    }
}
