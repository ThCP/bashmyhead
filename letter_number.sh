#!/bin/bash

script="s/[A]/1./Ig
s/[B]/2./Ig
s/[C]/3./Ig
s/[D]/4./Ig
s/[E]/5./Ig
s/[F]/6./Ig
s/[G]/7./Ig
s/[H]/8./Ig
s/[I]/9./Ig
s/[J]/10./Ig
s/[K]/11./Ig
s/[L]/12./Ig
s/[M]/13./Ig
s/[N]/14./Ig
s/[O]/15./Ig
s/[P]/16./Ig
s/[Q]/17./Ig
s/[R]/18./Ig
s/[S]/19./Ig
s/[T]/20./Ig
s/[U]/21./Ig
s/[V]/22./Ig
s/[W]/23./Ig
s/[X]/24./Ig
s/[Y]/25./Ig
s/[Z]/26./Ig
s/. / /Ig
s/.$//"

echo $1
echo $1 | sed  "$script" | tr ". "  + | bc

