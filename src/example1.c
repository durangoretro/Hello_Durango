#include <durango.h>

pixel_pair pixel;

int main(){

    // Set Video Mode to RGB and use SCREEN 3 space.
    setVideoMode(RGB | SCREEN_3);
    //Initiaize pixel struct x=10, y=2 and color=0x22 (red)
    //Draw Pixel
    drawPixelPair(10,2,ROJO);
    //inifinite Loop
    while(1){}
    return 0;
}