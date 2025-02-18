#CREDITS FOR THE AUDIO SCRIPT AND KEY SCRIPT GO TO WEIRDTREETHING IN GITHUB!I DID NOT WRITE ANY CODE FOR ANY OF THE SCRIPTS!
#https://github.com/WeirdTreeThing

read -p "Would you like to install the audio script y/n " confirmation

case $confirmation in
  [yY] )
    audio="1"
    echo $audio
    ;;
  [nN] )
    audio="0"
    echo $audio
    ;;
  * )
    echo "Invalid input. Please enter y or n."
    exit 1
    ;;
esac

ead -p "Would you like to install the key script y/n " confirmation

case $confirmation in
  [yY] )
    key="1"
    echo $audio
    ;;
  [nN] )
    key="0"
    echo $audio
    ;;
  * )
    echo "Invalid input. Please enter y or n."
    exit 1
    ;;
esac

if [ $audio="1" ]; then
    apt install git;
    cd ~;
    git clone https://github.com/WeirdTreeThing/chromebook-linux-audio;
    cd chromebook-linux-audio;
    ./setup-audio
fi

if [ $key="1" ]; then
    apt install git;
    cd ~
    git clone https://github.com/WeirdTreeThing/cros-keyboard-map
    cd cros-keyboard-map
    ./install.sh
fi