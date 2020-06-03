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

  final questions =  const [
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

  var _questionIndex =0;
  void answerQuestion(){

    setState(() {
      _questionIndex=_questionIndex+1;
    });
    print(_questionIndex);
    if(_questionIndex<questions.length){
      print('We have more questions.');
    }
    else{
      print('You do it.');
    }
  }

  @override
  Widget build(BuildContext context) {
    

   //  questions =[]; does not work if it is const value
    // TODO: implement build
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(title:Text('My First App'),
       ),
        body: _questionIndex<questions.length ? 
        Column(
          children: [
            Question(
                questions[_questionIndex]['questionText']
            ),
           ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
             return Answer(answerQuestion,answer);
           }).toList()
          ],
        ) :  
        Center(
          child :Text('You do it.')),
      ),
    );
  }
}
