import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalProCard extends StatefulWidget {
  const PersonalProCard({super.key});

  @override
  State<PersonalProCard> createState() => _PersonalProCardState();
}

class _PersonalProCardState extends State<PersonalProCard> {
  void showUserDetailDialog() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        content: Column(
          mainAxisSize: .min,
          mainAxisAlignment: .center,
          spacing: 8,
          children: [
            CircleAvatar(
              radius: 55,
              backgroundImage: NetworkImage(
                'https://cdn.ostad.app/user/avatar/2024-06-30T09-24-57.418Z-picofme%20(6).png',
              ),
            ),
            Text(
              'Farshid Evan',
              style: TextStyle(fontSize: 24, fontWeight: .bold),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
            ),
            Text(
              'App Developer crafting high-performance,\n cross-platform mobile apps for iOS and Android.',
              textAlign: TextAlign.center,
            ),
            Divider(height: 20),
            Row(
              spacing: 8,
              children: [Icon(Icons.email, size: 20), Text('fevan@ostad.app')],
            ),
            Row(
              spacing: 8,
              children: [Icon(Icons.phone, size: 20), Text('+123 456 7890')],
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Close'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Card'),
        backgroundColor: Colors.indigo.shade400,
        titleTextStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Card(
                  elevation: 10,
                  child: SizedBox(
                    height: 340.h,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        mainAxisAlignment: .center,
                        spacing: 8,
                        children: [
                          CircleAvatar(
                            radius: 55,
                            backgroundImage: NetworkImage(
                              'https://cdn.ostad.app/user/avatar/2024-06-30T09-24-57.418Z-picofme%20(6).png',
                            ),
                          ),
                          Text(
                            'Farshid Evan',
                            style: TextStyle(fontSize: 24, fontWeight: .bold),
                          ),
                          Text(
                            'Flutter Developer',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          Text(
                            'App Developer crafting high-performance,\n cross-platform mobile apps for iOS and Android.',
                            textAlign: TextAlign.center,
                          ),
                          Divider(),
                          Row(
                            spacing: 8,
                            children: [
                              Icon(Icons.email, size: 20),
                              Text('fevan@ostad.app'),
                            ],
                          ),
                          Row(
                            spacing: 8,
                            children: [
                              Icon(Icons.phone, size: 20),
                              Text('+123 456 7890'),
                            ],
                          ),
                          SizedBox(height: 6),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'You are now following ',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            TextSpan(
                                              text: 'Farshid Evan',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      showCloseIcon: true,
                                      behavior: SnackBarBehavior.floating,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      duration: Duration(seconds: 5),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue.shade600,
                                  foregroundColor: Colors.white,
                                  minimumSize: Size(130, 32),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  'Follow',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  showUserDetailDialog();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue.shade600,
                                  foregroundColor: Colors.white,
                                  minimumSize: Size(130, 32),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  'View Profile',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Expanded(child: Divider(indent: 10, height: 50)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        'Interests',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(child: Divider(height: 50, endIndent: 10)),
                  ],
                ),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 10,
                        shadowColor: Colors.black54,
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: SizedBox(
                            height: 155.h,
                            child: Column(
                              spacing: 5,
                              crossAxisAlignment: .start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    width: double.infinity,
                                    height: 90,
                                    fit: BoxFit.cover,
                                    'https://thumbs.dreamstime.com/b/beautiful-tropical-landscape-maldives-island-beach-palm-trees-perfect-tropical-banner-amazing-tropical-beach-landscape-palm-113634836.jpg',
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 4,
                                  ),
                                  child: Column(
                                    spacing: 2,
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text(
                                        'Travel ',
                                        style: TextStyle(
                                          fontWeight: .bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        'The world is too wide to stay in one coordinates.',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey.shade300,
                                    foregroundColor: Colors.blueAccent,
                                    elevation: 0,
                                    minimumSize: Size(double.infinity, 28),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  child: Text(
                                    'View More',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 10,
                        shadowColor: Colors.black54,
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: SizedBox(
                            height: 155.h,
                            child: Column(
                              spacing: 5,
                              crossAxisAlignment: .start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    width: double.infinity,
                                    height: 90,
                                    fit: BoxFit.cover,
                                    'https://st4.depositphotos.com/10256402/27450/i/450/depositphotos_274504098-stock-photo-photographer-are-sitting-look-the.jpg',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 4,
                                  ),
                                  child: Column(
                                    spacing: 2,
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text(
                                        'Photography',
                                        style: TextStyle(
                                          fontWeight: .bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        'Take photos as a return ticket to a moment otherwise gone.',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey.shade300,
                                    foregroundColor: Colors.blueAccent,
                                    elevation: 0,
                                    minimumSize: Size(double.infinity, 28),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  child: Text(
                                    'View More',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
