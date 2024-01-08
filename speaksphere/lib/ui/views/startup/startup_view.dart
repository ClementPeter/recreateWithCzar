import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';
import 'package:speaksphere/ui/common/ui_helpers.dart';
import 'startup_viewmodel.dart';
import 'package:flutter_svg/svg.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Color(0xff9F4F4F),
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 100),
            Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset('assets/svg/gear.svg'),
                ),
                // Positioned(
                //   right: 90,
                //   top: 50,
                //   child: SvgPicture.asset('assets/svg/gear.svg'),
                // ),
                Positioned(
                  top: 50,
                  left: MediaQuery.sizeOf(context).width * 0.15,
                  child: Center(
                    child: SizedBox(
                      child: SvgPicture.asset('assets/svg/speaksphere.svg'),
                    ),
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.end,
                //   children: [
                //     Center(
                //       child: SizedBox(
                //         child: SvgPicture.asset('assets/svg/speaksphere.svg'),
                //       ),
                //     ),
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.end,
                //       children: [
                //         Align(
                //           alignment: Alignment.topRight,
                //           child: SvgPicture.asset('assets/svg/gear.svg'),
                //         ),
                //       ],
                //     ),
                //   ],
                // )
              ],
            ),
            const SizedBox(height: 150),
            SvgPicture.asset('assets/svg/speakImage.svg'),
          ],
        ),
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StartupViewModel();

  // @override
  // void onViewModelReady(StartupViewModel viewModel) => SchedulerBinding.instance
  //     .addPostFrameCallback((timeStamp) => viewModel.runStartupLogic());
}
