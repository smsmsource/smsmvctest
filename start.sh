echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/ahmedelnqyb/vvvv /vvvv
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/ahmedelnqyb/vvvv -b $BRANCH /vvvv
fi
cd /vvvv
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
