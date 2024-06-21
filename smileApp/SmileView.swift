//
//  SmileView.swift
//  smileApp
//
//  Created by Mini-M1 on 20/06/2024.
//

import UIKit

class SmileView: UIView {
    
    var redColor: Float = 1.0
    var greenColor: Float = 0.0
    var blueColor: Float = 1.0
    
    var pointFromUser: Double = 0.0
    
    @IBOutlet weak var face: SmileView!

    override func draw(_ rect: CGRect) {
        
        let bounds:CGRect = self.bounds
        
        var midPoint=CGPoint() // center of our bounds in our coordinate system
        midPoint.x = bounds.origin.x + bounds.size.width/2
        midPoint.y = bounds.origin.y + bounds.size.height/2
        
     
        var point1=CGPoint()
        point1.x = midPoint.x
        point1.y = midPoint.y
        
      
        let path:UIBezierPath=UIBezierPath()
        path.addArc(withCenter: point1, radius: 110, startAngle: 0, endAngle: CGFloat(2 * Double.pi), clockwise: true)
        path.lineWidth=10
        let color = UIColor(red:CGFloat(redColor), green:CGFloat(greenColor), blue: CGFloat(blueColor), alpha: alpha)
        color.setFill()
        path.stroke()
        path.fill()

        var point2=CGPoint(x: midPoint.x - 40, y: midPoint.y - 20)
        
        let path2:UIBezierPath=UIBezierPath()
        path2.addArc(withCenter: point2, radius: 15, startAngle: 0, endAngle: CGFloat(2 * Double.pi), clockwise: true)
        UIColor.white.setFill()
        path2.lineWidth=10
        path2.stroke()
        path2.fill()
        
        var point3=CGPoint(x: midPoint.x + 40, y:midPoint.y - 20)
        
        let path3:UIBezierPath=UIBezierPath()
        path3.addArc(withCenter: point3, radius: 15, startAngle: 0, endAngle: CGFloat(2 * Double.pi), clockwise: true)
        UIColor.white.setFill()
        path3.lineWidth=10
        path3.stroke()
        path3.fill()
        
        var point4=CGPoint(x: midPoint.x - 60, y:midPoint.y + 40)
        var point5=CGPoint(x: midPoint.x + 60, y:midPoint.y + 40)
        
        var pointControlPoint=CGPoint()
        pointControlPoint.x = midPoint.x
        pointControlPoint.y = midPoint.y + 40 + pointFromUser
        
        let path4and5:UIBezierPath=UIBezierPath()
        path4and5.move(to: point4)
        path4and5.addQuadCurve(to: point5, controlPoint: pointControlPoint)
        path4and5.lineWidth=5
        path4and5.stroke()
    
    }
}
