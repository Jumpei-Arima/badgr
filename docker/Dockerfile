FROM nvidia/cuda:9.0-cudnn7-runtime-ubuntu16.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
                       wget \
                       python3-pip 

# ROS setting
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list' && \
    apt-key adv --keyserver 'hkp://ha.pool.sks-keyservers.net:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
                       ros-kinetic-ros-base

RUN apt-get install -y --no-install-recommends \
                       ros-kinetic-ros-numpy \
                       python-rosinstall \
    && rm -rf /var/lib/apt/lists/*

RUN rosdep init && rosdep update

RUN echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc

WORKDIR /root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
                       ros-kinetic-ros-numpy \
                       wget \
                       python3-pip \
                       tk-dev \
                       python3-tk \
    && rm -rf /var/lib/apt/lists/*

# for badgr
WORKDIR /root

RUN pip3 install --upgrade pip

RUN pip3 install setuptools

RUN pip3 install catkin-pkg==0.4.13 \
                 loguru==0.3.2 \
                 matplotlib==3.0.3 \
                 numpy==1.17.2 \
                 opencv-python==4.1.1.26 \
                 Pillow==6.1.0 \
                 PyYAML==5.1.2 \
                 requests==2.22.0 \
                 rospkg==1.1.10 \
                 tensorflow-gpu==1.12.0 \
                 utm==0.5.0

RUN echo 'export PYTHONPATH=/root/badgr/src:$PYTHONPATH' >> ~/.bashrc

WORKDIR /root
