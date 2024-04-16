#ifndef STATES_H
#define STATES_H


// Assign a value for each state
#define START   0
#define QUOTE   1
#define SLASH   2


// Function prototypes 
// for each state handler
int STARTstate(int);
int QUOTEstate(int);
int SLASHstate();

#endif

