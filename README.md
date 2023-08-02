# ios-technical-interview
# Code Challenge Instructions
## Build an app that downloads, parses, and displays phone numbers
### Download
  1. Open the phoneListServer project under ios-technical-interview/phoneListServer run this app (you may have to adjust the signing)
  2. Use this url to access the list of phone numbers you will be required to parse: "http://localhost:8181/phone-numbers"
  3. Use URLSession without any 3rd party code
  4. Use async await
  5. The phone numbers downloaded from the server are the only countries that need to be supported.
### Parse
  1. Once you've downloaded the phone numbers
  1. Use Apple's [Regex Builder](https://developer.apple.com/documentation/regexbuilder) to parse the phone numbers
  1. Parse the phone numbers into the given `PhoneNumber` struct using the given `parsePhoneNumber(input:) throws -> PhoneNumber` function
  2. Pay close attention to the two required formats inside the `PhoneNumber` struct (e164 and international)
### Display
  1. Build SwiftUI view(s) to display the parsed numbers.
  2. Make sure the country flag and at least one of the formatted versions of the phone number are present.
  3. If the phone number from the server is invalid, still display that number with some indication that it in invalid. Do not exclude it in the UI
  4. Tapping on a US phone number should prompt the system to call that number
  5. Tapping on a non-US phone number should show an alert the user will be charged additional fees before calling the number

## Other Notes
  1. Keep any browser tabs open you use and open a new tab for each new search
  2. AI is allowed
  3. No 3rd party libraries/packages are allowed
  4. Don't look at any other branches of this repo
  6. You should have about 45 minutes to complete this challenge
  7. Be ready to answer questions about your decisions
  8. Good Luck!
