# Custom Transitions Using View Controllers 笔记

---

## 新的动画接口
### 动画进行时发生了什么
我们会在 UIView 的 animation block 中通过修改属性来完成动画。因为 UIView 的 animation 接口是基于 CoreAnimation 的，所以这个过程中，其实是在给对应 view 的 layer 添加 animation. 

*具体关于 UIView 和 CALayer 的内容可以参见 [Core Animation Basics](https://developer.apple.com/library/ios/documentation/Cocoa/Conceptual/CoreAnimation_guide/CoreAnimationBasics/CoreAnimationBasics.html#//apple_ref/doc/uid/TP40004514-CH2-SW3)*

如果你不希望是用动画，在 iOS 7 前，我们会使用 

```
	- (void)setAnimationsEnabled:(BOOL)enabled
```

但在 iOS 7 中尽可能不使用这个方法，避免因为忘记 reset 回去导致的后续动画失效，如果需要相应的功能，可以使用这个方法：

```
	- (void)performWithoutAnimation:(void (^)(void))block
```

		iOS 7, use performWithoutAnimation: instead of setAnimationsEnabled:

### Spring animations
### Key-frame animations
### UIView snapshots
### UIKit Dynamics

## 定制 view controllers transitions
* Presentations and dismissals
	UIModalPresentationsCustom: New presentationStyle that keep view controller in the window hierarchy.

* UITabBarController
* UINavigationController
* CollectionViewController layout-to-layout transition

@protocol UIViewControllerContextTransitioning

@protocol UIViewControllerAnimatedTransitioning

## Interactive view controller transitions
	@protocol UIViewControllerInteractiveTransitioning
	@protocol UIViewControllerTransitionCoordinator
	UIViewControllerPercentDrivenTransition
	UICollectionViewTransitionLayout
	Canceling transitions

## Related Sessions
	* [201] Building User Interfaces for iOS 7
	* [206] Getting Started with UIKit Dynamics
	* [221] Advanced Techniques with UIKit Dynamics
	* [225]Best Practices for Great iOS UI Design