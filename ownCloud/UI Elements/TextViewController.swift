//
//  TextViewController.swift
//  ownCloud
//
//  Created by Felix Schwarz on 23.08.18.
//  Copyright © 2018 ownCloud GmbH. All rights reserved.
//

/*
* Copyright (C) 2018, ownCloud GmbH.
*
* This code is covered by the GNU Public License Version 3.
*
* For distribution utilizing Apple mechanisms please see https://owncloud.org/contribute/iOS-license-exception/
* You should have received a copy of this license along with this program. If not, see <http://www.gnu.org/licenses/gpl-3.0.en.html>.
*
*/

import UIKit

class TextViewController: UIViewController {
	var textView : UITextView?

	var attributedText : NSAttributedString? {
		didSet {
			textView?.attributedText = attributedText
		}
	}
	var plainText : String? {
		didSet {
			textView?.text = plainText
		}
	}

	override func loadView() {
		textView = UITextView()

		textView?.isEditable = false
		textView?.allowsEditingTextAttributes = false

		self.view = textView

		if attributedText != nil {
			textView?.attributedText = attributedText
		} else {
			textView?.text = plainText
		}
	}
}