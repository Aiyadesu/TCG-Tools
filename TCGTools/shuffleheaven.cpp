#include "shuffleheaven.h"
#include <string>



using namespace std;



// Global Variables
random_device trng;
mt19937 prng(trng());
int randomNumber;
int* result;


//ShuffleHeaven::ShuffleHeaven() {

//}

ShuffleHeaven::ShuffleHeaven(QObject *parent) : QObject(parent) {

}


// Support Functions

/*
 * Creates a uniform distribution (all probabilities have an equal chance to
 * occur) with a default range min inclusive to max inclusive and returns
 * a random number within that range using a PRNG engine.
 *
 * Pre-requisite: Requires a "min" and "max" value as parameters.
 * Post-requisite: Returns a number between the provided "min" and "max" values.
 */
int ShuffleHeaven::genNumber(int min, int max) {
    return uniform_int_distribution<int>{min, max} (prng);

}

/*
 * A "coin flip".
 * Used when simulating a 50% chance to occur.
 */
int ShuffleHeaven::genCoinFlip() {
    return uniform_int_distribution<int>{0,1} (prng);
}

/*
 * A "high roll" on a single dice.
 * Used when simulating a single dice roll or a 1/6 chance of occuring.
 */
int ShuffleHeaven::genHighRoll() {
    return uniform_int_distribution<int>{1,6} (prng);
}

/*
 * "Odds or Evens".
 * As the name suggests, the default range being 1 to 100.
 * Although only one number is returned, the game is 50% chance to win or lose.
 */
int ShuffleHeaven::genOddsOrEvens() {
    return uniform_int_distribution<int>{1,100} (prng);
}
