if [ -z "$UPSTREAM_REPO" ]
then
  echo "Cloning main Repository"
  git clone https://github.com/yogi444/MARTIN-BOT.git /MARTIN-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MARTIN-BOT
fi
cd /MARTIN-BOT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
exit
