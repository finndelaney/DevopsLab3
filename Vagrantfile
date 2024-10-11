Vagrant.configure("2") do |config|
  # Specify the base box
  config.vm.box = "your_base_box" # Replace with your desired box

  # Upload hello.py file using the file provisioner
  config.vm.provision "file", source: "hello.py", destination: "/home/vagrant/hello.py"

  # Use shell provisioner to install packages and set up the environment
  config.vm.provision "shell", inline: <<-SHELL
    # Update package database and install required packages
    sudo pacman -Syu --noconfirm
    sudo pacman -S python python-pip --noconfirm

    # Install Flask using pip
    pip install Flask
  SHELL

  # Set up port forwarding
  config.vm.network "forwarded_port", guest: 5000, host: 5000
end
