import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tvs_credit/notifications.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 68.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Good morning, John!",
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationsPage(),
                      ),
                    );
                    },
                    child: Icon(
                      Icons.replay,
                      size: 24.sp,
                      color: Color(0xff6D5FFD),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60.h),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: Container(
                            height: 56.h,
                            width: 56.h,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: SizedBox(
                              height: 24.h,
                              width: 24.w,
                              child: Image.asset(
                                "assets/frame1.png",
                              ),
                            ),
                          ),
                          title: Text(
                            "Market bills",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          subtitle: Text(
                            "December 28, 2021",
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff858C94),
                            ),
                          ),
                          trailing: SizedBox(
                            height: 37.h,
                            width: 89.w,
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                side: BorderSide(
                                  width: 2.w,
                                  color: Color(0xff6D5FFD),
                                ),
                              ),
                              child: Text(
                                "Pay",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff6D5FFD),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1.w,
                          color: Color(0xffEBEEF2),
                        )
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
