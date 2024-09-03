import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_app/constants/colors.dart';


class SocialWidget extends StatelessWidget {
  const SocialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

      Container(

        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.studio.withOpacity(0.5))
        ),
        child: Center(
          child: IconButton(
            hoverColor: AppColors.paleSlate,
            onPressed: (){},
            icon: FaIcon(
              FontAwesomeIcons.instagram,
              color: AppColors.studio,
              size: 15,
            ),
          ),
        ),
      ),
        const SizedBox(width: 10,),
      Container(

        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.studio.withOpacity(0.5))
        ),
        child: Center(
          child: IconButton(
            hoverColor: AppColors.paleSlate,
            onPressed: (){},
            icon: FaIcon(
              FontAwesomeIcons.facebookF,
              color: AppColors.studio,
              size: 15,
            ),
          ),
        ),
      ),
        const SizedBox(width: 10,),
        Container(

          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.studio.withOpacity(0.5))
          ),
          child: Center(
            child: IconButton(
              hoverColor: AppColors.paleSlate,
              onPressed: (){},
              icon: FaIcon(
                FontAwesomeIcons.youtube,
                color: AppColors.studio,
                size: 15,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10,),
        Container(

          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.studio.withOpacity(0.5))
          ),
          child: Center(
            child: IconButton(
              hoverColor: AppColors.paleSlate,
              onPressed: (){},
              icon: FaIcon(
                FontAwesomeIcons.telegram,
                color: AppColors.studio,
                size: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}