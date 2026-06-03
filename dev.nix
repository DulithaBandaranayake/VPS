{ pkgs, ... }: {
  channel = "stable-24.05";

  packages = with pkgs; [
    unzip
    openssh
    git
    qemu_kvm
    sudo
    cdrkit
    cloud-utils
    qemu
  ];

  env = {
    EDITOR = "nano";
    VM_DIR = "$HOME/Projects/VPS/vms";
  };

  idx = {
    extensions = [
      "Dart-Code.flutter"
      "Dart-Code.dart-code"
    ];

    workspace = {
      onCreate = {
        mkdir -p "$VM_DIR";
      };
      onStart = {
        mkdir -p "$VM_DIR";
      };
    };

    previews = {
      enable = false;
    };
  };
}
