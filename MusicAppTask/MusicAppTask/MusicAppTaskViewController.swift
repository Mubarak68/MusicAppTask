//
//  ViewController.swift
//  MusicAppTask
//
//  Created by Mubarak Aloraifan on 28/02/2024.
//

import UIKit
import SnapKit

class MusicAppTaskViewController: UIViewController {
    
    let backgroundImageView = UIImageView()
    let blurEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
        let albumCoverImageView = UIImageView()
        let songNameLabel = UILabel()
        let artistLabel = UILabel()
        let slider = UISlider()
        let startTimeLabel = UILabel()
        let remainingTimeLabel = UILabel()
        let playButton = UIButton()
        let rewButton = UIButton()
        let prevButton = UIButton()

        override func viewDidLoad() {
            super.viewDidLoad()
            setupUI()
            setupConstraints()
        }

        func setupUI() {
           
            setupBackground()
            setupAlbumImageView()
            setupLabels()
            setupProgressBar()
            setupControlButtons()
        }

        func setupBackground() {
            view.addSubview(backgroundImageView)
            backgroundImageView.contentMode = .scaleAspectFill
            backgroundImageView.image = UIImage(named: "mohammedabdu")
            
            backgroundImageView.addSubview(blurEffectView)
            blurEffectView.snp.makeConstraints { make in
                make.edges.equalToSuperview()
            }
        }

        func setupAlbumImageView() {
            view.addSubview(albumCoverImageView)
            albumCoverImageView.contentMode = .scaleAspectFill
            albumCoverImageView.image = UIImage(named: "mohammedabdu")
        }

        func setupLabels() {
            view.addSubview(songNameLabel)
            songNameLabel.text = "انشودة المطر"
            songNameLabel.textAlignment = .center
            songNameLabel.font = UIFont.boldSystemFont(ofSize: 24)

            view.addSubview(artistLabel)
            artistLabel.text = "Mohammed Abdu"
            artistLabel.textAlignment = .center
            artistLabel.font = UIFont.systemFont(ofSize: 18)
        }

        func setupProgressBar() {
            view.addSubview(slider)
            slider.snp.makeConstraints { make in
                make.top.equalTo(artistLabel.snp.bottom).offset(20)
                make.left.right.equalToSuperview().inset(20)
            }

            view.addSubview(startTimeLabel)
            startTimeLabel.text = "0:00"

            view.addSubview(remainingTimeLabel)
            remainingTimeLabel.text = "-35:17"
        }

        func setupControlButtons() {
            view.addSubview(playButton)
            playButton.setImage(UIImage(systemName: "play.rectangle"), for: .normal)

            view.addSubview(rewButton)
            rewButton.setImage(UIImage(systemName: "forward.circle"), for: .normal)

            view.addSubview(prevButton)
            prevButton.setImage(UIImage(systemName: "backward.circle"), for: .normal)
        }

        func setupConstraints() {
            backgroundImageView.snp.makeConstraints { make in
                make.edges.equalToSuperview()
            }

            albumCoverImageView.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.centerY.equalToSuperview().offset(-100)
                make.width.equalToSuperview().multipliedBy(0.5)
                make.height.equalTo(albumCoverImageView.snp.width)
            }

            songNameLabel.snp.makeConstraints { make in
                make.top.equalTo(albumCoverImageView.snp.bottom).offset(30)
                make.centerX.equalToSuperview()
                make.left.right.equalToSuperview().inset(20)
            }

            artistLabel.snp.makeConstraints { make in
                make.top.equalTo(songNameLabel.snp.bottom).offset(30)
                make.centerX.equalToSuperview()
                make.left.right.equalToSuperview().inset(20)
            }

            slider.snp.makeConstraints { make in
                make.top.equalTo(artistLabel.snp.bottom).offset(20)
                make.left.right.equalToSuperview().inset(20)
            }

            startTimeLabel.snp.makeConstraints { make in
                make.top.equalTo(slider.snp.bottom).offset(8)
                make.left.equalTo(slider.snp.left)
            }

            remainingTimeLabel.snp.makeConstraints { make in
                make.top.equalTo(slider.snp.bottom).offset(8)
                make.right.equalTo(slider.snp.right)
            }

            playButton.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.top.equalTo(startTimeLabel.snp.bottom).offset(20)
            }

            rewButton.snp.makeConstraints { make in
                make.centerY.equalTo(playButton.snp.centerY)
                make.left.equalTo(playButton.snp.right).offset(30)
            }

            prevButton.snp.makeConstraints { make in
                make.centerY.equalTo(playButton.snp.centerY)
                make.right.equalTo(playButton.snp.left).offset(-30)
            }
        }
    }
