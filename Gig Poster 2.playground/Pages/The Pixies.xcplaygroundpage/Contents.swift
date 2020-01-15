//: # Gig Poster 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![runaways-no-grid](runaways-no-grid.png "The Runaways")
 ![runaways-with-grid](runaways-with-grid.png "The Runaways")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let pink = Color(hue: 338, saturation: 83, brightness: 89, alpha: 100)
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
let beige = Color(hue: 69, saturation: 6, brightness: 87, alpha: 100)

// Begin your solution here...
//create a pink rectangle to be the background
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = pink
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

//draw squares with no fill for the four corners
//create alternating black and white rectangles
for counter in 1...7 {
    
    //proper width and conditions for rectangles
    canvas.defaultBorderWidth = 14
    canvas.drawShapesWithBorders = true
    canvas.drawShapesWithFill = false
    
    //determine x and y values
    let x = counter * 28
    let y = counter * 28
    
    //set border color
    //create variable remainder to alternate colours
    let remainder = x % 56
    if remainder == 0 {
        canvas.borderColor = beige
    } else {
        canvas.borderColor = black
    }
// actually draw the rectangles
//    canvas.drawRectangle(at: Point(x: x, y: y), width: 400, height: 400)
    canvas.drawRectangle(at: Point(x: x, y: y), width: 200, height: 200, anchoredBy: AnchorPosition.centre)
}

// draw pink rectangle to cover top of poster
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = pink
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)

/*:
 ## Use Source Control
 
 Remember to commit and push your work before 12:05 PM on Wednesday, January 15, 2020, please.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

