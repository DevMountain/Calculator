# Calculator

### Level 2

Students will build a reverse polish notation calculator that demonstrates auto layout, stacks, target-actions on UIButtons, programatic views.

Students who complete this project independently are able to:

* build an app without Storyboard
* use and understand [auto layout](https://developer.apple.com/library/mac/documentation/UserExperience/Conceptual/AutolayoutPG/index.html) and [constraints](https://developer.apple.com/library/mac/documentation/UserExperience/Conceptual/AutolayoutPG/AnatomyofaConstraint.html#//apple_ref/doc/uid/TP40010853-CH9-SW1)
* use and understand the [target-action design pattern](https://developer.apple.com/library/ios/documentation/General/Conceptual/Devpedia-CocoaApp/TargetAction.html)
* use and understand the [coordinate gird system](https://developer.apple.com/library/ios/documentation/General/Conceptual/Devpedia-CocoaApp/CoordinateSystem.html#//apple_ref/doc/uid/TP40009071-CH8-SW1)
* use and understand the [stack data structure](https://en.wikipedia.org/wiki/Stack_(abstract_data_type))

### Remove Storyboard

##### Delete ```Main.storyboard```, change the Main Interface in the project file, set up the ```UIWindow``` in the ```AppDelegate```.

1. Select ```Main.storyboard```, tap delete, and move to trash.
2. In the project file (the blue icon), change the "Main Interface" to ```LaunchScreen```. 
3. In the ```AppDelegate```'s ```application:didFinishLauchingWithOptions:```, set up the window.
4. Programatically change the background of the view controller you set as the root view controller to see if you have set everything up correctly.

### View Controller's Views

##### Programatically add a ```UILabel``` and 15 ```UIButton```s to set up the view a user would expect on a calculator. Use ```NSLayoutContstraints``` set up autolayout. See Screen0.png for an example. Please avoid copying the solution code; type your answer yourself.

Run app after each step. Examples of the view appearance are provided at each step. The screen number matches the step number. *Do not proceed to next step until you get your desired constraints for current step.* Use background colors or the view debugger.

1. Add a UILabel that is toward the top of the view and is the width of the screen.
2. Add all buttons to the view. You'll need buttons for 0-9, "/", "*", "-", "+", "Enter".
3. Constrain the top row of buttons. Don't worry about the width or height of the buttons at this point.
4. Constrain the second row of buttons. Don't worry about the width or height of the buttons at this point.
5. Constrain the third row of buttons. Don't worry about the width or height of the buttons at this point.
6. Constrain the fourth and bottom row of buttons. Don't worry about the width or height of the buttons at this point.
7. Constrain the height of all the buttons to one common button's height; set them to be equal. Don't worry about the width at this point.
8. Constrain the width of all the buttons (except the 0 button) to one common button's width; set them to be equal. Worry about the width at this point ;).

### Implement Stack

##### Create a ```Stack``` class that will hold the numbers that the user has entered into the calculator. You should have methods to pop a number off the stack, push a number on the stack, log the stack, get the count of number of items on the stack.

1. Add a private array of floats as a property.
2. Add a function called pop that returns a ```Float?``` This will remove the last object from the array.
3. Add a function called push that accepts a ```Float```. This will add the ```Float``` to the array.
4. Add a function called log that will print the array.
5. Add a function called count that will return the count of the array.

### Implement number buttons

##### Add a function to allow the user to enter a number. When they tap on the digit button, they should see their number appear in the display label.

1. Add a property to the view controller to hold where the user is in the middle of typing a number.
2. Add a function to the view controller that accepts a ```UIButton``` as a parameter.
3. Using the buttons title and the property added in step 1, if the user is in the middle of typing a number, you should append the correct digit, else replace the display label with the correct digit and set the user is in the middle of typing a number property to true.
4. Add target-actions to each digit button that will call this function you defined in step 2.

### Implement a computed property

##### Implement a computed property that will return the display label's text as a ````Float``` and set the display label's text with a ```Float```.

1. Add a property called ```displayValue``` of type ```Float```.
2. Add a getter function that will return the display label's value. Convert the String of the text to an NSString to use the ```.floatValue``` property
3. Add a setter function that will create a String from the ```newValue``` and set the display label's text. Also set the user is in the middle of typing a number.

### Implement enter button

##### Add a property to hold a Stack instance. Add a function that will push the ```displayValue``` on the stack and log the stack.

1. Set the user is in the middle of typing a number property to false.
2. Push the display value on the stack
3. Log the stack

### Implement the operate button 

##### Add a function that takes in a ```UIButton``` as a parameter. Based on the buttons title perform the requested operation on the top two numbers on the stack.

1. Make sure the ```UIButton``` parameter exists.
2. Check if the user is in the middle of typing a number. If so, call enter. The user should be able to type "5", "Enter", "5", "*" and see 25.0.
3. Check to make sure that there are two numbers on the stack. If so, pop two numbers off the stack. Switch on the button title, under each case perform the correct operation on the two numbers and set the ```displayValue``` to the return value of the correct operation. Call enter to push the result on the stack.

### Black Diamonds

* Make it so the user can't enter multiple zeros for a number.
* Make it display the numbers better after a calculation. (Do we always want that zero after the decimal appearing?)
* Add a square root, sine, cosine, tanget buttons. (These are one parameter operations.)
* Add a display so the user can see previous commands entered.
* Add a clear button to clear above history.
* Add a backspace button to allow user to delete individual digits.
* Build using a different type of autolayout than you previously did. (NSLayoutConstraints, Anchors, StackViews, Visual Format Language, Storyboards)

## Contributions

Please refer to CONTRIBUTING.md.

## Copyright

© DevMountain LLC, 2015. Unauthorized use and/or duplication of this material without express and written permission from DevMountain, LLC is strictly prohibited. Excerpts and links may be used, provided that full and clear credit is given to DevMountain with appropriate and specific direction to the original content.