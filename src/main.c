#include <genesis.h>
#include "sounds.h"

int main()
{
    SND_startPlay_4PCM(hat1_16k, sizeof(hat1_16k), SOUND_PCM_CH_AUTO, FALSE);

    while(TRUE) {
        SYS_doVBlankProcess();
    }
}
