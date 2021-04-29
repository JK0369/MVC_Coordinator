//
//  SecondViewController.swift
//  SampleMVC
//
//  Created by 김종권 on 2021/04/29.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {

    weak var coordinator: FirstControllerDelegate?

    private lazy var label: UILabel = {
        let l = UILabel()
        view.addSubview(l)
        l.snp.makeConstraints { (m) in
            m.centerY.centerX.equalTo(view)
        }
        return l
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        label.text = "secondViewController"
        view.backgroundColor = .white
    }
}
