# APValidators

![APValidators](/images/apvalidators_cover.png)

[![Build Status](https://www.bitrise.io/app/c310b69440b5dc74.svg?token=MYgb5mr11INehfMT5USCTg&branch=master)](https://www.bitrise.io/app/c310b69440b5dc74)
[![codecov.io](https://codecov.io/github/Alterplay/APValidators/coverage.svg?branch=master)](https://codecov.io/github/Alterplay/APValidators?branch=master)
[![Version](https://img.shields.io/cocoapods/v/APValidators.svg?style=flat)](http://cocoapods.org/pods/APValidators)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/APValidators.svg?style=flat)](http://cocoapods.org/pods/APValidators)
[![Platform](https://img.shields.io/cocoapods/p/APValidators.svg?style=flat)](http://cocoapods.org/pods/APValidators)

***Form validation without any code!***

APValidators is a codeless solution for form validation. Just connect everything right in Interface Builder and you're done. Supports really complex and extendable forms by allowing to connect validators in tree.

## Features
* Tree structure for validation rules. 
* No need for any inheritance in UI classes. This means you can use any UITextField or UITextView subclasses and still use APValidators.
* Easy to integrate to any codebase. 
* Perfect unit tests code coverage.

## Usage

1. Create your form UI in Interface Builder.
2. In Interface builder add Object ![Object](/images//ib-object.png) to your UIViewController for every validator. 

    ![Validators](/images/validators.png)
3. Assign custom class for every validator. 

    * `APRegexValidator` - validates over regex expression.
    * `APRequiredValidator` - validates that string is not empty.
    * `APZipValidator` - ZIP code validation. Must have two-letters country code assigned. Currently supports 151 countries.
    * `APEmailValidator` - email validation.
    * `APEqualValidator` - validates that two controls has equal text.
    * `APBlockValidator` - invokes custom block for validation.
    * `APCreditCardValidator` - validates credit card number by Luhn alghoritm. Also returns credit card type.
    * `APCharactersCountValidator` - validates lenght of string by min and max characters count. 
    * `APCompoundValidator` - allows to connect child validators. Will have valid state only if every child validator has valid state. Also returns `errorMessages` array of all not valid child validators `errorMessage` properties at the moment. 

    ![Assign subclass](/images/assign-class.png)
4. Connect your UI-control `validator` property to validator Object. APValidators currently support only UITextField and UITextView subclasses. 

    ![Connect validator](/images/connect-validator.png)
5. Use `APCompoundValidator` if you need more than one validator for UI-control. Connect it to UI-control and all validators to it's `validators` property. 

    ![Compound validator](/images/compound-validator.png)
6. Use one `APCompoundValidator` as form validator and connect all other validators to it. 

    ![Form validator](/images/form-validator.png)

## Example

To run the example project, clone the repo, and run pod install from the Example directory first.

## Requirements

- iOS 8.0 and higher
- ARC

## Installation

### Installation via CocoaPods

APValidators is available through [CocoaPods](http://cocoapods.org). CocoaPods is a dependency manager that automates and simplifies the process of using 3rd-party libraries like APValidators in your projects. You can install CocoaPods with the following command:

```ruby
gem install cocoapods
```

To integrate APValidators into your Xcode project using CocoaPods, simply add the following line to your Podfile:

```ruby
pod "APValidators"
```

Afterwards, run the following command:

```ruby
pod install
```

### Installation via Carthage

APValidators is available through [Carthage](https://github.com/Carthage/Carthage). Carthage is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage via [Homebrew](http://brew.sh) with the following command:

```ruby
brew update
brew install carthage
```

To integrate APValidators into your Xcode project using Carthage, simply add the following line to your Cartfile:

```ruby
github "Alterplay/APValidators"
```

Afterwards, run the following command:

```ruby
carthage update
```

## Author

Nickolay Sheika, hawk.ukr@gmail.com

## Contacts

If you have improvements or concerns, feel free to post [an issue](https://github.com/Alterplay/APValidators/issues) and write details.

[Check out](https://github.com/Alterplay) all Alterplay's GitHub projects.
[Email us](mailto:hello@alterplay.com?subject=From%20GitHub%20APValidators) with other ideas and projects.

## License

APValidators is available under the MIT license. See the LICENSE file for more info.
