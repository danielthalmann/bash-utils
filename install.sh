#!/bin/bash


echo '- Check if utilities is installed on bashrc'
grep '~/.bash_utils' ~/.bashrc > /dev/null
if [ $? -eq 0 ]
then
  echo "  [i] soon installed"
else
  echo "  [ ] not installed"
  echo "- Istall utilities on bashrc"
  echo "
# utils bash alias and commands 
 
if [ -f ~/.bash_utils ]; then 
  . ~/.bash_utils
fi
" >> ~/.bashrc
  echo "  [i] installed successfull"
fi
echo '- Update or install bash_utils'
cp ./.bash_utils ~/.bash_utils


