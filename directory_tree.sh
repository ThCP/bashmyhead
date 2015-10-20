#!/bin/bash

# Build the directory tree and edit the permissions as requested.

# First: I create the directory tree
mkdir a
mkdir a/b a/d
mkdir a/b/e a/b/f a/b/c
mkdir a/b/f/i
mkdir a/b/c/g
mkdir a/b/c/g/h

# Second: I modify the permissions
chmod a+rwx a/ # everybody can read and write in a
chmod a-w a/d # nobody can create subdirectories of d
chmod o-r a/b/c; chmod o+w a/b/c # others can not see inside c, but can create brothers of g
chmod o+x a/b/c/g/; chmod o-x a/b/c/g/h/ # others can enter in g, but not in h
chmod g-r a/b/c/g/; chmod g+x a/b/c/g/ # group can not see g, but can enter in h
chmod o-rwx a/b/; chmod u+rwx a/b/ # others has no rights on b, while group has all permissions
chmod u+r a/b/f/i/; chmod u-wx a/b/f/i/; # owner can read i, bu has no other rights on i

touch a/xyz; chmod go-rwx a/xyz # create file xyz and modify permissions in order to allow only the owner to read and write it.



