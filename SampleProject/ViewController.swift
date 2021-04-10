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
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Asset.appstore.image
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DDLog.add(DDOSLogger.sharedInstance)
        LogDebug(">>> viewDidLoad")
        
        AppUserDefaults.launchCount += 1
        LogDebug(">>> launchCount: \(AppUserDefaults.launchCount)")
        
        view.backgroundColor = .white
        
        view.addSubview(textLabel)
        textLabel.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalTo(100)
        }
        
        view.addSubview(imageView)
        imageView.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.width.height.equalTo(50)
            make.bottom.equalToSuperview().offset(-100)
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        FLEXManager.shared.showExplorer()
    }
}
