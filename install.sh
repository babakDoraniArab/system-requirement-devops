#!/bin/bash

###########################################################
#########           functions
###########################################################
banner (){
  echo "###########################################################"
  echo "$1 configuraton is started"
  echo "###########################################################"
}

ubuntu20_config () {
  banner Ubuntu20
  sudo apt install software-properties-common
  sudo add-apt-repository --yes --update ppa:ansible/ansible
  sudo apt-get install -y ansible
  ansible-playbook ubuntu20/ubuntu20.yaml -i ubuntu20/inventory
  exit
}

ubuntu18_config () {
  banner Ubuntu18
  exit
}


redhat8_config () {
 banner Redhat8
 exit
}



  
select_os (){
PS3='What is your Opration System? choose one of the options please ?
'
options=("ubuntu 18" "ubuntu 20" "redhat 8"  "Quit")

select opt in "${options[@]}"
do
    case $opt in
        "ubuntu 18")
            ubuntu18_config
            ;;
        "redhat 8")
            redhat8_config
            ;;
        "ubuntu 20")
            ubuntu20_config
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY Please try again";;
    esac
done
}

###########################################################
#########          start from here 
###########################################################


# first we need to know about os and call the appropriate function.

select_os













