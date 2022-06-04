//
//  MainScreenView.swift
//  Khorug
//
//  Created by Ismailov Farrukh on 01/06/22.
//

import UIKit

class MainScreenView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI(){
        addSubviews(navBarBottom, scrollView)
        containerView.pinToEdges(of: scrollView)
        tourPortalCoverView.pinToEdges(of: tourPortalImage)
        
        NSLayoutConstraint.activate([
            
            navBarBottom.leftAnchor.constraint(equalTo: leftAnchor),
            navBarBottom.rightAnchor.constraint(equalTo: rightAnchor),
            navBarBottom.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            navBarBottom.heightAnchor.constraint(equalToConstant: 70),
            
            scrollView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            scrollView.leftAnchor.constraint(equalTo: leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: rightAnchor),
            scrollView.topAnchor.constraint(equalTo: navBarBottom.bottomAnchor),
            scrollView.widthAnchor.constraint(equalTo: widthAnchor),
            
            langButton.leftAnchor.constraint(equalTo: navBarBottom.leftAnchor,constant: 18),
            langButton.heightAnchor.constraint(equalToConstant: 25),
            langButton.widthAnchor.constraint(equalToConstant: 25),
            langButton.centerYAnchor.constraint(equalTo: navBarBottom.centerYAnchor),
            
            langLbl.leftAnchor.constraint(equalTo: langButton.rightAnchor,constant: 10),
            langLbl.centerYAnchor.constraint(equalTo: navBarBottom.centerYAnchor),
            langLbl.widthAnchor.constraint(equalToConstant: 30),
            
            searchBar.leftAnchor.constraint(equalTo: langLbl.rightAnchor,constant: 16),
            searchBar.heightAnchor.constraint(equalToConstant: 40),
            searchBar.centerYAnchor.constraint(equalTo: navBarBottom.centerYAnchor),
            
            navMenuBtn.leftAnchor.constraint(equalTo: searchBar.rightAnchor, constant: 21),
            navMenuBtn.rightAnchor.constraint(equalTo: navBarBottom.rightAnchor, constant: -18),
            navMenuBtn.heightAnchor.constraint(equalToConstant: 25),
            navMenuBtn.widthAnchor.constraint(equalToConstant: 25),
            navMenuBtn.centerYAnchor.constraint(equalTo: navBarBottom.centerYAnchor),
            
            weatherWidgetView.leftAnchor.constraint(equalTo: containerView.leftAnchor,constant: 16),
            weatherWidgetView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16),
            weatherWidgetView.heightAnchor.constraint(equalToConstant: 150),
            weatherWidgetView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 32),
            
            weatherCurrencyStackView.leftAnchor.constraint(equalTo: weatherWidgetView.leftAnchor, constant: 20),
            weatherCurrencyStackView.topAnchor.constraint(equalTo: weatherWidgetView.topAnchor, constant: 20),
            weatherCurrencyStackView.bottomAnchor.constraint(equalTo: weatherWidgetView.bottomAnchor, constant: -20),
            weatherCurrencyStackView.rightAnchor.constraint(equalTo: weatherWidgetView.rightAnchor,constant: -20),
            
            city.widthAnchor.constraint(equalToConstant: 50),
            date.widthAnchor.constraint(equalToConstant: 50),
            night.widthAnchor.constraint(equalToConstant: 65),
            
            weatherStackView.widthAnchor.constraint(equalToConstant: 138),
            temperature.heightAnchor.constraint(equalToConstant: 100),
            temperature.widthAnchor.constraint(equalToConstant: 53),
            weatherIcon.widthAnchor.constraint(equalToConstant: 30),
            weatherIcon.heightAnchor.constraint(equalToConstant: 28),
            currencyTitle.widthAnchor.constraint(equalToConstant: 98),
            USD.widthAnchor.constraint(equalToConstant: 50),
            EUR.widthAnchor.constraint(equalToConstant: 50),
            RUB.widthAnchor.constraint(equalToConstant: 50),
            
