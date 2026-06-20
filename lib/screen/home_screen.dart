import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudentProScreen extends StatefulWidget {
  const StudentProScreen({super.key});

  @override
  State<StudentProScreen> createState() => _StudentProScreenState();
}

final _showSnackBar = SnackBar(content: Text('Mike Rack marked as Present ✅'));

class _StudentProScreenState extends State<StudentProScreen> {
  void _showDialog() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: ListTile(
          leading: Icon(Icons.school, color: Colors.blue.shade900),
          title: Text('Student Details', style: TextStyle(fontSize: 14.sp)),
        ),
        content: Column(
          mainAxisSize: .min,
          children: [
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue.shade900),
              title: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Name: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: 'Mick Rack'),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.badge, color: Colors.blue.shade900),
              title: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'ID: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: 'STU-2025-0042'),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.apartment, color: Colors.blue.shade900),
              title: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Dept: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: 'CSE'),
                  ],
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);},
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
        title: Text('Student Profile'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Card(
                elevation: 20,
                child: SizedBox(
                  width: 280.w,
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisAlignment: .center,
                      mainAxisSize: MainAxisSize.min,
                      spacing: 10,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 60,
                              child: Image.network(
                                fit: BoxFit.cover,
                                'https://img.pikbest.com/png-images/20241128/man-avatar-3d-icon-isolated-on-transparent-background-_11144108.png!sw800',
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.redAccent,
                                ),
                                child: Text(
                                  'New',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Mark Rack',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade900,
                          ),
                        ),
                        Text(
                          'ID: STU-2025-0042',
                          style: TextStyle(fontSize: 10.sp, color: Colors.grey),
                        ),
                        Text(
                          'Computer Science & Engineering',
                          style: TextStyle(fontSize: 10.sp, color: Colors.grey),
                        ),
                        SizedBox(height: 8),
                        SizedBox(
                          height: 35.h,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade900,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: () {
                              _showDialog();
                            },
                            child: Row(
                              mainAxisAlignment: .center,
                              spacing: 8,
                              children: [
                                Icon(Icons.info_outline),
                                Text('View Details'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        SizedBox(
                          height: 35.h,
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () => ScaffoldMessenger.of(
                              context,
                            ).showSnackBar(_showSnackBar),

                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.green),
                              foregroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Row(
                              spacing: 8,
                              mainAxisAlignment: .center,
                              children: [
                                Icon(Icons.check_circle_outline_outlined),
                                Text('Mark Present'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
