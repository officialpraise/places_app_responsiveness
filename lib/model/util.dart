class Place {
  String image;
  String title;
  String subtitle;

  Place({required this.image, required this.title, required this.subtitle});

}
  //responsive check
enum ScreenSize { small, medium, large }

double breakPointFirst = 600;
double breakpointSecond = 840;

ScreenSize getScreenSize(double size) {
  if (size < breakPointFirst) {
    return ScreenSize.small;
  } else if (size >= breakPointFirst && size < breakpointSecond) {
    return ScreenSize.medium;
  } else {
    return ScreenSize.large;
  }
}