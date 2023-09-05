FROM nginx-with-brotli

RUN sed -i "1 i load_module modules/ngx_http_brotli_static_module.so;" /etc/nginx/nginx.conf \
    && sed -i "1 i load_module modules/ngx_http_brotli_filter_module.so;" /etc/nginx/nginx.conf

COPY ./compression.conf /etc/nginx/conf.d/compression.conf