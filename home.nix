{ config, pkgs, ... }:

  let
    nixgl = import <nixgl> {};
  in {
  #Basic stuff
  home.username = "kavs";
  home.homeDirectory = "/home/kavs";
  home.stateVersion = "24.11"; #Dont EVER change

  programs.home-manager.enable = true; #let home-manager manage itself
  news.display = "silent"; #stops notification popup

  targets.genericLinux.enable = true; #make Home Manager work better on GNU/Linux distributions other than NixOS
  nixpkgs.config.allowUnfree = true; #allow proprietry packages
  
  #import other .nix configs
  imports = [
    ./alacritty.nix
  ];

  #home configs
  home.packages = with pkgs; [    
    neofetch
    verilator
    nix-info
    bat
    quickemu
    nixgl.nixGLIntel
    #nerd-fonts.fira-code #font
    nerd-fonts.iosevka-term #font
    nerd-fonts.jetbrains-mono #font
    #alacritty-theme
    #sanctity #diplay terminal colours
  ];


  #programs.alacritty.package =  config.lib.nixGL.wrap pkgs.alacritty;

  #program configs   
  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
  };

  #font stuff
  fonts.fontconfig.enable = true;

}
