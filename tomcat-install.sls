deppks:
    pkg.latest: 
      - pkgs:
        - java-1.7.0-openjdk
        - perl
        - perl-devel
        - openssl
tomcat-install:
    file.managed:
     - name: /usr/local/src/apache-tomcat-7.0.42.tar.gz
     - source: salt://apache-tomcat-7.0.42.tar.gz
     - mode: 644
     - user: root
     - group: root
    cmd.run:
     - name: cd /usr/local/src && tar xf apache-tomcat-7.0.42.tar.gz && mv apache-tomcat-7.0.42 /usr/local/apache-tomcat-7.0.42 
