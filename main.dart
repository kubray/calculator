import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cet Calculator',

      home: MyCalculator(),
    );
  }
}

class MyCalculator extends StatefulWidget {
  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
double result=0.0;
String strResult='0';
String operator='';
double firstNumber ;

bool isFirstNumberAfterOperationButton = true;

void onDigitPress(String text) {
  print('digit pressed $text');
  if (text == '+') {
    operator = text;
    firstNumber = result;
isFirstNumberAfterOperationButton = true;
    strResult = '';
    setState(() {

    });

  }
  else if (text == '-'){
    operator = text;
    firstNumber = result;
    isFirstNumberAfterOperationButton = true;
    strResult = '';
    setState(() {

    });

  }
  else if (text == '/'){
    operator = text;
    firstNumber = result;
    isFirstNumberAfterOperationButton = true;
    strResult = '';
    setState(() {

    });

  }
  else if (text == '*'){
    operator = text;
    firstNumber = result;
    isFirstNumberAfterOperationButton = true;
    strResult = '';
    setState(() {

    });

  }
  else if (text == '%'){
    operator = text;
    firstNumber = result;
    isFirstNumberAfterOperationButton = true;
    strResult = '';
    setState(() {

    });

  }
  else if (text == 'C'){

    setState(() {
strResult='';
result=0.0;
    });

  }







  else if (text == '=') {
    switch(operator){
      case '+':
      setState(() {
        result=result+firstNumber;
      });
      strResult='$result';
      break;

      case '-':
  setState(() {
  result=firstNumber-result;
  });
  strResult='$result';
  break;
      case '/':
        setState(() {
          result=firstNumber/result;
        });
        strResult='$result';
        break;
      case '*':
        setState(() {
          result=result*firstNumber;
        });
        strResult='$result';
        break;
      case '%':
        setState(() {
          result=(result*firstNumber)/100;
        });
        strResult='$result';
        break;




    }


  }
  else {
    var tempResult;
    if (isFirstNumberAfterOperationButton){
      tempResult = text;
      isFirstNumberAfterOperationButton = false;
    } else {
      tempResult = strResult + text;
    }
    var temp = double.tryParse(tempResult);
    if (temp != null) {
      strResult = tempResult;

      setState(() {
        result = temp ?? result;
      });
    }
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar : AppBar(
      backgroundColor: Colors.deepPurple[500],
      title: Text('Calculator'),
    ),
     body: Container(
padding: EdgeInsets.all(8.0),
        child: Column(

          children: [
            Expanded(
              flex:3,
            child : Container(
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.bottomRight,
              child: Text('$result',style: TextStyle(fontSize: 65),
              ),
            ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:[
                  buildCalcButton('1',Colors.deepPurple[400]),
                  buildCalcButton('2',Colors.deepPurple[400]),
                  buildCalcButton('3',Colors.deepPurple[400]),
                  buildCalcButton('*',Colors.deepPurple[600]),



                ],
              ),
            ),

            Expanded(child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:[
                buildCalcButton('4',Colors.deepPurple[400]),
                buildCalcButton('5',Colors.deepPurple[400]),
                buildCalcButton('6',Colors.deepPurple[400]),
                buildCalcButton('-',Colors.deepPurple[600]),

              ],
            ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:[
                  buildCalcButton('7',Colors.deepPurple[400]),
                  buildCalcButton('8',Colors.deepPurple[400]),
                  buildCalcButton('9',Colors.deepPurple[400]),
                  buildCalcButton('+',Colors.deepPurple[600]),




                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:[
                  buildCalcButton('%',Colors.deepPurple[600]),
                  buildCalcButton('0',Colors.deepPurple[400]),
                  buildCalcButton('=',Colors.deepPurple[600]),
                  buildCalcButton('/',Colors.deepPurple[600]),



                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:[

                  buildCalcButton('C',Colors.deepPurple[800]),




                ],
              ),
            ),

          ],
        ),

    ),
    );
  }

  Expanded buildCalcButton(String text, Color color) {
    return Expanded(
                  child: FlatButton(
                    onPressed:(){onDigitPress(text);},
                    shape: RoundedRectangleBorder (
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide (
                        color: Colors.white,
                        width:2.0,
                        style:BorderStyle.solid,
                      )
                    ),
                    color: color,
                      child: Text(
                        text,
                        style: TextStyle(fontSize: 45,color :Colors.white,
                        ),
                      ),


               ),
                );
  }
}