            //Banner
            bannerCollectionView.leftAnchor.constraint(equalTo: containerView.leftAnchor,constant: 16),
            bannerCollectionView.rightAnchor.constraint(equalTo: containerView.rightAnchor,constant: -16),
            bannerCollectionView.topAnchor.constraint(equalTo: weatherWidgetView.bottomAnchor,constant: 16),
            bannerCollectionView.heightAnchor.constraint(equalToConstant: 208),
            
            tourPortalImage.heightAnchor.constraint(equalToConstant: 208),
            tourPortalImage.leftAnchor.constraint(equalTo: containerView.leftAnchor,constant: 16),
            tourPortalImage.rightAnchor.constraint(equalTo: containerView.rightAnchor,constant: -16),
            tourPortalImage.topAnchor.constraint(equalTo: bannerCollectionView.bottomAnchor,constant: 16),
            
            tourPortalTitle.topAnchor.constraint(equalTo: tourPortalCoverView.topAnchor, constant: 16),
            tourPortalTitle.leftAnchor.constraint(equalTo: tourPortalCoverView.leftAnchor, constant: 16),
            tourPortalTitle.widthAnchor.constraint(equalToConstant: 200),
            
            presidentView.leftAnchor.constraint(equalTo: containerView.leftAnchor,constant: 16),
            presidentView.rightAnchor.constraint(equalTo: containerView.rightAnchor,constant: -16),
            presidentView.topAnchor.constraint(equalTo: tourPortalImage.bottomAnchor,constant: 16),
            presidentView.heightAnchor.constraint(equalToConstant: 220),
            
            presidentViewLeftIcon.topAnchor.constraint(equalTo: presidentView.topAnchor,constant: 16),
            presidentViewLeftIcon.leftAnchor.constraint(equalTo: presidentView.leftAnchor,constant: 16),
            
            presidentViewRighttIcon.bottomAnchor.constraint(equalTo: presidentName.topAnchor, constant: -10),
            presidentViewRighttIcon.rightAnchor.constraint(equalTo: presidentView.rightAnchor,constant: -70 ),
            
            presidentSaying.centerXAnchor.constraint(equalTo: presidentView.centerXAnchor),
            presidentSaying.topAnchor.constraint(equalTo: presidentView.topAnchor,constant: 40),
            presidentSaying.leftAnchor.constraint(equalTo: presidentView.leftAnchor,constant: 35),
            
            presidentName.bottomAnchor.constraint(equalTo: presidentView.bottomAnchor,constant: -24),
            presidentName.rightAnchor.constraint(equalTo: presidentView.rightAnchor,constant: -20),
            
            newsView.topAnchor.constraint(equalTo: presidentView.bottomAnchor,constant: 64),
            newsView.leftAnchor.constraint(equalTo: containerView.leftAnchor),
            newsView.rightAnchor.constraint(equalTo: containerView.rightAnchor),
            
            
            newsLbl.leftAnchor.constraint(equalTo: newsView.leftAnchor,constant: 16),
            newsLbl.topAnchor.constraint(equalTo: newsView.topAnchor,constant: 40),
            newsLbl.rightAnchor.constraint(equalTo: newsView.rightAnchor,constant: -16),
            
            newsCollectionView.leftAnchor.constraint(equalTo: newsView.leftAnchor),
            newsCollectionView.rightAnchor.constraint(equalTo: newsView.rightAnchor),
            newsCollectionView.topAnchor.constraint(equalTo: newsLbl.bottomAnchor,constant: 24),
            newsCollectionView.heightAnchor.constraint(equalToConstant: 1000),
            
            allNewsBtn.rightAnchor.constraint(equalTo: newsView.rightAnchor,constant: -24),
            allNewsBtn.topAnchor.constraint(equalTo: newsCollectionView.bottomAnchor),
            allNewsBtn.bottomAnchor.constraint(equalTo: newsView.bottomAnchor,constant: -40),
            
