FROM rockylinux/rockylinux
LABEL Giancarlo Quispe Gamboa https://github.com/gquispeg

RUN yum install -y zip unzip java-1.8.0-openjdk

WORKDIR /home/
ADD "https://www2.sunat.gob.pe/facturador/SFS_v-2.1.zip" /home/
RUN unzip SFS_v-2.1.zip

ENTRYPOINT ["java" ,"-jar", "/home/facturadorApp-2.1.jar","server","prod.yaml"]
EXPOSE 9000
