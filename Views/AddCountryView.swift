//
//  AddCountryView.swift
//  LiveListProject
//
//  Created by user187924 on 5/13/21.
//

import SwiftUI

struct AddCountryView: View {
    
    @EnvironmentObject var countryController: Countrycontroller
    
    @State var countryName: String = ""
    @State var population: String = ""
    
    
    var body: some View {
        VStack{
            Text("Please Add a new coutry with the population")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding(.bottom, 30)
            
            HStack{
                Image(systemName: "square.and.pencil")
                    .foregroundColor(.pink)
                TextField("Country", text: $countryName)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.purple, lineWidth: 1.0))
            
            HStack{
                Image(systemName: "person.3")
                    .foregroundColor(.pink)
                TextField("Population", text: $population)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.purple, lineWidth: 1.0))
            
            HStack {
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Cancel")
                }
                .padding(.all)
                .padding(.horizontal)
                .foregroundColor(.white)
                .background(Color.purple)
                .cornerRadius(7.0)
                
                Button(action: {
                    countryController.addCountry(newCountry: CountryModel(id: UUID(), name: countryName, population: population))
                }) {
                    Text("Add Country")
                }
                .padding(.all)

                .foregroundColor(.white)
                .background(Color.purple)
                .cornerRadius(7.0)
            }
            .padding(.top, 30)

        }// VStack
        .padding(.horizontal, 10)
        .navigationBarTitle("Add a New Country")
        
    }
}

struct AddCountryView_Previews: PreviewProvider {
    

    
    static var previews: some View {
        AddCountryView()
    }
}
