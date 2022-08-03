#include <durango.h>

pixel_pair pixel;

int main(){
    setVideoMode(RGB | SCREEN_3);
    pixel.x=10;
    pixel.y=2;
    pixel.color=0x22;
    drawPixelPair(&pixel);
    while(1){}
    return 0;
}