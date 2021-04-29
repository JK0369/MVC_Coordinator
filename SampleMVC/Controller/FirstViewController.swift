//
//  FirstViewController.swift
//  SampleMVC
//
//  Created by 김종권 on 2021/04/29.
//

import UIKit
import SnapKit

class FirstViewController: UIViewController {

    weak var coordinator: FirstControllerDelegate?

    lazy var label: UILabel = {
        let l = UILabel()
        view.addSubview(l)
        l.snp.makeConstraints { (m) in
            m.centerX.centerY.equalTo(view)
        }
        return l
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.backgroundColor = .white
        label.text = "firstViewController"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .play, target: self, action: #selector(tapAddButton))
    }

    @objc private func tapAddButton() {
        coordinator?.onAction()
    }

}
