Vagrant.configure("2") do |config|
  # Specify the base box
  config.vm.box = "debian/bookworm64" # Replace with your desired box

  # Upload hello.py file using the file provisioner
  config.vm.provision "file", source: "hello.py", destination: "/home/vagrant/hello.py"

  # Use shell provisioner to install packages and set up the environment
  config.vm.provision "shell", inline: <<-SHELL
    # Update package database and install required packages
    sudo apt update
    sudo apt install git nano vim python-is-python3 python3-venv python3-pip

    python -m venv flask_venv
    source flask_venv/bin/activate

    # Install Flask using pip
    pip install Flask
  SHELL

  # Set up port forwarding
  config.vm.network "forwarded_port", guest: 5000, host: 5000
end

