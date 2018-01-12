

import UIKit

class AwesomeButton: UIButton {
    
    var defaultFrameButon = CGRect(x:20, y:20, width: 100, height: 40)
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    init(title: String = "DEFAULT AWESOME BUTTON", cornerRadius : CGFloat = 5, borderColor: UIColor = UIColor.black, backgroundColor: UIColor = UIColor.orange, textColor: UIColor = UIColor.black) {
        super.init(frame: self.defaultFrameButon)
        
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = 2
        self.clipsToBounds = true
        self.backgroundColor = backgroundColor
        self.setTitleColor(textColor, for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: self.titleLabel?.font.pointSize ?? 15)
        self.setTitle(title, for: .normal)
        self.contentEdgeInsets = UIEdgeInsetsMake(5, 20, 5, 20)
        self.sizeToFit()
    }
    
    convenience init(withTitle titleText: String, cornerRadius: CGFloat, borderColor: UIColor, backgroundColor: UIColor, andTextColor textColor: UIColor ) {
        self.init(title: titleText, cornerRadius: cornerRadius, borderColor: borderColor, backgroundColor: backgroundColor, textColor: textColor)
    }
}
