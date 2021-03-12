//
//  FormRadioView.swift
//  onlineAnytime
//
//  Created by Sophie on 3/12/21.
//

import SwiftUI
import RadioGroup

struct FormRadioView: View {
    
    @EnvironmentObject var screenInfo: ScreenInfo
    @EnvironmentObject var formElementOptions: FormElementOptionViewModel
    @State var selection: Int = 0
    
    var radioTitle: String
    var radioId: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.radioTitle).fixedSize(horizontal: false, vertical: true)
            RadioGroupPicker(selectedIndex: $selection, titles: self.formElementOptions.getOptions(formId: self.screenInfo.formId, elementId: self.radioId))
                .fixedSize()
        }
    }
}

struct FormRadioView_Previews: PreviewProvider {
    static var previews: some View {
        FormRadioView(radioTitle: "", radioId: -1)
    }
}
