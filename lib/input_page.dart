import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeBoxColor = 0xFF1D1E33;
const bottomContainerColor = 0xFFEB1555;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: Color(activeBoxColor)),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(activeBoxColor)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: Color(activeBoxColor)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: Color(activeBoxColor)),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(activeBoxColor)),
                ),
              ],
            ),
          ),
          Container(
            color: Color(bottomContainerColor),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
