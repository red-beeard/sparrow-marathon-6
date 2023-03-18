//
//  ViewController.swift
//  TaskSix
//
//  Created by Alexander Nifontov on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {
	
	// MARK: - Subviews
	
	@IBOutlet weak var squareView: UIView!
	
	lazy var animator = UIDynamicAnimator(referenceView: view)
	lazy var snapBehavior = UISnapBehavior(item: squareView, snapTo: squareView.center)
	
	// MARK: - Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let rcgMoveView = UITapGestureRecognizer(target: self, action: #selector(rcgMoveView_tap))
		view.addGestureRecognizer(rcgMoveView)
		
		animator.addBehavior(snapBehavior)
	}
	
	// MARK: - Actions
	
	@objc
	private func rcgMoveView_tap(_ recognizer: UITapGestureRecognizer) {
		snapBehavior.snapPoint = recognizer.location(in: view)
	}
}

