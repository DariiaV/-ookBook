import UIKit

extension CGFloat {
    
    static let imageViewButtonTopAnchor: CGFloat = 250
    static let imageViewButtonLeadingAnchor: CGFloat = 10
    static let imageViewButtonTrailingAnchor: CGFloat = -10
    static let imageViewButtonHeightAnchor : CGFloat = 50
    
    static let nextButtonTopAnchor: CGFloat = 150
    static let nextButtonLeadingAnchor: CGFloat = 40
    static let nextButtonTrailingAnchor: CGFloat = -40
    static let nextButtonHeightAnchor : CGFloat = 60
    
    
}

class FistScreenViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewFistScreen()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    lazy var nextButton : UIButton = {
        
        let nextButton = UIButton()
        nextButton.backgroundColor = .systemBlue
        nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        nextButton.setTitle("Start cooking", for: .normal)
        nextButton.setTitleColor(UIColor.black, for: .normal)
        nextButton.layer.cornerRadius = 14
        return nextButton
    } ()
    
    lazy var imageViewFirstScreen : UIImageView = {
        let imageViewFirstScreen = UIImageView()
        imageViewFirstScreen.image = UIImage(named: "rangers")
        imageViewFirstScreen.contentMode = .scaleAspectFill
        imageViewFirstScreen.contentMode = .scaleAspectFill
        
        return imageViewFirstScreen
    } ()
    
    @objc func goToNextScreen() {
        
        let nextScreen = KitchenViewController()
        nextScreen.modalPresentationStyle = .fullScreen
        self.present(nextScreen, animated: true)
        print("Start cooking")
//        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
}


extension FistScreenViewController {
    
    private func setupConstraintsFirstScreen() {
        
        imageViewFirstScreen.translatesAutoresizingMaskIntoConstraints = false
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        NSLayoutConstraint.activate([
            imageViewFirstScreen.topAnchor.constraint(equalTo: view.topAnchor, constant:.imageViewButtonTopAnchor),
            imageViewFirstScreen.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: .imageViewButtonLeadingAnchor),
            imageViewFirstScreen.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: .imageViewButtonTrailingAnchor),
            imageViewFirstScreen.heightAnchor.constraint(equalToConstant: .imageViewButtonHeightAnchor)
        ])
        
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: imageViewFirstScreen.bottomAnchor, constant:.nextButtonTopAnchor),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: .nextButtonLeadingAnchor),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: .nextButtonTrailingAnchor),
            nextButton.heightAnchor.constraint(equalToConstant: .nextButtonHeightAnchor)
        ])
    }
    
    func setupFirstScreen() {
        view.addSubview(nextButton)
        view.addSubview(imageViewFirstScreen)
        
    }
    
    func configureViewFistScreen() {
        setupFirstScreen()
        setupConstraintsFirstScreen()
        
    }
}

