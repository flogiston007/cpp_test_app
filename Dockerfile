FROM tonka3000/ubuntu-cpp:20.04
COPY cpp_test_app /project
LABEL maintainer="flogiston007@gmail.com"
RUN echo "Greeting = 'Hello There'" > settings.conf
RUN ["g++", "main.cpp"]
CMD ./a.out
