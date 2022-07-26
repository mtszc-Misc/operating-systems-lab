#!/bin/bash

#5.1. Heksadecymalne
#grep -o -P '(?<=^|\s)+(0x[[:xdigit:]]+)(?=$|\s)+' $1

#5.2. email
#grep -o -P '(?<=^|\s)+([a-zA-Z0-9.,;:]+@[a-zA-Z0-9.-]+\.[a-zA-Z0-9.-]+)(?=$|\s)+' $1

#5.3. zmiennoprzecinkowe
#grep -o -P '(?<=^|\s)+([+-]?[0-9]*\.[0-9]+)(?=$|\s)+' $1
