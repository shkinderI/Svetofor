
import UIKit

final class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    var lightState: UInt8 = 0
    
    
    override func viewDidLoad() {
        redLight.layer.cornerRadius = 63
        yellowLight.layer.cornerRadius = 63
        greenLight.layer.cornerRadius = 63
        startButton.layer.cornerRadius = 5
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }
    
    @IBAction func startButtonUsingToNextColor(_ sender: UIButton) {
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        if lightState == 0 {
            redLight.alpha = 1
            lightState = 1
            sender.setTitle("NEXT", for: .normal)
        } else if lightState == 1 {
            yellowLight.alpha = 1
            lightState = 2
        } else if lightState == 2 {
            greenLight.alpha = 1
            lightState = 0
        }
        
        
    }
    
    
    
    //        if redLight.alpha == 0.3 {
    //            redLight.alpha = 1
    //        }
    //        else if redLight.alpha == 1 {
    //            yellowLight.alpha = 1
    //            redLight.alpha = 0.3
    //        }
    //    }
    
    
    
    
}
