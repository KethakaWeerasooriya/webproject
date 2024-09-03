import 'package:flutter/material.dart';
import 'package:web_app/constants/colors.dart';

class MyServicesWidget extends StatefulWidget {
  final Size size;
  const MyServicesWidget({Key? key, required this.size});

  @override
  State<MyServicesWidget> createState() => _MyServicesWidgetState();
}

class _MyServicesWidgetState extends State<MyServicesWidget> {
  final List<bool> _isHovered = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return MouseRegion(
            onEnter: (_) => setState(() => _isHovered[index] = true),
            onExit: (_) => setState(() => _isHovered[index] = false),
            child: AnimatedContainer(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              margin: EdgeInsets.symmetric(horizontal: widget.size.width * 0.05),
              width: widget.size.width,
              decoration: BoxDecoration(
                color: _isHovered[index] ? null : Colors.transparent,
                border: Border.all(
                  color: _isHovered[index]
                      ? AppColors.studio.withOpacity(0.5)
                      : Colors.transparent,
                ),
                gradient: _isHovered[index]
                    ? const LinearGradient(colors: [
                        AppColors.studio,
                        AppColors.ebony,
                      ])
                    : null,
              ),
              child: widget.size.width > 600
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        
                        
                        
                        
                      ],
                    )
                  : Container(),
            ),
          );
        });
  }
}
