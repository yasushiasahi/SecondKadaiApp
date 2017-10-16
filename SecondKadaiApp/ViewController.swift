//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Yasushi Asahi on 2017/10/16.
//  Copyright © 2017年 Yasushi Asahi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var nameTextField: UITextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let name: String = nameTextField.text {
			let helloViewController: HelloViewController = segue.destination as! HelloViewController
			helloViewController.name = name
		}
	}

	@IBAction func unwind(_ segue: UIStoryboardSegue) {
	}

}

