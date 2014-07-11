dwf
===

Drinking With Friends


Preparing Meteor Environment
============================

From wherever on your localhost...

```bash

curl https://install.meteor.com | sh

```

Meteor comes with mongo, so you don't need to install it.

Note that I installed stylus (`*.styl`).  You can just use css if you want.


Running Meteor
==============

```bash

#from 'prototype' directory

#to run in your terminal
meteor

#to run in bg
meteor &>../meteor_log &
disown %1 #or whatever job number meteor is...

```

You won't need to restart meteor to see changes.  Meteor employs HCR (Hot Code Reloads).
If you need to stop meteor, `^C` or `SIGTERM` from `kill`.
