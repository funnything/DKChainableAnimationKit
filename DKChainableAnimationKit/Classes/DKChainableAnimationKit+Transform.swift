//
//  DKChainableAnimationKit+Transform.swift
//  DKChainableAnimationKit
//
//  Created by Draveness on 15/5/23.
//  Copyright (c) 2015年 Draveness. All rights reserved.
//

import UIKit

extension DKChainableAnimationKit {

    public var transformIdentity: DKChainableAnimationKit {
        get {
            self.addAnimationCalculationAction { (view: UIView) -> Void in
                let transformAnimation = self.basicAnimationForKeyPath("transform")
                transformAnimation.fromValue = NSValue(caTransform3D: view.layer.transform)
                transformAnimation.toValue = NSValue(caTransform3D: CATransform3DIdentity)
                self.addAnimationFromCalculationBlock(transformAnimation)
            }
            self.addAnimationCompletionAction { (view: UIView) -> Void in
                view.layer.transform = CATransform3DIdentity
            }
            return self
        }
    }

    public func transformAbs(_ transform: CATransform3D) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            transformAnimation.fromValue = NSValue(caTransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(caTransform3D: transform)
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = transform
        }
        return self
    }
    
    public func transformAbsX(_ x: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            transformAnimation.fromValue = NSValue(caTransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(caTransform3D: CATransform3DMakeTranslation(x, 0, 0))
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = CATransform3DMakeTranslation(x, 0, 0)
        }
        return self
    }
    
    public func transformAbsY(_ y: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            transformAnimation.fromValue = NSValue(caTransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(caTransform3D: CATransform3DMakeTranslation(0, y, 0))
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = CATransform3DMakeTranslation(0, y, 0)
        }
        return self
    }
    
    public func transformAbsZ(_ z: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            transformAnimation.fromValue = NSValue(caTransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(caTransform3D: CATransform3DMakeTranslation(0, 0, z))
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = CATransform3DMakeTranslation(0, 0, z)
        }
        return self
    }
    
    public func transformRelX(_ x: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            transformAnimation.fromValue = NSValue(caTransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(caTransform3D: CATransform3DTranslate(view.layer.transform, x, 0, 0))
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = CATransform3DTranslate(view.layer.transform, x, 0, 0)
        }
        return self
    }
    
    public func transformRelY(_ y: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            transformAnimation.fromValue = NSValue(caTransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(caTransform3D: CATransform3DTranslate(view.layer.transform, 0, y, 0))
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = CATransform3DTranslate(view.layer.transform, 0, y, 0)
        }
        return self
    }
    
    public func transformRelZ(_ z: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            transformAnimation.fromValue = NSValue(caTransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(caTransform3D: CATransform3DTranslate(view.layer.transform, 0, 0, z))
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = CATransform3DTranslate(view.layer.transform, 0, 0, z)
        }
        return self
    }

    public func transformXY(_ x: CGFloat, _ y: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            transformAnimation.fromValue = NSValue(caTransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(caTransform3D: CATransform3DTranslate(view.layer.transform, x, y, 0))
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = CATransform3DTranslate(view.layer.transform, x, y, 0)
        }
        return self
    }
    
    public func transformAbsScale(_ scale: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            transformAnimation.fromValue = NSValue(caTransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(caTransform3D: CATransform3DMakeScale(scale, scale, 1))
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = CATransform3DMakeScale(scale, scale, 1)
        }
        return self
    }
    
    public func transformRelScale(_ scale: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            transformAnimation.fromValue = NSValue(caTransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(caTransform3D: CATransform3DScale(view.layer.transform, scale, scale, 1))
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = CATransform3DScale(view.layer.transform, scale, scale, 1)
        }
        return self
    }

    public func transformScaleX(_ scaleX: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            transformAnimation.fromValue = NSValue(caTransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(caTransform3D: CATransform3DScale(view.layer.transform, scaleX, 1, 1))
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = CATransform3DScale(view.layer.transform, scaleX, 1, 1)
        }
        return self
    }
    
    public func transformScaleY(_ scaleY: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            transformAnimation.fromValue = NSValue(caTransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(caTransform3D: CATransform3DScale(view.layer.transform, 1, scaleY, 1))
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = CATransform3DScale(view.layer.transform, 1, scaleY, 1)
        }
        return self
    }
    
    public func rotateAbs(_ angle: Double) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let rotationAnimation = self.basicAnimationForKeyPath("transform.rotation")
            let transform = view.layer.transform
            let srcAngle = Double(atan2(transform.m12, transform.m11))
            rotationAnimation.fromValue = NSNumber(value: srcAngle)
            rotationAnimation.toValue = NSNumber(value: angle)
            self.addAnimationFromCalculationBlock(rotationAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = CATransform3DMakeRotation(CGFloat(angle), 0, 0, 1)
        }
        return self
    }

    public func rotateRel(_ angle: Double) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let rotationAnimation = self.basicAnimationForKeyPath("transform.rotation")
            let transform = view.layer.transform
            let srcAngle = Double(atan2(transform.m12, transform.m11))
            rotationAnimation.fromValue = NSNumber(value: srcAngle)
            rotationAnimation.toValue = NSNumber(value: srcAngle + angle)
            self.addAnimationFromCalculationBlock(rotationAnimation)
        }

        self.addAnimationCompletionAction { (view: UIView) -> Void in
            let transform = view.layer.transform
            let srcAngle = Double(atan2(transform.m12, transform.m11))
            view.layer.transform = CATransform3DMakeRotation(CGFloat(srcAngle + angle), 0, 0, 1)
        }
        return self
    }

}
