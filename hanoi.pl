/* 
 * Marcos Caramalho
 *
 * Towers of Hanoi
 * https://en.wikipedia.org/wiki/Tower_of_Hanoi
 *
 *
 *
 * Recursive solution - Move N disks from TA into TD, 
 *                      using Taux as auxiliary tower
 *
 * N - Number of disks
 * TA - Left pole       (initial)
 * TD - Right pole      (target)
 * Taux - Center pole   (auxiliary)
 *
 */
move(N, TA, TD, Taux) :- 
    N > 1, 
    M is N - 1, 
    move(M, TA, Taux, TD), 
    move(1, TA, TD, _), 
    move(M, Taux, TD, TA).  

move(1, TA, TD, _) :-  
    write('Move top disk from '), 
    write(TA), 
    write(' to '), 
    write(TD), 
    nl. 
