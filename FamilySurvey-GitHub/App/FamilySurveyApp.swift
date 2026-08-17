import SwiftUI

@main
struct FamilySurveyApp: App {
    private let surveyURL = URL(string: "https://fesurvey.stats.gov.sa/family/auth/user")!

    var body: some Scene {
        WindowGroup {
            WebView(url: surveyURL)
                .ignoresSafeArea(.container, edges: .bottom)
        }
    }
}
