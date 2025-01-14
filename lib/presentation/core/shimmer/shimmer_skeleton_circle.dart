import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/styles/app_colors.dart';

class ShimmerSkeletonCircle extends StatelessWidget {
  const ShimmerSkeletonCircle({
    super.key,
    this.radius,
  });
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius ?? 30,
      width: radius ?? 30,
      decoration: const BoxDecoration(
        color: AppColors.lightGrey,
        shape: BoxShape.circle,
      ),
    );
  }
}
