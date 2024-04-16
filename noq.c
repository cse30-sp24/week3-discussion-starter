#include <stdlib.h>
#include <stdio.h>
#include "states.h"

int main(void)
{
    int c;                  // input char
    int state = START;      // initial state of DFA

    (void) c; // TODO: delete this once you use c
    while (1 /* TODO */) {
        switch (state) {
        default:
            fprintf(stderr, "Error: Invalid state (%d)\n", state);
            return EXIT_FAILURE;
        }  // end switch
    }  // end while
    /*
     * All done. No explicit end state used here.
     * if not in start state, we have an error
     */
    if (state == START) 
        return EXIT_SUCCESS;
    // ok we had an error
    fprintf(stderr, "noq error: Missing end quote \"\n");
    return EXIT_FAILURE;
}

