import 'package:bmi_calculator/reusablecodes.dart';
import 'package:flutter/material.dart';
import 'reusablecodes.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.BmiValue,@required this.BmiString,@required this.quote});

  final String BmiValue;
  final String BmiString;
  final String quote;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Container
              ( alignment: Alignment.center,
              child: Text('YOUR RESULT', style: ktextonresult,),
            ),
            ),
            Expanded(
              flex: 5,
              child:ReusableCode(
                color:kActivecardcolor,
                customchild:Column(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    Text(BmiString,style:kTexttopres,
                    ),
                    Text(BmiValue,
                      style:kBmitext,
                    ),
                    Text(quote,style: kBmiquote,
                    textAlign:TextAlign.center),
                  ],
                ) ,
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFEB1555),
                ),
                alignment: Alignment.center,
                child: Text('RECALCULATE',
                  style:kBottomText),
                margin: EdgeInsets.only(top: 10),

                width: double.infinity,
                height:80.0,
              ),
            )

          ],
        )
    );
  }
}
