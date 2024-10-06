#include <stdio.h>
#include <stdlib.h>
#include <syslog.h>
#include <string.h>
#include <errno.h>

int main(int argc, char *argv[]) {
    openlog("writer", LOG_PID, LOG_USER);  // Setup syslog logging

    if (argc != 3) {
        syslog(LOG_ERR, "Usage: %s <text_string> <file>", argv[0]);
        closelog();
        return 1;
    }

    char *text = argv[1];
    char *filename = argv[2];

    FILE *file = fopen(filename, "w");  // Open the file for writing
    if (file == NULL) {
        syslog(LOG_ERR, "Failed to open file: %s", strerror(errno));
        closelog();
        return 1;
    }

    // Write the text to the file
    fprintf(file, "%s\n", text);

    fclose(file);  // Close the file

    // Log writing to the file with LOG_DEBUG level
    syslog(LOG_DEBUG, "Writing '%s' to '%s'", text, filename);
    
    closelog();

    return 0;
}

