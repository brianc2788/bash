# ============================================== #
# TALKING-TO-MYSELF.SH - SHELL SCRIPT            #
# ============================================== #
# just for fun. might lead to some good ideas for#
# something later on.                            #
# clearly a lot of potential here.               #
# -----------------------------------------------#
# brianc2788@gmail.com                           #
# ---------------------------------------------- #

clear
sleep 1.0
echo "Talking to myself..."
sleep 1
tput setaf 1;tput cup 5 10;echo -n 'where am i?'
sleep 1
tput setaf 2;tput cup 10 20;echo -n 'huh? who are you?'
sleep 1
tput setaf 1;tput cup 15 10;echo -n 'how are you doing that?'
sleep 1
tput setaf 2;tput cup 20 20;echo -n 'doing what?'
sleep 1
tput setaf 4;tput cup 25 15;echo -n '.'
sleep 1.5
tput setaf 4;tput cup 25 16;echo -n '.'
sleep 1.5
tput setaf 4;tput cup 25 17;echo -n '.'
sleep 1.5
tput setaf 6;tput cup 34 1; echo -n "k. you can leave now."
sleep 1
tput setaf 6;tput cup 35 1;echo -n "press ENTER to exit..."
read ${BLANKVAR}
