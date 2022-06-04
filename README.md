# csebot

Telegram bot for Kyungpook National University Computer Science Department announcement.

Search `knucse_notice_bot` to add bot.

## How to Use

1. add `~/csebot/source/data/token.txt` that contains token for your bot
2. `sudo docker build -t notice_bot .`
3. run this
```bash
sudo docker run -d \
--name bot1 \
-v ~/csebot/source/data:/var/tmp/csebot/source/data \
notice_bot
```
4. Done! Now your data is saved in `csebot/source/data/`
5. If you want to see logs, `docker logs -f bot1`

## Requirement

only docker.
