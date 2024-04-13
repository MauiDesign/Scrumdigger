//
//  ErrorView.swift
//  Scrumdigger
//
//  Created by Aroha Design on 13/04/24.
//

import SwiftUI

struct ErrorView: View {
    let errorWrapper: ErrorWrapper
    
    var body: some View {
        
        VStack {
            Text("An error has occured")
                .font(.title)
                .padding(.bottom)
            Text(errorWrapper.error.localizedDescription)
                .font(.headline)
            Text(errorWrapper.guidance)
                .font(.caption)
                .padding(.top)
            Spacer()
        }
        .padding()
        .background(.ultraThinMaterial)
        .cornerRadius(16)
        
    }
}

struct ErrorView_Previews: PreviewProvider {
    enum SampleError: Error {
        case errorRequired
    }
    
    static var wrapper: ErrorWrapper {
        ErrorWrapper(error: SampleError.errorRequired,
                     guidance: "You can safely ignore this error.")
    }
    
    static var previews: some View {
        ErrorView(errorWrapper: wrapper)
    }
}

/**
#Preview {
    enum SampleError: Error {
    case errorRequired
    }
    
    var wrapper: ErrorWrapper {
        ErrorWrapper(error: SampleError.errorRequired, guidance: "You can safely ignore this error.")
    }
    
    ErrorView(errorWrapper: wrapper)
}
*/
