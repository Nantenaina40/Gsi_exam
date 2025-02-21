FROM ubuntu:20.04
RUN echo "<html><body><h1> Install Apache </h1></body></html>" > /Gsi_exam
EXPOSE 80
CMD ["nginx", -g", "daemon off;"]

