import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusablecodes.dart';
import 'reusableicon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'roundbutton.dart';
import 'functionality.dart';
import 'results_page.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender{male,female}

class _InputPageState extends State<InputPage> {

Gender selectedgender;
int HeightValue=180;
int WeightValue=60;
int AgeValue=25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCode(
                    onpressed:(){
                      setState(() {
                        selectedgender=Gender.male;
                               }
                               );
                          },
                    color:selectedgender==Gender.male ?kActivecardcolor:kInactivecolor,
                    customchild: Reusbleicon(icon:FontAwesomeIcons.mars,label:'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCode(
                    onpressed:(){
                      setState(() {
                        selectedgender=Gender.female;
                          });
                      },
                    color:selectedgender==Gender.female ?kActivecardcolor:kInactivecolor,
                    customchild: Reusbleicon(icon:FontAwesomeIcons.venus,label:'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCode(
              color: kActivecardcolor,
              customchild:Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT',
                    style:kTextstyle,
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      crossAxisAlignment:CrossAxisAlignment.baseline,
                      textBaseline:TextBaseline.alphabetic,
                      children: [
                        Text(HeightValue.toString(),
                        style:TextStyle(
                          fontSize:60.0,
                          fontWeight: FontWeight.bold,
                        ) ,),
                        Text('CM',
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor:Colors.white,
                        inactiveTrackColor:Color(0xFF8D8E98),
                        thumbColor:Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius:16.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value:HeightValue.toDouble(),
                        min: 120,
                        max: 240,
                        onChanged: (double value) {
                          setState(() {
                            HeightValue=value.round();
                          });
                        },


                      ),
                    ),


                  ],

                ),
              ) ,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCode(
                    color: kActivecardcolor,
                    customchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text('WEIGHT',
                      style:kTextstyle,
                    ),
                     Text(WeightValue.toString(),
                     style: TextStyle(
                       fontSize: 60.0,
                       fontWeight: FontWeight.bold,
                     ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon:FontAwesomeIcons.minus,onpress: (){
                              setState(() {
                               WeightValue--;
                              });

                            },),
                            SizedBox(
                              width: 20.0,
                            ),
                        RoundIconButton(icon: FontAwesomeIcons.plus,onpress: (){
                          setState(() {
                           WeightValue++;
                          });

                        },),
                          ],
                        )
                    ],
                  ),
                ),
                ),
                Expanded(
                  child: ReusableCode(
                    color: kActivecardcolor,
                    customchild:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',
                          style:kTextstyle,
                        ),
                        Text(AgeValue.toString(),
                          style: TextStyle(
                            fontSize: 60.0,
                            fontWeight: FontWeight.bold,
                          ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           RoundIconButton(icon: FontAwesomeIcons.minus,onpress: (){
                             setState(() {
                               AgeValue--;
                             });

                           },
                           ),
                            SizedBox(
                              width: 20.0,
                            ),
                            RoundIconButton(icon: FontAwesomeIcons.plus,onpress: (){
                              setState(() {
                                AgeValue++;
                              });

                            },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              FunctionBrain calc=FunctionBrain(height:HeightValue,weight:WeightValue);
              Navigator.push(context,MaterialPageRoute(builder:(context)=>ResultPage(BmiValue:calc.CalculateBMI(), BmiString:calc.BmiString(), quote:calc.BmiQuote()),),);


            },
            child: Container(
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFEB1555),
              ),
              alignment: Alignment.center,
              child: Text('CALCULATE BMI',
              style:kBottomText),
              margin: EdgeInsets.only(top: 10),

              width: double.infinity,
              height: KBottomHeight,
            ),
          ),

        ],
      ),

    );
  }
}







