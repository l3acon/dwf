dwf
===

Drinking With Friends


Preparing Meteor Environment
============================

From wherever on your localhost...

```bash

curl https://install.meteor.com | sh

```

I think you might need node first.
Meteor comes with mongo, so you don't need to install it.

Also, once meteor is installed, run this:

```bash

meteor install stylus

```

Stylus is a css preprocessor.  
You can write your usual css, but don't put '{}'s...  ':'s, and ';'s are optional.
Just don't forget to indent.


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
