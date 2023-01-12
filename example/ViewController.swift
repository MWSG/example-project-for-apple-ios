//
//  ViewController.swift
//  example
//
//  Created by Stefan Nebel on 12.01.23.
//

import SnapKit
import UIKit

class ViewController: UIViewController {

  private let oneLineButton = UIButton()

  override func viewDidLoad() {
    super.viewDidLoad()

    setupView()
  }

  private func setupView() {
    // self
    view.backgroundColor = .systemGroupedBackground

    // oneLineButton
    view.addSubview(oneLineButton)
    oneLineButton.configuration = .plain()
    oneLineButton.titleLabel?.numberOfLines = 1
    oneLineButton.subtitleLabel?.numberOfLines = 1
    oneLineButton.setTitle(
      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua."
      , for: .normal
    )
    oneLineButton.snp.makeConstraints({
      $0.centerY.equalToSuperview()
      $0.trailing.leading.equalToSuperview()
    })
  }
}

