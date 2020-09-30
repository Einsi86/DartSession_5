/*
 Continued..

 Now that we have our conditions, we can continue.
 Create a if-else block, were we enter the if block only if both condition1 and
 condition 2 are met. Inside there, we want to subtract the year the user entered
 from the result from step4, and save the results as step5.

 If both condition1 and condition2 are true:
  subtract the year the user entered from the result from step4
  As usual, print what operations you are performing.
 Else:
  User is a fool, exit the program

 */
import 'dart:io';

void main() {
  print('Enter a number between 2 and 10');
  int nbr = int.parse(stdin.readLineSync());

  if (nbr >= 2 && nbr <= 10) {
    int step1 = nbr * 2;
    print('I will calculate: 2 * $nbr = $step1');

    int step2 = step1 + 5;
    print('I will calculate: $step1 + 5 = $step2');

    int step3 = step2 * 50;
    print('I will calculate: $step2 * 50 = $step3');

    print('Have you already celebrated your birthday this year? [yes/no]');
    String answer = stdin.readLineSync();
    int bias;
    if (answer.toLowerCase() == 'yes') {
      bias = 1770;
    } else if (answer.toLowerCase() == 'no') {
      bias = 1769;
    } else {
      print('Please enter yes or no you fool!');
      exit(0);
    }
    int step4 = step3 + bias;
    print('I will calculate: $step3 + $bias = $step4');

    print('When are you born?');
    String year = stdin.readLineSync();

    bool condition1 = year.length == 4;
    int decade = int.parse(year.substring(0, 2));
    bool condition2 = ( decade == 19 || decade == 20);

    if (condition1 && condition2){
      int step5 = step4 - int.parse(year);
      print('I will calculate: $step4 - $year = $step5');
    } else {
      print('You fool! The year is invalid, you entered $year');
    }

  } else {
    print('You fool! Between 2 and 10! You entered $nbr! Try again!');
  }

}