FROM centos
RUN yum update && yum upgrade 
RUN yum install git vim curl httpd zip unzip tree net-tools
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/convid.zip /tmp
RUN unzip /tmp/convid.zip
RUN cp /tmp/* /var/www/html
CMD CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
