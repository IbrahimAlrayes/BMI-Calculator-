import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconWidget.dart';
import 'miniCard.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = kInactiveColor;
  Color femaleColor = kInactiveColor;
  int height = 180;
  int weight = 65;
  int age = 18;

  void updateColor(Gender g) {
    if (g == Gender.male) {
      maleColor = kActiveColor;
      femaleColor = kInactiveColor;
    } else {
      femaleColor = kActiveColor;
      maleColor = kInactiveColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: miniCard(
                    onPress: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    cardChild:
                        IconWidget(text: 'MALE', icon: FontAwesomeIcons.mars),
                    backgroundColor: maleColor,
                  ),
                ),
                Expanded(
                  child: miniCard(
                      onPress: () {
                        setState(() {
                          updateColor(Gender.female);
                        });
                      },
                      cardChild: IconWidget(
                          text: 'FEMALE', icon: FontAwesomeIcons.venus),
                      backgroundColor: femaleColor),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: miniCard(
                      onPress: () {},
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HIEGHT',
                            style: kTextStyle,
                          ),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.baseline,
                            // textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toString(),
                                style: kTextStyleNumbers,
                              ),
                              Text(
                                'cm',
                                style: kTextStyle,
                              ),
                            ],
                          ),
                          Slider(
                              value: height.toDouble(),
                              label: height.toString(),
                              min: 120,
                              max: 220,
                              activeColor: Color.fromARGB(255, 176, 177, 184),
                              inactiveColor: Color(0xFF8D8E98),
                              thumbColor: Color.fromARGB(255, 193, 27, 27),
                              onChanged: (double value) {
                                setState(() {
                                  height = value.toInt();
                                });
                              })
                        ],
                      ),
                      backgroundColor: Colors.white10),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: miniCard(
                      onPress: () {},
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: kTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kTextStyleNumbers,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                )
                              ],
                            )
                          ]),
                      backgroundColor: Colors.white10),
                ),
                Expanded(
                  child: miniCard(
                      onPress: () {},
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: kTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kTextStyleNumbers,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                )
                              ],
                            )
                          ]),
                      backgroundColor: Colors.white10),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/second');
            },
            child: Container(
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: kTextStyle,
                ),
              ),
              height: 60,
              width: double.infinity,
              color: Color.fromARGB(255, 193, 27, 27),
            ),
          )
        ],
      ),
    );
  }
}
