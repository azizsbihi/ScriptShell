#!/bin/bash 


read -p "enter your name:" name
echo  " hello ${name} "
read -p  " enter your ClaasName: " ClassName
read -p  " enter you name space " namespace
echo " your ClasseName is ${ClassName} and your namespace is ${namespace} "
 echo "
*********************************

           CopyRight ${name}

**********************************
/*
author : ${name}
date : `date`
brief:
*/

namespace :  ${namespace}{
class : ${ClassName}{
    public:
    ${ClassName}();
    ~${ClassName}();
    private:
    
    };
    }
    " > ${ClassName}.hpp
#set -x  
read -p " do you want cpp file Y or N : " answer
if [ ${answer} == "Y" ]
then
echo "
*********************************

           CopyRight ${name}

**********************************
/*
author : ${name}
date : `date`
brief:
*/
#include \"${ClassName}
namespace :  ${namespace}{
    ${ClassName}::${ClassName}(){}
    ${ClassNAme}::~${Classname}(){}
}
" > ${ClassName}.cpp
echo  " class created "
fi

#set  +x


    