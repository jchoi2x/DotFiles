#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
#define PI 3.14159265358979323846

typedef struct {
  float x, y, speed, direction ;
} Robber ;
typedef struct {
  float x, y, speed  ;
  double time ;
} Cop ;

void readAndExecute();
double getMinTime(Cop copper,Robber rob);
Robber initRobber(int x, int y, int speed, int direction);
void readRobbers(Robber ** rob , int numRobbers);
int * ithPermutation(const int n, int i);
int factorial(int n );


/*
 * Calculates the factorial because there is a maximum of n! permutations
 */
int factorial(int n){
  if ( n == 0 || n==1){
    return 1 ;
  }
  else{
    return n*factorial(n-1);
  }
}

/*
 * Returns an int * containing the ith permution of 0,1,2....n-1
 *  (0 <= i < n!)
 */
int * ithPermutation(int n, int i){
  int j, k = 0;
  int *fact = (int *)calloc(n, sizeof(int));
  int *perm = (int *)calloc(n, sizeof(int));

  // compute factorial numbers
  fact[k] = 1;
  while (++k < n)
    fact[k] = fact[k - 1] * k;

  // compute factorial code
  for (k = 0; k < n; ++k){
      perm[k] = i / fact[n - 1 - k];
      i = i % fact[n - 1 - k];
  }

  // readjust values to obtain the permutation
  // start from the end and check if preceding values are lower
  for (k = n - 1; k > 0; --k)
    for (j = k - 1; j >= 0; --j)
      if (perm[j] <= perm[k])
        perm[k]++;

  free(fact);
  return perm ;
}

/*
 * Assigns makes Robber ** into array filled with robbers in each index,
 * passed by reference so no need to return anything
 */
void readRobbers(Robber ** rob , int numRobbers){
  *rob = (Robber *) calloc((numRobbers+1),sizeof(Robber));
  int i, x, y , spd , dir ;
  for ( i = 0 ; i < numRobbers ; i++ ){
    scanf("%d %d %d %d",&x,&y,&dir,&spd);
    *(*rob+i) = initRobber(x,y,spd,dir);
  }
}

/*
 * While input stream, read number of robbers, and copSpd. Read n number of robbers and make an array.
 * Tries every permutation using perm[] keeping only minimum time generated. Prints it and reiterate
 */
void readAndExecute(){
  while (!feof(stdin)){
    int numRobbers, spd  ;
    double time ,minTime  ;
    int * perm ;
    scanf("%d %d",&numRobbers,&spd);

    if (numRobbers == 0 && spd == 0) break; // Must be the last most line in input file that signifies the end

    Cop copper ;
    copper.x = copper.y = copper.time = 0.0  ;
    copper.speed = spd ;

    Robber * rob ;
    readRobbers(&rob,numRobbers);

    int j , i , fact = factorial(numRobbers);

    // try every permutation
    for ( j = 0 ; j < fact ; j++ ){
      // Get the jth permuation array
      perm = ithPermutation(numRobbers,j);
      copper.x = copper.y = copper.time = 0.0 ;

      for ( i = 0 ; i < numRobbers ; i++){
        copper.time+=getMinTime(copper,rob[perm[i]]) ;
        copper.x = rob[perm[i]].x+rob[perm[i]].speed*(copper.time)*cos((rob[perm[i]].direction*2*PI)/360);
        copper.y = rob[perm[i]].y+rob[perm[i]].speed*(copper.time)*sin((rob[perm[i]].direction*2*PI)/360);
      }
      // Keep the smallest time of all the ones that get calculated
      if ( j == 0 ) minTime = copper.time ; // First time calculated get assigned regardlessly
      else{
        if ( copper.time < minTime) minTime = copper.time ; // change minTime if calculated is smaller
      }
      free(perm); // Done with this specific permutation order
    }

    printf("%0.02f\n",minTime); // We should have the minimum time righ there
    free(rob); // Done with robbers, tried every permutation
  }
}





/*
 * - Implements a binary search. Starting with a huge interval, will increment by inc and then decrement by inc/2
 * then increment inc/4 then decrement by inc/8 until diff is 0.00000001 where it will break and return the found time
 * - Initially increment using large intervals until copSpd*time becomes greater than distchase
 *   Then divide the interval in half.
 *   Check if the difference is very very small, if it is then break out
 *   Start decrementing by the divided interval until copSpd*time becomes less than.
 *   Then divide the interval in half and reiterate
 */
double getMinTime(Cop copper,Robber rob){
  double distChase =10;
  double time = 0.0;
  double inc = 10 ; // Value added/subtracted from time.

  // Unconditional loop, break when condition met
  while ( 1 ){
    ///////////////////////////// Increment ////////////////////////////////////////
    //  Get copSpd*time > distChase by incrementing time by inc
    while (copper.speed*(time) < distChase){
      time+=inc;
      distChase = pow((pow((rob.x+rob.speed*(copper.time+time)*cos((rob.direction*2*PI)/360)-copper.x),2)+pow((rob.y+rob.speed*(copper.time+time)*sin((rob.direction*2*PI)/360)-copper.y),2)),0.5);
    }

    if (copper.speed*time-distChase < 0.00000001) break; // Guaranteed that copper.speed*time - distChase > 0

    ///////////////////////////// Divide the intervall ////////////////////////////////////////
    inc/=2; // Divide the increment in half and decrement at smaller and smaller intervals until copSpd*time < distChase






    ///////////////////////////// Decrement ////////////////////////////////////////
    //  Get copSpd*time < distChase by decrementing time by inc/2
    while (copper.speed*(time) > distChase ){
      time-=inc;
      distChase = pow((pow((rob.x+rob.speed*(copper.time+time)*cos((rob.direction*2*PI)/360)-copper.x),2)+pow((rob.y+rob.speed*(copper.time+time)*sin((rob.direction*2*PI)/360)-copper.y),2)),0.5);
    }
    if (distChase-copper.speed*time< 0.00000001) break; // At this point we know distChase > copper.speed*time
    ///////////////////////////// Divide the interval ////////////////////////////////////////
    inc/=2; // Divide the increment in half for the next iteration where it will increment at even smaller intervals
  }
  return time ;
}

/*
 * Creates a robber instance with given parameter as fields
 */
Robber initRobber(int x, int y, int speed, int direction){
  Robber rtn  ;
  rtn.x = (float)x ;
  rtn.y = (float)y ;
  rtn.speed = (float)speed ;
  rtn.direction = (float)direction ;
  return rtn  ;
}


