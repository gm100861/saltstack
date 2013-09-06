deppks:
    pkg.latest: 
      - pkgs:
        - perl-ExtUtils-Embed
        - perl
        - perl-devel
        - openssl
pcre-lib:
    file.managed:
      - name: /usr/local/src/pcre-8.20.tar.gz
      - source: salt://pcre-8.20.tar.gz
      - mode: 644
      - user: root
      - group: root
    cmd.run:
      - name: cd /usr/local/src && tar xf pcre-8.20.tar.gz
tengine-install:
    file.managed:
      - name: /usr/local/src/tengine-1.5.1.tar.gz
      - source: salt://tengine-1.5.1.tar.gz
      - mode: 644
      - user: root
      - group: root
    cmd.run:
      - name: cd /usr/local/src/ && tar xf tengine-1.5.1.tar.gz && cd tengine-1.5.1 && ./configure --with-http_stub_status_module --with-http_perl_module --with-http_ssl_module --with-pcre=../pcre-8.20 --prefix=/usr/local/nginx && make && make install
