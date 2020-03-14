
#Setup sources.list and installation
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update -y
sudo apt-get install ros-kinetic-desktop-full -y

#Initialize rosdep
sudo rosdep init
rosdep update

# Environment setup
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

#Dependencies for building packages
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential
