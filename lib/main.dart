
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('BMI Calculator'),
          ),
          backgroundColor: Colors.black,
          body:
          BmiCalculator(),
        ),
  ));
}

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Container(
                      decoration: BoxDecoration( color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      width: 225.0,
                        child:
                        Column(
                          children: [
                            Icon(
                                Icons.male, size: 200.0, color: Colors.blue),
                            Text(
                                'Male', style: TextStyle(fontSize: 30.0),),
                          ],
                        ),
                    ),

                  SizedBox(width: 10),

                  Container(
                    decoration: BoxDecoration( color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    width: 225.0,
                    child:
                    Column(
                      children: [
                        Icon(
                            Icons.female, size: 200.0, color: Colors.pink),
                       Text(
                            'Female', style: TextStyle(fontSize: 30.0),),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(height: 10.0,),

              Container(
                decoration: BoxDecoration( color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                        'Height', style: TextStyle(fontSize: 30.0),),
                    Text(
                      '100', style: TextStyle(fontSize: 50.0),),
                    Slider(value: 50.0, onChanged: (value) {
                      
                    },
                      min: 0,
                      max: 100,
                      divisions: 1,
                    )
                  ],
                ),
              ),

              Divider(height: 10.0,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration( color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    width: 225.0,
                    child:
                    Column(
                      children: [
                        Text(
                            'Weight', style: TextStyle(fontSize: 30.0),),
                        Text(
                          '60', style: TextStyle(fontSize: 50.0),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            IconButton(onPressed: (){

                            },
                                icon: Icon(Icons.add_circle) ),

                            IconButton(onPressed: () {

                            },
                                icon: Icon(Icons.remove_circle)),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10),

                  Container(
                    decoration: BoxDecoration( color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    width: 225.0,
                    child:
                    Column(
                      children: [
                        Text(
                          'Age', style: TextStyle(fontSize: 30.0),),
                        Text(
                          '17', style: TextStyle(fontSize: 50.0),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(onPressed: (){

                            }, icon: Icon(Icons.add_circle)
                            ),

                            IconButton(onPressed: () {

                            },
                                icon: Icon(Icons.remove_circle)
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Divider(height: 15.0),

              Container(
                width: double.infinity,
                height: 70.0,
                child: FilledButton(
                    onPressed: () {

                },
                    child: Text(
                        'Calculate BMI', style: TextStyle(fontSize: 25.0)
                    )
                ),
              ),


            ],
        ),
    );
  }
}
