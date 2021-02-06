# tested in bash in ubuntu

read -p "Proceeding will remove all data from ./data and update with the online source. Are you sure? (y/n)? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

rm data/*

wget https://www.kdd.org/cupfiles/KDDCupData/2009/orange_small_train.data.zip -P ./data

wget https://www.kdd.org/cupfiles/KDDCupData/2009/orange_small_test.data.zip -P ./data

wget https://www.kdd.org/cupfiles/KDDCupData/2009/orange_small_train_churn.labels -P ./data

if ! command -v unzip &> /dev/null
then
    echo "unzip is not installed, please unzip your data files manually or install unzip and rerun"
    exit
fi

cd data

unzip orange_small_train.data.zip
rm orange_small_train.data.zip

unzip orange_small_test.data.zip
rm orange_small_test.data.zip