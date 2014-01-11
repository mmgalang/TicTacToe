//
//  ViewController.m
//  TicTacToe
//
//  Created by Yash Varma on 1/10/14.
//
//

#import "ViewController.h"

@interface ViewController ()
{
    __weak IBOutlet UILabel *myLabelOne;
    __weak IBOutlet UILabel *myLabelTwo;
    __weak IBOutlet UILabel *myLabelThree;
    __weak IBOutlet UILabel *myLabelFour;
    __weak IBOutlet UILabel *myLabelFive;
    __weak IBOutlet UILabel *myLabelSix;
    __weak IBOutlet UILabel *myLabelSeven;
    __weak IBOutlet UILabel *myLabelEight;
    __weak IBOutlet UILabel *myLabelNine;
    __weak IBOutlet UILabel *whichPlayerLabel;
    
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (UILabel *)findLabelUsingPoint:(CGPoint)point
{
    UILabel *foundLabel = nil;
    if (CGRectContainsPoint(myLabelOne.frame, point)) {foundLabel = myLabelOne;}
    if (CGRectContainsPoint(myLabelTwo.frame, point)) {foundLabel = myLabelTwo;}
    if (CGRectContainsPoint(myLabelThree.frame, point)) {foundLabel = myLabelThree;}
    if (CGRectContainsPoint(myLabelFour.frame, point)) {foundLabel = myLabelFour;}
    if (CGRectContainsPoint(myLabelFive.frame, point)) {foundLabel = myLabelFive;}
    if (CGRectContainsPoint(myLabelSix.frame, point)) {foundLabel = myLabelSix;}
    if (CGRectContainsPoint(myLabelSeven.frame, point)) {foundLabel = myLabelSeven;}
    if (CGRectContainsPoint(myLabelEight.frame, point)) {foundLabel = myLabelEight;}
    if (CGRectContainsPoint(myLabelNine.frame, point)) {foundLabel = myLabelNine;}
    return foundLabel;
}
int turnCounter = 0;
NSString *Winner = @"Nobody";
- (IBAction)onLabelTapped:(UITapGestureRecognizer *)tapGestureRecognizer
{
    CGPoint point = [tapGestureRecognizer locationInView:self.view];
    UILabel *chosenLabel = [self findLabelUsingPoint:point];
    if ([chosenLabel.text isEqualToString:@" "])
    {
            chosenLabel.text = [NSString stringWithFormat:@"%@", whichPlayerLabel.text];
        
    
            if ([chosenLabel.text isEqualToString:@"X"]){
                chosenLabel.textColor = [UIColor blueColor];
            }
            else if ([chosenLabel.text isEqualToString:@"O"]){
                chosenLabel.textColor = [UIColor redColor];
            }
        
        Winner = [self whoOne];
        
        if ([Winner isEqualToString:@"X"])
        {
            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"X Wins!" message:@"Hey, O! You lost at Tic Tac Toe? Really?" delegate:nil cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
            [winnerAlert show];

        }
        if ([Winner isEqualToString:@"O"])
        {
            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"O Wins!" message:@"Hey, X! This must be your first time playing, huh?" delegate:nil cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
            [winnerAlert show];
            
        }
            turnCounter ++;
            if (turnCounter % 2 == 0) {
                    whichPlayerLabel.text = [NSString stringWithFormat:@"X"];
                    whichPlayerLabel.textColor = [UIColor blueColor];
                } else {
                    whichPlayerLabel.text = [NSString stringWithFormat:@"O"];
                    whichPlayerLabel.textColor = [UIColor redColor];
                }
             
    }
   
}

- (NSString *)whoOne {
    NSString *winner = @"Nobody";
    
    if([myLabelOne.text compare:myLabelTwo.text] == NSOrderedSame &&
       [myLabelOne.text compare:myLabelThree.text] == NSOrderedSame &&
       ![myLabelOne.text isEqualToString:@" "])
    {
           winner = whichPlayerLabel.text;
    }
    if([myLabelFour.text compare:myLabelFive.text] == NSOrderedSame &&
       [myLabelFour.text compare:myLabelSix.text] == NSOrderedSame &&
       ![myLabelFour.text isEqualToString:@" "])
    {
        winner = whichPlayerLabel.text;
    }
    if([myLabelSeven.text compare:myLabelEight.text] == NSOrderedSame &&
       [myLabelSeven.text compare:myLabelNine.text] == NSOrderedSame &&
       ![myLabelSeven.text isEqualToString:@" "])
    {
        winner = whichPlayerLabel.text;
    }
    if([myLabelOne.text compare:myLabelFour.text] == NSOrderedSame &&
       [myLabelOne.text compare:myLabelSeven.text] == NSOrderedSame &&
       ![myLabelOne.text isEqualToString:@" "])
    {
        winner = whichPlayerLabel.text;
    }
    if([myLabelTwo.text compare:myLabelFive.text] == NSOrderedSame &&
       [myLabelTwo.text compare:myLabelEight.text] == NSOrderedSame &&
       ![myLabelTwo.text isEqualToString:@" "])
    {
        winner = whichPlayerLabel.text;
    }
    if([myLabelThree.text compare:myLabelSix.text] == NSOrderedSame &&
       [myLabelThree.text compare:myLabelNine.text] == NSOrderedSame &&
       ![myLabelThree.text isEqualToString:@" "])
    {
        winner = whichPlayerLabel.text;
    }
    if([myLabelOne.text compare:myLabelFive.text] == NSOrderedSame &&
       [myLabelOne.text compare:myLabelNine.text] == NSOrderedSame &&
       ![myLabelOne.text isEqualToString:@" "])
    {
        winner = whichPlayerLabel.text;
    }
    if([myLabelThree.text compare:myLabelFive.text] == NSOrderedSame &&
       [myLabelThree.text compare:myLabelSeven.text] == NSOrderedSame &&
       ![myLabelThree.text isEqualToString:@" "])
    {
        winner = whichPlayerLabel.text;
    }
    return winner;
}






//
//- (void)findLabelUsingPoint:(CGPoint *)point{
//
//    
//}
//
//int turnCounter = 0;
//
//
//- (NSString *)whoOne {
//    
//    if([myLabelOne.text compare:myLabelTwo.text] == NSOrderedSame && [myLabelOne.text compare:myLabelThree.text] == NSOrderedSame){
//        if ([myLabelOne.text isEqualToString:@"X"]) {
//            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"You Won Player 1!" delegate:nil cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
//                [winnerAlert show];
//        } else {
//            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"You Won Player 2!" delegate:nil cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
//                [winnerAlert show];
//        }
//    }
//    
//    if([myLabelFour.text compare:myLabelFive.text] == NSOrderedSame && [myLabelFour.text compare:myLabelSix.text] == NSOrderedSame){
//        if ([myLabelFour.text isEqualToString:@"X"]) {
//            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"You Won Player 1!" delegate:nil cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
//            [winnerAlert show];
//        } else {
//            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"You Won Player 2!" delegate:nil cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
//            [winnerAlert show];
//        }
//    }
//    
//    if([myLabelSeven.text compare:myLabelEight.text] == NSOrderedSame && [myLabelSeven.text compare:myLabelNine.text] == NSOrderedSame){
//        if ([myLabelSeven.text isEqualToString:@"X"]) {
//            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"You Won Player 1!" delegate:nil cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
//            [winnerAlert show];
//        } else {
//            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"You Won Player 2!" delegate:nil cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
//            [winnerAlert show];
//        }
//    }
//    
//    if([myLabelOne.text compare:myLabelFour.text] == NSOrderedSame && [myLabelOne.text compare:myLabelSeven.text] == NSOrderedSame){
//        if ([myLabelOne.text isEqualToString:@"X"]) {
//            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"You Won Player 1!" delegate:nil cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
//            [winnerAlert show];
//        } else {
//            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"You Won Player 2!" delegate:nil cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
//            [winnerAlert show];
//        }
//    }
//    
//    if([myLabelTwo.text compare:myLabelFive.text] == NSOrderedSame && [myLabelTwo.text compare:myLabelEight.text] == NSOrderedSame){
//        if ([myLabelTwo.text isEqualToString:@"X"]) {
//            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"You Won Player 1!" delegate:nil cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
//            [winnerAlert show];
//        } else {
//            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"You Won Player 2!" delegate:nil cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
//            [winnerAlert show];
//        }
//    }
//    
//    if([myLabelThree.text compare:myLabelSix.text] == NSOrderedSame && [myLabelThree.text compare:myLabelNine.text] == NSOrderedSame){
//        if ([myLabelThree.text isEqualToString:@"X"]) {
//            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"You Won Player 1!" delegate:nil cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
//            [winnerAlert show];
//        } else {
//            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"You Won Player 2!" delegate:nil cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
//            [winnerAlert show];
//        }
//    }
//    
//    if([myLabelOne.text compare:myLabelFive.text] == NSOrderedSame && [myLabelOne.text compare:myLabelNine.text] == NSOrderedSame){
//        if ([myLabelOne.text isEqualToString:@"X"]) {
//            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"You Won Player 1!" delegate:nil cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
//            [winnerAlert show];
//        } else {
//            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"You Won Player 2!" delegate:nil cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
//            [winnerAlert show];
//        }
//    }
//    
//    if([myLabelThree.text compare:myLabelFive.text] == NSOrderedSame && [myLabelThree.text compare:myLabelSeven.text] == NSOrderedSame){
//        if ([myLabelThree.text isEqualToString:@"X"]) {
//            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"You Won Player 1!" delegate:nil cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
//            [winnerAlert show];
//        } else {
//            UIAlertView *winnerAlert = [[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"You Won Player 2!" delegate:nil cancelButtonTitle:@"Play Again?" otherButtonTitles: nil];
//            [winnerAlert show];
//        }
//    }
//    return 0;
//}
//
//- (IBAction)onLabelTapped:(UITapGestureRecognizer *)tapGestureRecognizer{
//    
//    CGPoint point = [tapGestureRecognizer locationInView:self.view];
//    if (CGRectContainsPoint(myLabelOne.frame, point)) {
//        myLabelOne.text = [NSString stringWithFormat:@"%@", whichPlayerLabel.text];
//        turnCounter ++;
//        
//        if ([myLabelOne.text isEqualToString:@"X"]) {
//            myLabelOne.textColor = [UIColor blueColor];
//        } else if ([myLabelOne.text isEqualToString:@"O"]) {
//            myLabelOne.textColor = [UIColor redColor];
//        }
//    }
//    
//    if (CGRectContainsPoint(myLabelTwo.frame, point)) {
//        myLabelTwo.text = [NSString stringWithFormat:@"%@", whichPlayerLabel.text];
//        turnCounter ++;
//        if ([myLabelTwo.text isEqualToString:@"X"]) {
//            myLabelTwo.textColor = [UIColor blueColor];
//        } else if ([myLabelTwo.text isEqualToString:@"O"]) {
//            myLabelTwo.textColor = [UIColor redColor];
//        }
//    }
//
//    if (CGRectContainsPoint(myLabelThree.frame, point)) {
//        myLabelThree.text = [NSString stringWithFormat:@"%@", whichPlayerLabel.text];
//        turnCounter ++;
//        if ([myLabelThree.text isEqualToString:@"X"]) {
//            myLabelThree.textColor = [UIColor blueColor];
//        } else if ([myLabelThree.text isEqualToString:@"O"]) {
//            myLabelThree.textColor = [UIColor redColor];
//        }
//    }
//    
//    if (CGRectContainsPoint(myLabelFour.frame, point)) {
//        myLabelFour.text = [NSString stringWithFormat:@"%@", whichPlayerLabel.text];
//        turnCounter ++;
//        if ([myLabelFour.text isEqualToString:@"X"]) {
//            myLabelFour.textColor = [UIColor blueColor];
//        } else if ([myLabelFour.text isEqualToString:@"O"]) {
//            myLabelFour.textColor = [UIColor redColor];
//        }
//    }
//    
//    if (CGRectContainsPoint(myLabelFive.frame, point)) {
//        myLabelFive.text = [NSString stringWithFormat:@"%@", whichPlayerLabel.text];
//        turnCounter ++;
//        if ([myLabelFive.text isEqualToString:@"X"]) {
//            myLabelFive.textColor = [UIColor blueColor];
//        } else if ([myLabelFive.text isEqualToString:@"O"]) {
//            myLabelFive.textColor = [UIColor redColor];
//        }
//    }
//    
//    if (CGRectContainsPoint(myLabelSix.frame, point)) {
//        myLabelSix.text = [NSString stringWithFormat:@"%@", whichPlayerLabel.text];
//        turnCounter ++;
//        if ([myLabelSix.text isEqualToString:@"X"]) {
//            myLabelSix.textColor = [UIColor blueColor];
//        } else if ([myLabelSix.text isEqualToString:@"O"]) {
//            myLabelSix.textColor = [UIColor redColor];
//        }
//    }
//    
//    if (CGRectContainsPoint(myLabelSeven.frame, point)) {
//        myLabelSeven.text = [NSString stringWithFormat:@"%@", whichPlayerLabel.text];
//        turnCounter ++;
//        if ([myLabelSeven.text isEqualToString:@"X"]) {
//            myLabelSeven.textColor = [UIColor blueColor];
//        } else if ([myLabelSeven.text isEqualToString:@"O"]) {
//            myLabelSeven.textColor = [UIColor redColor];
//        }
//    }
//    
//    if (CGRectContainsPoint(myLabelSeven.frame, point)) {
//        myLabelSeven.text = [NSString stringWithFormat:@"%@", whichPlayerLabel.text];
//        turnCounter ++;
//        if ([myLabelSeven.text isEqualToString:@"X"]) {
//            myLabelSeven.textColor = [UIColor blueColor];
//        } else if ([myLabelSeven.text isEqualToString:@"O"]) {
//            myLabelSeven.textColor = [UIColor redColor];
//        }
//    }
//    
//    if (CGRectContainsPoint(myLabelEight.frame, point)) {
//        myLabelEight.text = [NSString stringWithFormat:@"%@", whichPlayerLabel.text];
//        turnCounter ++;
//        if ([myLabelEight.text isEqualToString:@"X"]) {
//            myLabelEight.textColor = [UIColor blueColor];
//        } else if ([myLabelEight.text isEqualToString:@"O"]) {
//            myLabelEight.textColor = [UIColor redColor];
//        }
//    }
//    
//    if (CGRectContainsPoint(myLabelNine.frame, point)) {
//        myLabelNine.text = [NSString stringWithFormat:@"%@", whichPlayerLabel.text];
//        turnCounter ++;
//        if ([myLabelNine.text isEqualToString:@"X"]) {
//            myLabelNine.textColor = [UIColor blueColor];
//        } else if ([myLabelNine.text isEqualToString:@"O"]) {
//            myLabelNine.textColor = [UIColor redColor];
//        }
//    }
//    
//    [self whoOne];
//    
//    if (turnCounter % 2 == 0) {
//        whichPlayerLabel.text = [NSString stringWithFormat:@"O"];
//        whichPlayerLabel.textColor = [UIColor redColor];
//    } else {
//        whichPlayerLabel.text = [NSString stringWithFormat:@"X"];
//        whichPlayerLabel.textColor = [UIColor blueColor];
//    }
//    
//    if (turnCounter > 9){
//        UIAlertView *endGame = [[UIAlertView alloc] initWithTitle:@"Game Over" message:@"Game" delegate:nil cancelButtonTitle:@"Play Again" otherButtonTitles: nil];
//        [endGame show];
//    }
//}
//
//    



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
