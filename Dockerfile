FROM public.ecr.aws/nginx/nginx:stable-alpine

RUN rm -rf /usr/share/nginx/html/*

COPY index_generic.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
