import 'package:flutter/material.dart';

class EnterOtpScreen extends StatelessWidget {
  const EnterOtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/bgloginimg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Foreground content with box
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8), // Semi-transparent background
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26, // Subtle shadow
                      blurRadius: 8,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Enter OTP',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown, // Adjust color
                      ),
                    ),
                    const SizedBox(height: 40),

                    // Enter OTP input
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter OTP',
                        border: OutlineInputBorder(),
                        hintText: 'Enter 5 digit OTP',
                      ),
                      keyboardType: TextInputType.number,
                    ),

                    const SizedBox(height: 20),

                    // Verify OTP button
                    ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown, // Button color
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    // OTP verification logic can be added here
                  },
                  child: const Text(
                    'Verify OTP',
                    style: TextStyle(
                      color: Colors.white, // Set text color to white
                    ),
                  ),
                ),

                    const SizedBox(height: 20),

                    // Resend OTP and Change Phone number options
                    TextButton(
                      onPressed: () {
                        // Logic for resending OTP
                      },
                      child: const Text(
                        'Resend OTP',
                        style: TextStyle(color: Colors.brown),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/phnologin');
                      },
                      child: const Text(
                        'Change phone number',
                        style: TextStyle(color: Colors.brown),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
