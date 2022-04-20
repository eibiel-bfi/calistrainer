//
//  PrimaryButton.swift
//  calistrainer
//
//  Created by Eibiel Sardjanto on 15/03/22.
//

import SwiftUI

struct PrimaryButton: View {
	let label: String
	var fullWidth: Bool = false
	let action: () -> Void

    var body: some View {
		Button {
			action()
		} label: {
			Text(label)
				.foregroundColor(Color("PrimaryGray"))
				.fontWeight(.semibold)
				.padding()
				.frame(maxWidth: fullWidth ? .infinity : nil)
				.background(
					RoundedRectangle(cornerRadius: 15)
						.foregroundColor(Color("PrimaryLime"))
				)
		}
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
		PrimaryButton(label: "Start", action: {})
    }
}
