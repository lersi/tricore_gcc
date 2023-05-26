/* Test __STDC_VERSION__ for C17.  Test -std=iso9899:2017.  */
/* { dg-do compile } */
/* { dg-options "-std=iso9899:2017 -pedantic-errors" } */

#if __STDC_VERSION__ == 201710L
int i;
#else
#error "Bad __STDC_VERSION__."
#endif
