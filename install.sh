#!/bin/bash

###########################################################
#########           functions
###########################################################
ubuntu20_config () {
  echo "###########################################################"
  echo "ubuntu config started"
  echo "###########################################################"



  exit
}





redhat8_config () {
  echo "redhat config started"
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





# sudo apt-get update -y


# #install ansible 

# sudo apt-get install -y ansible 







