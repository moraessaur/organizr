ubuntu_setup <- function(path=getwd()){
  ubuntu_config <-
"sudo apt install update-manager-core
sudo apt upgrade
sudo apt dist-upgrade
sudo apt autoremove
sudo do-release-upgrade
sudo apt install r-base
sudo apt install build-essential
sudo apt-get install libxml2-dev
sudo apt-get install libssl-dev
sudo apt-get install libcurl4-openssl-dev
sudo apt install postgresql postgresql-contrib
sudo apt-get install git
sudo apt install ssh-askpass
ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
sudo apt-get install libnlopt-dev
sudo apt-get install libfontconfig1-dev
sudo apt-get install libgdal-dev
sudo apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6"

write(ubuntu_config,paste0(getwd(),"/ubuntu_config.sh"))
print("Ubuntu setup generated!")
}