            //map
            mapCustomView.topAnchor.constraint(equalTo: newsView.bottomAnchor,constant: 60),
            mapCustomView.leftAnchor.constraint(equalTo: containerView.leftAnchor,constant: 16),
            mapCustomView.rightAnchor.constraint(equalTo: containerView.rightAnchor,constant: -16),
            mapCustomView.heightAnchor.constraint(equalToConstant: 485),
            mapCustomView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor,constant: -200),
            
            mapImg.topAnchor.constraint(equalTo: mapCustomView.topAnchor,constant: 16),
            mapImg.leftAnchor.constraint(equalTo: mapCustomView.leftAnchor,constant: 16),
            mapImg.heightAnchor.constraint(equalToConstant: 148),
            mapImg.rightAnchor.constraint(equalTo: bikeImg.leftAnchor),
            
            bikeImg.rightAnchor.constraint(equalTo: mapCustomView.rightAnchor,constant: -16),
            bikeImg.topAnchor.constraint(equalTo: mapCustomView.topAnchor,constant: 112),
            bikeImg.heightAnchor.constraint(equalToConstant: 104),
            
            bikeImg.bottomAnchor.constraint(equalTo: khorogInfoStackView.topAnchor, constant: -30),
            
            khorogInfoStackView.leftAnchor.constraint(equalTo: mapCustomView.leftAnchor,constant: 16),
            khorogInfoStackView.rightAnchor.constraint(equalTo: mapCustomView.rightAnchor,constant: -16),
            khorogInfoStackView.bottomAnchor.constraint(equalTo: mapCustomView.bottomAnchor, constant: -30),
            

        ])
    }
    
    lazy var navBarBottom: UIView = {
        let view = UIView()
        view.backgroundColor = .navColor
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubviews(langButton, langLbl, searchBar, navMenuBtn)
        return view
    }()
    
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.addSubview(containerView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.addSubviews(weatherWidgetView, bannerCollectionView, tourPortalImage, presidentView, newsView, mapCustomView)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    lazy var searchBar: TextField = {
        let searchBar = TextField()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.backgroundColor = .white
        searchBar.setUpImage(imageName: K.Images.search, on: .right)
        searchBar.placeholder = "Поиск"
        return searchBar
    }()
    
    lazy var langButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(K.Images.world, for: .normal)
        btn.tintColor = .appLblColor
        return btn
    }()
    
    lazy var navMenuBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(K.Images.menu, for: .normal)
        btn.tintColor = .appLblColor
        return btn
    }()
    
    
    lazy var langLbl: UILabel = {
        let lbl = TextLabel(text: "RU", textAlignment: .center, font: .mySystemFont(ofSize: 14, weight: .medium), color: .appLblColor)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    
    
    lazy var weatherWidgetView: UIView = {
        let view = CustomView(borderColor: UIColor.viewBorderColor.cgColor, borderWidth: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubviews(weatherCurrencyStackView)
        return view
    }()
    
    lazy var weatherCurrencyStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [weatherStackView, currencyStackView])
        view.axis = .horizontal
        view.spacing = 35
        view.translatesAutoresizingMaskIntoConstraints = false
        view.distribution = .fill
        return view
    }()
    
    //Weather
    lazy var weatherStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [cityAndDateStackView, tempStackView, temp, dayNightStackView])
        view.axis = .vertical
        view.spacing = 10
        return view
    }()
    
    lazy var city: UILabel = {
        let lbl = TextLabel(text: "Хорог", textAlignment: .left, font: .mySystemFont(ofSize: 14.5, weight: .semibold), color: .appLblColor)
        return lbl
    }()
    
    lazy var date: UILabel = {
        let lbl = TextLabel(text: "13 янв", textAlignment: .left, font: .mySystemFont(ofSize: 13, weight: .regular), color: .gray)
        return lbl
    }()
    
    lazy var temperature: UILabel = {
        let lbl = TextLabel(text: "+17°", textAlignment: .left, font: .mySystemFont(ofSize: 26, weight: .semibold), color: .appLblColor)
        return lbl
    }()
    
    lazy var temp: UILabel = {
        let lbl = TextLabel(text: "Облачно", textAlignment: .left, font: .mySystemFont(ofSize: 16, weight: .semibold), color: .blue)
        return lbl
    }()
    
    lazy var night: UILabel = {
        let lbl = TextLabel(text: "Ночью 8°", textAlignment: .left, font: .mySystemFont(ofSize: 13, weight: .regular), color: .gray)
        return lbl
    }()
    
    lazy var day: UILabel = {
        let lbl = TextLabel(text: "Днем 19°", textAlignment: .left, font: .mySystemFont(ofSize: 13, weight: .regular), color: .gray)
        return lbl
    }()
    
    lazy var weatherIcon: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "weather")
        return image
    }()
    
    
    lazy var cityAndDateStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [city, date])
        view.axis = .horizontal
        view.spacing = 5
        view.distribution = .fill
        return view
    }()
    
    
    lazy var tempStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [temperature, weatherIcon, UIView()])
        view.axis = .horizontal
        view.spacing = 10
        view.distribution = .fill
        return view
    }()
    
    
    lazy var dayNightStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [night, day])
        view.axis = .horizontal
        view.spacing = 10
        view.distribution = .fill
        return view
    }()
    
    //currency
    lazy var currencyStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [currencyTitleStackView, usdStackView, eurStackView, rubStackView])
        view.axis = .vertical
        view.spacing = 12
        return view
    }()
    
    lazy var currencyTitleStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [currencyTitle, currencyNBT])
        view.axis = .horizontal
        view.spacing = 5
        view.distribution = .fill
        return view
    }()
    
    lazy var usdStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [USD, USD_amount])
        view.axis = .horizontal
        view.spacing = 20
        view.distribution = .fill
        return view
    }()
    
    lazy var eurStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [EUR, EUR_amount])
        view.axis = .horizontal
        view.distribution = .fill
        view.spacing = 20
        return view
    }()
    
    lazy var rubStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [RUB, RUB_amount])
        view.axis = .horizontal
        view.distribution = .fill
        view.spacing = 20
        return view
    }()
    
    
    lazy var currencyTitle: UILabel = {
        let lbl = TextLabel(text: "Курс валют", textAlignment: .left, font: .mySystemFont(ofSize: 14.5, weight: .semibold), color: .appLblColor)
        return lbl
    }()
    
    lazy var currencyNBT: UILabel = {
        let lbl = TextLabel(text: "по НБТ", textAlignment: .left, font: .mySystemFont(ofSize: 13, weight: .regular), color: .gray)
        return lbl
    }()
    
    
    lazy var USD: UILabel = {
        let lbl = TextLabel(text: "1 USD", textAlignment: .left, font: .mySystemFont(ofSize: 15, weight: .semibold), color: .appLblColor)
        return lbl
    }()
    
    lazy var USD_amount: UILabel = {
        let lbl = TextLabel(text: "11.3000", textAlignment: .left, font: .mySystemFont(ofSize: 15, weight: .semibold), color: .appLblColor)
        return lbl
    }()
    
    
    lazy var EUR: UILabel = {
        let lbl = TextLabel(text: "1 EUR", textAlignment: .left, font: .mySystemFont(ofSize: 15, weight: .semibold), color: .appLblColor)
        return lbl
    }()
    
    
    lazy var EUR_amount: UILabel = {
        let lbl = TextLabel(text: "12.8910", textAlignment: .left, font: .mySystemFont(ofSize: 15, weight: .semibold), color: .appLblColor)
        return lbl
    }()
    
    lazy var RUB: UILabel = {
        let lbl = TextLabel(text: "1 RUB", textAlignment: .left, font: .mySystemFont(ofSize: 15, weight: .semibold), color: .appLblColor)
        return lbl
    }()
    
    lazy var RUB_amount: UILabel = {
        let lbl = TextLabel(text: "0.1518", textAlignment: .left, font: .mySystemFont(ofSize: 15, weight: .semibold), color: .appLblColor)
        return lbl
    }()
    
    
    //Banners
    lazy var bannerCollectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UIHelper.createHorizontalFlowLayout(in: self))
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.roundCorners(.all, radius: 5)
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    lazy var tourPortalCoverView: UIView = {
        let view = UIView()
        view.backgroundColor = .black.withAlphaComponent(0.1)
        view.addSubview(tourPortalTitle)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.roundCorners(.all, radius: 5)
        return view
    }()
    
    
    lazy var tourPortalTitle: UILabel = {
        let lbl = TextLabel(text: "Туристический портал РТ", textAlignment: .left, font: .mySystemFont(ofSize: 24, weight: .bold), color: .white)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    lazy var tourPortalImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "tour")
        img.addSubview(tourPortalCoverView)
        img.translatesAutoresizingMaskIntoConstraints = false
        img.roundCorners(.all, radius: 5)
        return img
    }()
    
    lazy var presidentView: UIView = {
        let view = CustomView(borderColor: UIColor.viewBorderColor.cgColor, borderWidth: 1)
        view.addSubviews(presidentViewLeftIcon, presidentViewRighttIcon,presidentSaying, presidentName )
        view.translatesAutoresizingMaskIntoConstraints = false
        view.roundCorners(.all, radius: 5)
        return view
    }()
    
    lazy var presidentSaying: UILabel = {
        let lbl = TextLabel(text: "Каждый патриотически настроенный и переполненный чувством гордости за свою нацию человек, должен всегда свято чтить и защищать национальные святыни, быть знаменосцем своего языка культуры и нации", textAlignment: .left, font: .mySystemFont(ofSize: 15, weight: .light), color: .appLblColor)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    
    lazy var presidentName: UILabel = {
        let lbl = TextLabel(text: "Эмомали Рахмон", textAlignment: .left, font: .mySystemFont(ofSize: 16, weight: .medium), color: .appLblColor)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    lazy var presidentViewLeftIcon : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "<<")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    lazy var presidentViewRighttIcon : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: ">>")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    //News
    lazy var newsView: UIView = {
        let view = UIView()
        view.addSubviews(newsLbl, newsCollectionView, allNewsBtn)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .navColor
        return view
    }()
    
    
    lazy var newsLbl: UILabel = {
        let lbl = TextLabel(text: "Новости", textAlignment: .left, font: .mySystemFont(ofSize: 20, weight: .bold), color: .appLblColor)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    
    lazy var newsCollectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UIHelper.createVerticalFlowLayout(in: self))
        collectionView.backgroundColor = .navColor
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.isScrollEnabled = false
        return collectionView
    }()
    
    lazy var allNewsBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Все новости", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    //map
    lazy var mapCustomView: UIView = {
        let view = CustomView(borderColor: UIColor.viewBorderColor.cgColor, borderWidth: 1)
        view.addSubviews(mapImg, bikeImg, khorogInfoStackView)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var mapImg: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "khorogMap")
        img.translatesAutoresizingMaskIntoConstraints = false
        
        return img
    }()
    
    lazy var bikeImg: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "bike")
        img.translatesAutoresizingMaskIntoConstraints = false
        
        return img
    }()
    
    
    lazy var khorogCityLbl: UILabel = {
        let lbl = TextLabel(text: "г. Хорог", textAlignment: .left, font: .mySystemFont(ofSize: 24, weight: .bold), color: .darkBlue)
         
        return lbl
    }()
    
    
    lazy var khorogInfoLbl: UILabel = {
        let lbl = TextLabel(text: "Административный центр: ГБАО \nПлощадь территории -  N км² \nЧисленность населения - 30 тыс (2020 г.) \nОфициальный язык: Таджикский", textAlignment: .left, font: .mySystemFont(ofSize: 12, weight: .regular), color: .appLblColor)
        lbl.spacing = 15
        lbl.setTextSpacingBy(value: 1)
        lbl.numberOfLines = 0
         
        return lbl
    }()
    
    lazy var khorogInfoSecondaty: UILabel = {
        let lbl = TextLabel(text: "Парков:  10 \nЗон отдыха: 2", textAlignment: .left, font: .mySystemFont(ofSize: 12, weight: .light), color: .appLblColor)
        lbl.spacing = 5
        lbl.numberOfLines = 0
        lbl.setTextSpacingBy(value: 1)
        return lbl
    }()
    
    
    lazy var khorogInfoStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [khorogCityLbl, khorogInfoLbl, khorogInfoSecondaty])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 20
        return stackView
    }()
    
}

