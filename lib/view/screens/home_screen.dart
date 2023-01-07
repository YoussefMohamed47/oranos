import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oranostask/utils/app_images.dart';
import 'package:oranostask/view/widgets/recommend_expert_widget.dart';
import 'package:oranostask/view_model/home_controller_cubit.dart';
import 'package:oranostask/view_model/home_controller_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeControllerCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          shape: Border(
            bottom: BorderSide(color: Colors.grey.shade300, width: 1),
          ),
          title: RichText(
            maxLines: 3,
            text: TextSpan(
              style: const TextStyle(
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: 'Oranos',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ".",
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff16919B)),
                ),
              ],
            ),
          ),
          leading: Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.asset(
              AppImages.profilePic,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(8),
              child: SvgPicture.asset(
                AppImages.serachIcon,
              ),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 5),
          child: BlocBuilder<HomeControllerCubit, HomeControllerState>(
            builder: (context, state) {
              var homeController =
                  BlocProvider.of<HomeControllerCubit>(context);

              return Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recommended Experts',
                            style: TextStyle(
                              color: Color(0xff242727),
                              fontWeight: FontWeight.normal,
                              letterSpacing: 1,
                              fontSize: 16.sp,
                            ),
                          ),
                          SvgPicture.asset(AppImages.menuIcon),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      // Recommended Experts Widgets
                      Row(
                        children: [
                          const RecommendExpert(
                            rate: "(5.0)",
                            expertName: "Kareem Adel",
                            picturePath: AppImages.kareemPic,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          const RecommendExpert(
                            rate: "(4.9)",
                            expertName: "Merna Adel",
                            picturePath: AppImages.mernaPic,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 42.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Online Experts',
                            style: TextStyle(
                              color: Color(0xff242727),
                              fontWeight: FontWeight.normal,
                              letterSpacing: 1,
                              fontSize: 16.sp,
                            ),
                          ),
                          SvgPicture.asset(AppImages.menuIcon),
                        ],
                      ),
                      SizedBox(
                        height: 28.h,
                      ),
                      Expanded(
                        child: ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Color(0xffDFE8EB),
                                      radius: 30.w,
                                    ),
                                    const Padding(
                                      padding: EdgeInsetsDirectional.only(
                                        bottom: 3.0,
                                        end: 5.0,
                                      ),
                                      child: CircleAvatar(
                                        radius: 5.0,
                                        backgroundColor: Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Text('${homeController.namesList[index]}'),
                              ],
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(
                            width: 8.w,
                          ),
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),

                      // Draggable(
                      //   onDragStarted: () {
                      //     showModalBottomSheet(
                      //       context: context,
                      //       isScrollControlled: false,
                      //       enableDrag: true,
                      //       builder: (context) => DraggableScrollableSheet(
                      //         expand: false,
                      //         builder: (BuildContext context,
                      //             ScrollController scrollController) {
                      //           return SingleChildScrollView(
                      //             controller: scrollController,
                      //             child: Column(
                      //               children: [
                      //                 Text('data'),
                      //                 Text('data'),
                      //                 Text('data'),
                      //                 Text('data'),
                      //                 Text('data'),
                      //                 Text('data'),
                      //               ],
                      //             ),
                      //           );
                      //         },
                      //       ),
                      //     );
                      //   },
                      //   feedback: SizedBox.shrink(),
                      //   child: Align(
                      //     alignment: Alignment.bottomCenter,
                      //     child: Container(
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(25),
                      //         color: Color(0xffDFE8EB),
                      //       ),
                      //       width: 30.w,
                      //       height: 3.h,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: DraggableScrollableSheet(
                      minChildSize: 0.07,
                      maxChildSize: 0.7,
                      initialChildSize: 0.1,
                      builder: (BuildContext context,
                          ScrollController scrollController) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.9,
                          width: MediaQuery.of(context).size.width,
                          child: Stack(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.9,
                                width: MediaQuery.of(context).size.width,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    )),
                                child: ListView.builder(
                                  padding: EdgeInsets.only(top: 24),
                                  controller: scrollController,
                                  itemCount:
                                      homeController.expertsSectionList.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.withOpacity(0.3),
                                            width: 1),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: ListTile(
                                        leading: SvgPicture.asset(homeController
                                            .expertsSectionList[index].imgPath),
                                        title: Text(homeController
                                            .expertsSectionList[index]
                                            .expertType),
                                        subtitle: Text(
                                            '${homeController.expertsSectionList[index].expertsNumber} Experts'),
                                        trailing: SvgPicture.asset(
                                            AppImages.navigateRightIcon),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              IgnorePointer(
                                child: Container(
                                  color: Colors.transparent,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 20, bottom: 20),
                                        width: 30.w,
                                        height: 3.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          onTap: (index) {
            if (index == 0) {
              showModalBottomSheet(
                context: context,
                useRootNavigator: true,
                builder: (context) {
                  return Text('test');
                },
              );
            }
          },
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: SvgPicture.asset(
                AppImages.homeIcon,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: SvgPicture.asset(AppImages.starEmptyIcon),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: SvgPicture.asset(AppImages.walletIcon),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: SvgPicture.asset(AppImages.profileIcon),
            ),
          ],
        ),
      ),
    );
  }
}
