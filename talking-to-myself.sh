# TALKING-TO-MYSELF.SH - SHELL SCRIPT
# ===================================
# just for fun. might lead to some good ideas for
# a UI or something later on.
# brianc2788@gmail.com

clear
echo "Talking to myself..."
tput setaf 1;tput cup 5 10;echo -n 'where am i?'
tput setaf 2;tput cup 10 20;echo -n 'huh? who are you?'
tput setaf 1;tput cup 15 10;echo -n 'how are you doing that?'
tput setaf 2;tput cup 20 20;echo -n 'doing what?'
tput setaf 4;tput cup 25 15;echo -n '...'
tput setaf 6;tput cup 35 1;echo -n "press ENTER to exit..."
read ${BLANKVAR}
