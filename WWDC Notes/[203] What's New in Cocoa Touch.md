# [203] What's New in Cocoa Touch

---

* ## IMPORTANT
	* View Controllers Transitions
	* Text Kit

---

* Multitasking
	* Fetch
	* Remote notifications
	* Background trasfers (NSURLSession)

* Views and Images
	* Image Rendering Modes
		- (UIImage *)imageWithRenderingMode:(UIIMageRenderingModes)modes
	* Tint
		* @property tintColor;
		* @property tintAdjustmentModes;
		* @method	tintColorDidChange;
	* View Animation
		* + (void)performWithoudAnimation:(void (^)(void))actions;
		* Keyframes

* Motion Effects
	* UIInterpolatingMotionEffect
	* UIMotionEffect
	* UIView has @property motionEffects

* Collection Views
	* Transilation between layouts
		- (void)setCollectionViewLayout:animated:completion:
	* UICollectionViewTransitionLayout

* View Controllers
	* Layout
		* wantsFullScreenLayout (Deprecated in iOS 7.0)
		* Extended edges
		* Content Size
			@property perferredContentSize;
		* Status bar appearance
	* Custom Transitions
		@property transitioningDelegate;
		@protocol UIViewControllerInteractiveTransitioning
		@protocol UIViewControllerContextTransitioning
* State Restaration
	* Ignoring Snapshots
		- (void)ignoreSnapshotOnNextApplicationLaunch;
	* Other Objects
		+ (void)registerObjectForStateRestoration:restorationIdentifier:
	* Bluetooth State Restoration

* AirDrop

* Dynamics
	* UIDynamicAnimator
	* UIDynamicBehavior
	* UIDynamicItem

* Text
	* Dynamic type sizing
		@property perferredContentSizeCategory;
	* UIFont
		+ (UIFont *)preferredFontForTextStyle:(NSString *)style;
	* Text Kit

* More Features
	* Multipeer Connectivity
	* SpriteKit
	* Game Controllers
	* MapKit
	* CoreLocation
	* Accessibility
	* GameCenter