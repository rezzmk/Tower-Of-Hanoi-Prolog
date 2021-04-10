/** 
 * Marcos Caramalho
 *
 * Towers of Hanoi
 * https://en.wikipedia.org/wiki/Tower_of_Hanoi
 */

/*
*  Manual solving of a 3 disk tower of hanoi
*
*  TA       TD      Taux        Stack       Term                Segment
*  --------------------------------------------------------------------
*  1,2,3                                    move 3 TA TD Taux 	
*  1,2,3    1                               move 2 TA Taux TD
*  2,3      1                   1.1         move 1 TA TD Taux  [TA, Taux]
*  3        2       1           1.2                            [TA, TD]
*  3        1,2                 1.3         move 1 Taux TD TA  [Taux, TD]
*  1,2      3       2                                          [TA, Taux]
*  1,2      3       3                       move 2 TD TA Taux	
*  1        2       3           3.1         move 1 TD Taux TA  [TD, TA]
*  1        2,3                 3.2                            [TD, Taux]
*  1,2      3                   3.3         move 1 TA TD Taux  [TA, Taux]
*/

/*
 * Base case - The movement of a single disk
 */
move(1, TA, TD, _) :-  
    write('Move top disk from '), 
    write(TA), 
    write(' to '), 
    write(TD), 
    nl. 

/*
 * Recursive solution
 *
 * N - Number of disks
 * L - Left pole       (initial)
 * R - Right pole      (target)
 * C - Center pole     (auxiliary)
 */
move(N, TA, TD, Taux) :- 
    N > 1, 
    M is N - 1, 
    move(M, TA, Taux, TD), 
    move(1, TA, TD, _), 
    move(M, Taux, TD, TA).  
