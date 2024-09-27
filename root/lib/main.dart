import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get the screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Prince Alexander Malatuba'), // Header
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05, // Dynamic horizontal padding
            vertical: screenHeight * 0.02, // Dynamic vertical padding
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Picture and Name
              Container(
                color: Colors.lightBlueAccent.withOpacity(0.3), // Background color
                padding: EdgeInsets.all(screenWidth * 0.02), // Padding for the container
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: screenWidth * 0.10, // Responsive profile picture size
                      backgroundImage: const AssetImage('assets/profile_picture.jpg'),
                    ),
                    SizedBox(width: screenWidth * 0.05),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Prince Alexander Malatuba',
                          style: TextStyle(
                            fontSize: screenWidth * 0.05, // Responsive font size
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.05), // Spacing after profile section

              // Information Section
              Container(
                color: Colors.grey[200], // Background color for info section
                padding: EdgeInsets.all(screenWidth * 0.05), // Padding for the container
                child: Column(
                  children: [
                    InfoSection(
                      icon: Icons.cake,
                      label: 'Birthdate',
                      value: 'October 20, 2003',
                      screenWidth: screenWidth * 0.5,
                    ),
                    InfoSection(
                      icon: Icons.home,
                      label: 'Address',
                      value: 'Bato, Roxas, Capiz',
                      screenWidth: screenWidth * 0.5,
                    ),
                    InfoSection(
                      icon: Icons.email,
                      label: 'Email',
                      value: 'princealexander.malatuba@wvsu.edu.ph',
                      screenWidth: screenWidth * 0.5,
                    ),
                    InfoSection(
                      icon: Icons.phone,
                      label: 'Phone Number',
                      value: '09998888777',
                      screenWidth: screenWidth * 0.5,
                    ),
                    InfoSection(
                      icon: Icons.school,
                      label: 'Education',
                      value: 'West Visayas State University',
                      screenWidth: screenWidth * 0.5,
                    ),
                    InfoSection(
                      icon: Icons.favorite,
                      label: 'Hobbies',
                      value: 'Reading, Sleeping, and Playing',
                      screenWidth: screenWidth * 0.5,
                    ),
                  ],
                ),
              ),

              SizedBox(height: screenHeight * 0.05), // Spacing after info section

              // Biography Section
              Container(
                color: Colors.white, // Background color for biography section
                padding: EdgeInsets.all(screenWidth * 0.05), // Padding for the container
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Biography',
                      style: TextStyle(
                        fontSize: screenWidth * 0.025,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      """Hello! My name is Prince Alexander Malatuba, born on October 20, 2003, in the serene town of Bato, Roxas, Capiz. I’ve spent most of my life growing up in this quiet part of the Philippines, where the simplicity of life has taught me to appreciate the small things. From an early age, I’ve always been drawn to activities that spark both my curiosity and imagination.

I’m currently pursuing my education at West Visayas State University, where I’m studying hard to build a solid foundation for my future career. Academics have always been important to me, but I also believe in striking a balance between work and play. This philosophy has driven me to cultivate a variety of hobbies that I enjoy during my free time. Whether it’s getting lost in a good book, indulging in a well-deserved nap, or playing games that challenge my strategic thinking, I find relaxation in these activities. My hobbies—Reading, Sleeping, and Playing—allow me to unwind and recharge, especially when the academic pressure becomes intense.

Despite being a quiet and reserved individual, I believe that staying connected with others is important. You can always reach out to me via email at princealexander.malatuba@wvsu.edu.ph or through my phone at 09998888777. While I may not be the most outgoing person, I value meaningful conversations and the connections I make with the people I meet along the way.

Throughout my life, I’ve learned that balance is key. Whether it’s balancing my academic responsibilities with personal time or simply finding joy in the everyday moments, I strive to live a life that is fulfilling both intellectually and emotionally. I’m excited for what the future holds and am eager to continue growing, learning, and contributing to the world around me.""",
                      style: TextStyle(
                        fontSize: screenWidth * 0.015, // Responsive text size for biography
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoSection extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final double screenWidth;

  const InfoSection({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenWidth * 0.02), // Dynamic padding
      child: Row(
        children: [
          Icon(
            icon,
            size: screenWidth * 0.07, // Responsive icon size
            color: Colors.blue,
          ),
          SizedBox(width: screenWidth * 0.05),
          Text(
            '$label: ',
            style: TextStyle(
              fontSize: screenWidth * 0.045, // Responsive label text size
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: screenWidth * 0.045, // Responsive value text size
              ),
            ),
          ),
        ],
      ),
    );
  }
}
