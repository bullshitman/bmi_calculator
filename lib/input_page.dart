import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardsColor = Color(0xFF1D1F33);
const inactiveCardColor = Color(0xFF111328);
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void changeColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      maleCardColor == inactiveCardColor
          ? maleCardColor = activeCardsColor
          : maleCardColor = inactiveCardColor;
    }
    if (selectedGender == Gender.female) {
      femaleCardColor == inactiveCardColor
          ? femaleCardColor = activeCardsColor
          : femaleCardColor = inactiveCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        changeColor(Gender.male);
                      });
                    },
                    child: ReusableCard(
                      color: maleCardColor,
                      cardChild: IconContent(
                        label: 'MALE',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        changeColor(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      color: femaleCardColor,
                      cardChild: IconContent(
                        label: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: activeCardsColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardsColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardsColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
            color: bottomContainerColor,
          ),
        ],
      ),
    );
  }
}
