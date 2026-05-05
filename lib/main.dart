import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  // 📩 EMAIL
  void _sendEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'qistyna5369@gmail.com',
    );
    await launchUrl(emailUri);
  }

  // 📞 PHONE
  void _callPhone() async {
    final Uri phoneUri = Uri(
      scheme: 'tel',
      path: '011-19006405',
    );
    await launchUrl(phoneUri);
  }

  // 📍 LOCATION
  void _openLocation() async {
    final Uri mapUri = Uri.parse(
        'https://share.google/znXioTFl2lHoiZyOA');
    await launchUrl(mapUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // 🌈 AESTHETIC GRADIENT BACKGROUND
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF8EC5FC), Color(0xFFE0C3FC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: Center(
          child: Card(
            elevation: 15,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // PROFILE PIC
                  const CircleAvatar(
                    radius: 55,
                    backgroundImage:
                        AssetImage('assets/images/passport1.jpg'),
                  ),

                  const SizedBox(height: 15),

                  // NAME
                  const Text(
                    'Iwana Qistyna binti Mat Zahad',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const Text('Terengganu, Malaysia'),

                  const SizedBox(height: 15),

                  // 🔘 ICON BUTTONS (CLICKABLE)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.email, color: Colors.red),
                        onPressed: _sendEmail,
                      ),
                      IconButton(
                        icon: const Icon(Icons.phone, color: Colors.green),
                        onPressed: _callPhone,
                      ),
                      IconButton(
                        icon: const Icon(Icons.location_on,
                            color: Colors.blue),
                        onPressed: _openLocation,
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // BIO
                  const Text(
                    '"Code. Learn. Improve. Repeat."',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}