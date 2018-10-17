# these elements need to be put into a "mode" filetracker mode!
# everytime you turn on filetracker mode you can choose an existing file or another file.
p(){
  echo $* >> ~/.uninstall_scripts_that_were_successful
  eval $*

  echo ; echo "Added info new file contents:" ; echo ;
  cat ~/.uninstall_scripts_that_were_successful
}
pop(){
  removeLastLine=$(sed '$d' ~/.uninstall_scripts_that_were_successful)
  echo "$removeLastLine"
  echo "$removeLastLine" > ~/.uninstall_scripts_that_were_successful
}
show(){
  cat ~/.uninstall_scripts_that_were_successful
}
