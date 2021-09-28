#!/bin/bash

if [ -d "cpp_test_app" ]
then
    echo "cpp_test_app repository exists."
    read -p "Download new repository from source? (y/n)?" choice
    case "$choice" in 
      y|Y ) 
            echo "Downloading new repository from https://github.com/flogiston007/cpp_test_app.git"
            rm -r cpp_test_app
            git clone https://github.com/flogiston007/cpp_test_app.git
            ;;
      n|N ) 
            echo "Continue to work with the existing repository"
            ;;
      * ) echo "invalid";;
    esac
fi


docker build --tag="cpp_hello:v1" .

docker tag cpp_hello:v1 flogi:cpp_hello

docker push flogi/cpp_hello

docker run cpp_hello:v1

# docker run -t -i cpp_hello:v1 /bin/bash