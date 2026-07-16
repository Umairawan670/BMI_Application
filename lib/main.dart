import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
var wtController = TextEditingController();
var ftController = TextEditingController();
var inController = TextEditingController();
var result = "";
var bcolor = Colors.lightBlueAccent.shade200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("BMI Application"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
              Color(0xffe9defa),
              Color(0xfffbfcdb),
              ],
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("BMI",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,),),
              SizedBox(
                height: 11,
              ),
              TextField(
                controller: wtController,
                decoration: InputDecoration(
                  label: Text("Enter your Weight"),
                  prefixIcon: Icon(Icons.line_weight)
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 11,
              ),
              TextField(
                controller: ftController,
                decoration: InputDecoration(
                    label: Text("Enter your Height in (Feet)"),
                    prefixIcon: Icon(Icons.height)
                ),
                keyboardType: TextInputType.number,
              ),

              SizedBox(
                height: 11,
              ),
              TextField(
                controller: inController,
                decoration: InputDecoration(
                    label: Text("Enter your Height in (Inch)"),
                    prefixIcon: Icon(Icons.line_weight)
                ),
                keyboardType: TextInputType.number,
              ),

              SizedBox(
                height: 11,
              ),

              ElevatedButton(onPressed:(){
              var wt = wtController.text.toString();
              var ft = ftController.text.toString();
              var In = inController.text.toString();

              if (wt!="" && ft!="" && In!=""){

              var iwt = int.parse(wt);
              var ift = int.parse(ft);
              var iIn = int.parse(In);

              var tInch = (ift*12)+iIn;
              var tcm = tInch*2.54;
              var tM = tcm/100;

              var bmi = iwt/(tM*tM);

              var msg = "";
              if(bmi>25){
              msg = "You're OverWeight!!";
              bcolor = Colors.orange.shade200;
              }
              else if (bmi<18.5){
              msg = "you're UnderWeight!!";
              bcolor = Colors.red.shade200;
              }
              else {
              msg = "You're Healthy";
              bcolor = Colors.green.shade200;
              }
              setState(() {
                result = "$msg \n Your BMI is : ${bmi.toStringAsFixed(2)}";
              });


              }

              else{
                setState(() {
                  result = "Please fill all the required blanks";
                });
              }
              }, child: Text("Calculate")),

              SizedBox(
                height: 11,
              ),
              if(result.isNotEmpty)
                Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: bcolor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    result,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        ),
      )
    );
  }
}
