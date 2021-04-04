//
//  ViewController.swift
//  SampleProject
//
//  Created by Hyunho Park on 2021/03/23.
//

import UIKit
import SnapKit
import FLEX
import CocoaLumberjack

class ViewController: UIViewController {
    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello, world!"
        label.textColor = .red
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DDLog.add(DDOSLogger.sharedInstance)
        LogDebug(">>> viewDidLoad")
        
        view.backgroundColor = .white
        
        view.addSubview(textLabel)
        textLabel.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalTo(100)
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        FLEXManager.shared.showExplorer()
    }
}
