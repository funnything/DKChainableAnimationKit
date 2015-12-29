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
                transformAnimation.fromValue = NSValue(CATransform3D: view.layer.transform)
                transformAnimation.toValue = NSValue(CATransform3D: CATransform3DIdentity)
                self.addAnimationFromCalculationBlock(transformAnimation)
            }
            self.addAnimationCompletionAction { (view: UIView) -> Void in
                view.layer.transform = CATransform3DIdentity
            }
            return self
        }
    }
    
    public func transformAbsX(x: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            transformAnimation.fromValue = NSValue(CATransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(CATransform3D: CATransform3DMakeTranslation(x, 0, 0))
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = CATransform3DMakeTranslation(x, 0, 0)
        }
        return self
    }
    
    public func transformAbsY(y: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            transformAnimation.fromValue = NSValue(CATransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(CATransform3D: CATransform3DMakeTranslation(0, y, 0))
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = CATransform3DMakeTranslation(0, y, 0)
        }
        return self
    }
    
    public func transformAbsZ(z: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            transformAnimation.fromValue = NSValue(CATransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(CATransform3D: CATransform3DMakeTranslation(0, 0, z))
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = CATransform3DMakeTranslation(0, 0, z)
        }
        return self
    }
    
    public func transformRelX(x: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            transformAnimation.fromValue = NSValue(CATransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(CATransform3D: CATransform3DTranslate(view.layer.transform, x, 0, 0))
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = CATransform3DTranslate(view.layer.transform, x, 0, 0)
        }
        return self
    }
    
    public func transformRelY(y: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            transformAnimation.fromValue = NSValue(CATransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(CATransform3D: CATransform3DTranslate(view.layer.transform, 0, y, 0))
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = CATransform3DTranslate(view.layer.transform, 0, y, 0)
        }
        return self
    }
    
    public func transformRelZ(z: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            transformAnimation.fromValue = NSValue(CATransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(CATransform3D: CATransform3DTranslate(view.layer.transform, 0, 0, z))
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            view.layer.transform = CATransform3DTranslate(view.layer.transform, 0, 0, z)
        }
        return self
    }

    public func transformXY(x: CGFloat, _ y: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            var transform = view.layer.transform
            transform = CATransform3DTranslate(transform, x, y, 0)
            transformAnimation.fromValue = NSValue(CATransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(CATransform3D: transform)
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            var transform = view.layer.transform
            transform = CATransform3DTranslate(transform, x, y, 0)
            view.layer.transform = transform
        }
        return self
    }

    public func transformScale(scale: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            var transform = view.layer.transform
            transform = CATransform3DScale(transform, scale, scale, 1)
            transformAnimation.fromValue = NSValue(CATransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(CATransform3D: transform)
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            var transform = view.layer.transform
            transform = CATransform3DScale(transform, scale, scale, 1)
            view.layer.transform = transform
        }
        return self
    }

    public func transformScaleX(scaleX: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            var transform = view.layer.transform
            transform = CATransform3DScale(transform, scaleX, 1, 1)
            transformAnimation.fromValue = NSValue(CATransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(CATransform3D: transform)
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            var transform = view.layer.transform
            transform = CATransform3DScale(transform, scaleX, 1, 1)
            view.layer.transform = transform
        }
        return self
    }

    public func transformScaleY(scaleY: CGFloat) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let transformAnimation = self.basicAnimationForKeyPath("transform")
            var transform = view.layer.transform
            transform = CATransform3DScale(transform, 1, scaleY, 1)
            transformAnimation.fromValue = NSValue(CATransform3D: view.layer.transform)
            transformAnimation.toValue = NSValue(CATransform3D: transform)
            self.addAnimationFromCalculationBlock(transformAnimation)
        }
        self.addAnimationCompletionAction { (view: UIView) -> Void in
            var transform = view.layer.transform
            transform = CATransform3DScale(transform, 1, scaleY, 1)
            view.layer.transform = transform
        }
        return self
    }

    public func rotate(angle: Double) -> DKChainableAnimationKit {
        self.addAnimationCalculationAction { (view: UIView) -> Void in
            let rotationAnimation = self.basicAnimationForKeyPath("transform.rotation")
            let transform = view.layer.transform
            let originalRotation = Double(atan2(transform.m12, transform.m11))
            rotationAnimation.fromValue = originalRotation
            rotationAnimation.toValue = originalRotation + self.degreesToRadians(angle)
            self.addAnimationFromCalculationBlock(rotationAnimation)
        }

        self.addAnimationCompletionAction { (view: UIView) -> Void in
            let transform = view.layer.transform
            let originalRotation = Double(atan2(transform.m12, transform.m11))
            let zRotation = CATransform3DMakeRotation(CGFloat(self.degreesToRadians(angle) + originalRotation), 0.0, 0.0, 1.0)
            view.layer.transform = zRotation
        }
        return self
    }

}