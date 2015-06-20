#Author:Tohid.Tamboli
#LICENSE GPL V2

#!/bin/bash

HEXX=$(dmidecode | grep -m 1 Product | sed 's/^...............//')
BOUNDRY=$(dmidecode | grep -m 1 Vendor | sed 's/^.........//')
VECTOR=$(dmidecode | grep -m 3  Version | sed 's/^..........//' | tail -1)
PROCESS=$(dmidecode | grep  Version | sed 's/^..........//' | tail -1)

a='J1900NH2'
b='American Megatrends Inc.'
c='6.0'
d='Intel(R) Celeron(R) CPU J1900 @ 1.99GHz'

if [[ $HEXX == $a && $BOUNDRY == $b && $VECTOR  == $c && $PROCESS == $d ]]
then

echo "motherboard ok!"
echo "bios ok!"
echo "processor ok!"


else
echo "No device has be changed !!!!"
exit 1
fi
