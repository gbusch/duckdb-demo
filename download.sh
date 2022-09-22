set -e

export KAGGLE_USERNAME=$(cat .kaggle/kaggle.json | jq -r '.username')
export KAGGLE_KEY=$(cat .kaggle/kaggle.json | jq -r '.key')

kaggle datasets download -d yuanyuwendymu/airline-delay-and-cancellation-data-2009-2018
unzip airline-delay-and-cancellation-data-2009-2018.zip -d csv-data
rm airline-delay-and-cancellation-data-2009-2018.zip
