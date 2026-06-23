import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Exam15 extends StatefulWidget {
  const Exam15({super.key});

  @override
  State<Exam15> createState() => _Exam15State();
}

class _Exam15State extends State<Exam15> {
  Widget contactTile(String name, String number) {
    return Container(
      margin: EdgeInsets.all(4),
      color: Colors.grey.shade200,
      child: ListTile(
        leading: Icon(Icons.person, color: Colors.brown, size: 30.sp),
        title: Text(
          name,
          style: TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
          ),
        ),
        subtitle: Text(
          number,
          style: TextStyle(color: Colors.black, fontSize: 14.sp),
        ),
        trailing: Icon(Icons.phone, color: Colors.blue),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
        backgroundColor: Colors.blueGrey,
        titleTextStyle: TextStyle(
          fontSize: 20.sp,
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
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 32.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Text('Add', style: TextStyle(fontSize: 16.sp)),
                ),
                SizedBox(height: 24.h),

                contactTile('Jawad', '01833-789456'),
                contactTile('Alamin', '01800-789456'),
                contactTile('Hasan', '01705-789456'),
                contactTile('Omi', '01915-789456'),
                contactTile('Yeasin', '01800-789456'),
                contactTile('Walid', '01800-789456'),
                contactTile('Rahat', '01800-789456'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
