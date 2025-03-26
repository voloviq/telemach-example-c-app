/******************************************************************************
 * Simple application which print message "Hello world" on the console
 * MW Sojfan 2025
 * Rev v1.0
 *****************************************************************************/

#include <stdio.h>
#include <time.h>

int main(int argc, char *argv[])
{
    // Get the current time
    time_t now = time(NULL);
    struct tm *local_time = localtime(&now);

    printf("The Current time: %02d:%02d:%02d\n",
        local_time->tm_hour, local_time->tm_min, local_time->tm_sec);

    return 0; 
}
