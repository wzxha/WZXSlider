# WZXSlider
![image](https://img.shields.io/badge/Language-Swift3-blue.svg)<br/>
Gradient color slider

# Function
```swift
   open func wzx_setMinimumTrackImage(startColor: UIColor, 
                                        endColor: UIColor,
                                      startPoint: CGPoint,
                                        endPoint: CGPoint)
```
# Example
```swift
   let slider: UISlider = UISlider.init()
   slider.center = self.view.center
   slider.bounds = CGRect.init(origin: CGPoint.zero, size: CGSize.init(width: 300, height: 50))
   slider.wzx_setMinimumTrackImage(startColor: UIColor.red,
                                     endColor: UIColor.blue,
                                   startPoint: CGPoint.init(x: 0, y: 0),
                                     endPoint: CGPoint.init(x: 1, y: 1))
   self.view.addSubview(slider)
```

# Gif
![image](https://github.com/Wzxhaha/WZXStorehouse/blob/master/WZXSlider/WZXSlider.gif)
