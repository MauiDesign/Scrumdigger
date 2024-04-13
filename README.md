# Scrumdigger

#Testing:
<a>https://developer.apple.com/tutorials/app-dev-training/handling-errors</a>

<p> In Terminal, find the path to your App Sandbox by running xcrun simctl get_app_container booted MauiDesign.Scrumdigger data. Then, copy that path into your clipboard.
You’ll use this output to navigate to your app’s data.</p>

<p> Execute the command open -a Finder <paste path to your App Sandbox> to open the sandbox in the Finder.</p>

<p>Navigate to the scrums.data file in the Documents folder.</p>

<p>Control-click the scrums.data file, and open it with TextEdit.</p>

<p>Remove the first occurrence of "id", and save the file to intentionally corrupt the JSON data.</p>

<p>Next, you’ll test how Scrumdinger responds to erroneous app data.
Build and run the app, and observe the error message.</p>

<p>Dismiss the error, and verify that Scrumdinger loads sample data.
Recall that dismissing the modal view assigns sample scrum data to the scrums array.</p>

<p>Dismiss the error, and verify that Scrumdinger loads sample data.
Recall that dismissing the modal view assigns sample scrum data to the scrums array.</p>

<p>Scrumdinger no longer presents an error view.
Build and run Scrumdinger to verify that it loads properly.
Scrumdinger now provides the user with useful messages when an error occurs. In the next chapter, you’ll build a progress ring for the meeting timer view to add visual cues.</p>

