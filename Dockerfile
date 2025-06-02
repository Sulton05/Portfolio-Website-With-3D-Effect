# Rasmiy kichik nginx versiyasidan foydalanamiz
FROM nginx:alpine

# Bizning fayllarimizni nginx serverining "root" papkasiga nusxalaymiz
COPY . /usr/share/nginx/html
