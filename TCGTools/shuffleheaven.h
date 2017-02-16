#ifndef SHUFFLEHEAVEN_H
#define SHUFFLEHEAVEN_H

#include <QObject>
#include <QVector>
#include <random>



using namespace std;



class ShuffleHeaven : public QObject {
        Q_OBJECT
public:
    explicit ShuffleHeaven(QObject *parent = 0);
    //ShuffleHeaven();

    Q_INVOKABLE int genNumber(int min, int max);
    Q_INVOKABLE int genCoinFlip();
    Q_INVOKABLE int genHighRoll();
    Q_INVOKABLE int genOddsOrEvens();



private:
    random_device trng;
    mt19937 prng;



};



#endif // SHUFFLEHEAVEN_H
