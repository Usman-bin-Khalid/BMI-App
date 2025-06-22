import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: TextStyle(fontSize: 27),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff5ee7df), Color(0xffb490ca)],
            begin: FractionalOffset(1.0, 0.0),
            end: FractionalOffset(0.0, 1.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                        'assets/images/img3.png'), // Add your logo here
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'About BMI App',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Welcome to the BMI App! Our goal is to help you maintain a healthy lifestyle by easily tracking your Body Mass Index. Our app provides simple and intuitive tools to calculate and monitor your BMI over time.',
                  style:
                      TextStyle(fontSize: 16, height: 1.5, color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10),
                Text(
                  'With the BMI App, you can:',
                  style:
                      TextStyle(fontSize: 16, height: 1.5, color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BulletPoint(
                        text: 'Calculate your BMI quickly and easily',
                        color: Colors.white, // Change text color here
                      ),
                      BulletPoint(
                        text: 'Track your BMI history over time',
                        color: Colors.white, // Change text color here
                      ),
                      BulletPoint(
                        text: 'Get personalized health tips',
                        color: Colors.white, // Change text color here
                      ),
                      BulletPoint(
                        text: 'Manage multiple user profiles',
                        color: Colors.white, // Change text color here
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Follow Us',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialIcon(
                          icon: FontAwesomeIcons.facebook,
                          // url: 'https://www.facebook.com',
                          // url: 'https://www.facebook.com/your_profile',
                          url:
                              'https://www.facebook.com/profile.php?id=100080906294614'
                          // onPressed: () {},
                          ),
                      SocialIcon(
                        icon: FontAwesomeIcons.twitter,
                        // url: 'https://www.twitter.com',
                        url: 'https://www.twitter.com/your_profile',
                      ),
                      SocialIcon(
                        icon: FontAwesomeIcons.linkedin,
                        // url: 'https://www.linkedin.com',
                        url: 'https://www.linkedin.com/in/your_profile',
                      ),
                      SocialIcon(
                        icon: FontAwesomeIcons.instagram,
                        // url: 'https://www.instagram.com',
                        url: 'https://www.instagram.com/your_profile',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Email: usmanbinkhalidpk@gmail.com',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                Container(
                  height: 160,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;
  final Color color;

  BulletPoint({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.check, size: 20, color: Colors.green),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style:
                TextStyle(fontSize: 16, color: color), // Apply text color here
          ),
        ),
      ],
    );
  }
}

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final String url;

  SocialIcon({required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, size: 30, color: Colors.white),
      onPressed: () => _launchURL(url),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
