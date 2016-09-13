#!/bin/bash
sleep 10
rsync -auv  sanma:./Research_Neurochip/ ~/Research_Neurochip/
rsync -auv  ~/Research_Neurochip/ sanma:./Research_Neurochip/
rsync -auv  sanma:./mydir/ ~/mydir/
rsync -auv  ~/mydir/ sanma:./mydir/ 
