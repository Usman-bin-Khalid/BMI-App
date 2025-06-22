import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FAQsPage extends StatefulWidget {
  @override
  State<FAQsPage> createState() => _FAQsPageState();
}

class _FAQsPageState extends State<FAQsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FAQs',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xff96fbc4),
            Color(0xfff9f586),
          ],
          begin: FractionalOffset(1.0, 0.0),
          end: FractionalOffset(0.0, 1.0),
        )),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              children: [
                Center(
                  child: Text('Frequently Asked Questions(FAQs)', style: TextStyle(fontWeight: FontWeight.bold,
                   fontSize: 18, color: Colors.black),),
                ),
                SizedBox(height: 20,),
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/img3.png'),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  'What does BMI stand for?                     ',
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
                Text(
                  "BMI stands for Body Mass Index. It is a numerical value derived from a person's weight and height to assess whether they are underweight, normal weight, overweight, or obese",
                  style: TextStyle(fontSize: 16, color: Colors.deepPurple),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'How is BMI calculated?                       ',
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
                Text(
                  'BMI is calculated using the formula: BMI = weight (kg) / (height (m) * height (m)). Enter your weight in kilograms and your height in meters, and the app will calculate your BMI for you.',
                  style: TextStyle(fontSize: 17, color: Colors.deepPurple),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'How do I calculate my BMI using the app?',
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
                Text(
                  'To calculate your BMI, open the app, enter your weight and height in the designated fields, and tap the "Calculate" button. The app will display your BMI value and category.',
                  style: TextStyle(fontSize: 17, color: Colors.deepPurple),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Can I save my BMI calculations?              ',
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
                Text(
                  'Yes, the app allows you to save your BMI calculations. You can track your progress over time by viewing your BMI history.',
                  style: TextStyle(fontSize: 17, color: Colors.deepPurple),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Can I create profiles for multiple users?',
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
                Text(
                  'Yes, the app supports multiple user profiles. You can create and manage profiles for different users, making it easy to track BMI for family members or friends.',
                  style: TextStyle(fontSize: 17, color: Colors.deepPurple),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'What do the different BMI categories mean?',
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
                Text(
                  "The BMI categories are"
                  "Underweight: BMI less than 18.5"
                  "Normal weight: BMI 18.5 to 24.9"
                  "Overweight: BMI 25 to 29.9"
                  "Obese: BMI 30 or highe",
                  style: TextStyle(fontSize: 17, color: Colors.deepPurple),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'How do I update my weight and height in the app?',
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
                Text(
                  'You can update your weight and height by navigating to the "Profile" or "Settings" section of the app. Enter your new values and save the changes to update your BMI calculation.',
                  style: TextStyle(fontSize: 17, color: Colors.deepPurple),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Are there any additional health tips provided by the app?',
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
                Text(
                  'Yes, our app provides personalized health tips based on your BMI. These tips can help you achieve and maintain a healthy weight through diet, exercise, and lifestyle changes.',
                  style: TextStyle(fontSize: 17, color: Colors.deepPurple),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'How do I contact support?                    ',
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
                Text(
                  'If you have any questions or need assistance, you can contact our support team via email at usmanbinkhalidpk@gmail.com. We are here to help you with any issues or inquiries.',
                  style: TextStyle(fontSize: 17, color: Colors.deepPurple),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Is my data secure?                             ',
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
                Text(
                  'We take your privacy and data security seriously. All personal information entered in the app is stored securely and is not shared with any third parties without your consent.',
                  style: TextStyle(fontSize: 17, color: Colors.deepPurple),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Can I share my BMI results?                 ',
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
                Text(
                  'Yes, you can share your BMI results with friends, family, or healthcare providers. The app provides options to share results via social media, email, or messaging apps.',
                  style: TextStyle(fontSize: 17, color: Colors.deepPurple),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
