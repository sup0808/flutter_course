import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return _MyAppState();
  }

}
class _MyAppState extends State<MyApp>{

  var _questionIndex =0;
  void answerQuestion(){

    setState(() {
      _questionIndex=_questionIndex=1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions=[
      {
        'questionText': 'What \'s your favourite color?',
        'answers': ['red','Black','Green','White']

      },
      {
        'questionText': 'What \'s your favourite animal?',
        'answers': ['Cow','Lion','Goad','Cat']

      },
       {
        'questionText': 'What \'s your favourite Bird?',
        'answers': ['Parrot','Crow','Cock','Pigeon']

      },
   
     ];
    // TODO: implement build
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(title:Text('My First App'),
       ),
        body: Column(
          children: [
            Question(
                questions[_questionIndex]['questionText']
            ),
           ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
             return Answer(answerQuestion,answer);
           }).toList()
          ],
        ),
      ),
    );
  }
}
