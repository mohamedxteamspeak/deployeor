FROM quay.io/lyfe00011/test:beta

RUN git clone https://github.com/mohamedxteamspeak/Pinky /root/WhatsAsenaDuplicated
WORKDIR /root/WhatsAsenaDuplicated/
RUN yarn install --no-audit
RUN git clone https://github.com/mohamedxteamspeak/uploads
RUN cp -R /root/Utils/* /root/WhatsAsenaDuplicated 
RUN npm install supervisor -g
CMD ["node", "bot.js"]
