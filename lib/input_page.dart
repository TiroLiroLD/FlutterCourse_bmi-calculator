import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'gender_icon.dart';

const double bottomContainerHeight = 80.0;
const Color defaultCardColor = Colors.brown;
const Color selectedCardColor = Color(0xFFFF6D4C41);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Colors.brown[500],
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onTap: () => setState(() {
                      selectedGender = Gender.male;
                    }),
                    colour: selectedGender == Gender.male
                        ? selectedCardColor
                        : defaultCardColor,
                    cardChild: GenderWidget(
                      genderIcon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? selectedCardColor
                        : defaultCardColor,
                    cardChild: GenderWidget(
                      genderIcon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: defaultCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: defaultCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: defaultCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.red,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}

enum Gender {
  male,
  female,
}
