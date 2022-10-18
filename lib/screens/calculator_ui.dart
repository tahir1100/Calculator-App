import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CalculatorUi extends StatefulWidget {
  const CalculatorUi({super.key});

  @override
  State<CalculatorUi> createState() => _CalculatorUiState();
}

class _CalculatorUiState extends State<CalculatorUi> {
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      height: 75,
      width: 75,
      child: ElevatedButton(
        onPressed: () {
          calculation(btntxt);
        },
        style: ElevatedButton.styleFrom(
          primary: btncolor,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
        child: Text(
          btntxt,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          height: 50,
          items: const [
            Icon(
              Icons.calculate,
            ),
            Icon(Icons.currency_exchange),
            Icon(Icons.person),
          ],
        ),
        body: SingleChildScrollView(
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Card(
                  color: Colors.black,
                  child: Container(
                    alignment: Alignment.bottomRight,
                    height: MediaQuery.of(context).size.height / 2.7,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    calcbutton('7', Colors.white, Colors.black),
                    calcbutton('8', Colors.white, Colors.black),
                    calcbutton('9', Colors.white, Colors.black),
                    calcbutton('x', Colors.grey, Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    calcbutton('4', Colors.white, Colors.black),
                    calcbutton('5', Colors.white, Colors.black),
                    calcbutton('6', Colors.white, Colors.black),
                    calcbutton('/', Colors.grey, Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    calcbutton('1', Colors.white, Colors.black),
                    calcbutton('2', Colors.white, Colors.black),
                    calcbutton('3', Colors.white, Colors.black),
                    calcbutton('+', Colors.grey, Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    calcbutton('=', Color(0xffff9702), Colors.white),
                    calcbutton('0', Colors.white, Colors.black),
                    calcbutton('C', Colors.grey, Colors.black),
                    calcbutton('-', Colors.grey, Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //Calculator logic
  dynamic text = '0';
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';
  void calculation(btnText) {
    if (btnText == 'C') {
      text = '0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';
    } else if (opr == '=' && btnText == '=') {
      if (preOpr == '+') {
        finalResult = add();
      } else if (preOpr == '-') {
        finalResult = sub();
      } else if (preOpr == 'x') {
        finalResult = mul();
      } else if (preOpr == '/') {
        finalResult = div();
      }
    } else if (btnText == '+' ||
        btnText == '-' ||
        btnText == 'x' ||
        btnText == '/' ||
        btnText == '=') {
      if (numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }

      if (opr == '+') {
        finalResult = add();
      } else if (opr == '-') {
        finalResult = sub();
      } else if (opr == 'x') {
        finalResult = mul();
      } else if (opr == '/') {
        finalResult = div();
      }
      preOpr = opr;
      opr = btnText;
      result = '';
    } else if (btnText == '%') {
      result = numOne / 100;
      finalResult = doesContainDecimal(result);
    } else if (btnText == '.') {
      if (!result.toString().contains('.')) {
        result = result.toString() + '.';
      }
      finalResult = result;
    } else if (btnText == '+/-') {
      result.toString().startsWith('-')
          ? result = result.toString().substring(1)
          : result = '-' + result.toString();
      finalResult = result;
    } else {
      result = result + btnText;
      finalResult = result;
    }

    setState(() {
      text = finalResult;
    });
  }

  String add() {
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String mul() {
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String div() {
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String doesContainDecimal(dynamic result) {
    if (result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }
}
