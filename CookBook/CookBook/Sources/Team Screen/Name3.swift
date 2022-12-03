import UIKit


class Name3: UIViewController {
    let nextButton = UIButton()
    var labelView = UIImageView()
    let imageName = "chef.png"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
        setipLabel()
        view.backgroundColor = .systemBackground
        title = "First Screen"
        navigationController?.navigationBar.prefersLargeTitles = true
        //        createView1Constraint()
    }
    func setupButton() {
        view.addSubview(nextButton)
        nextButton.backgroundColor = .systemBlue
        nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        nextButton.setTitle("Start cooking", for: .normal)
        nextButton.setTitleColor(UIColor.black, for: .normal)
        nextButton.layer.cornerRadius = 14
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50)])
    }
    
    func setipLabel() {
        let image = UIImage(named: imageName)
        labelView = UIImageView(image: image!)
        labelView.frame = CGRect(x: 100, y: 50, width: 200, height: 200)
        view.addSubview(labelView)
        
    }
    
    @objc func goToNextScreen() {
        let nextScreen = KitchenViewController()
        print("Start cooking")
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
}

