# Hyprland Install Shell Script

Para instalar o Hyprland com a minha configuração siga esses passos:

- Você deve está ciente do que está fazendo, lembre-se nem todos os hardware são iguais, então minha configuração pode não pegar de primeira ou 100% no seu hardware
- Leia a [documentação](https://wiki.hyprland.org/) do Hyprland
- Primeiro execute o script do [pacman-install.sh](https://github.com/frannksz/hyprland-install/blob/main/pacman-install.sh) ele será o reponsavél por baixar os pacotes necessários para bootar o Hyprland
- Claro, esteja usando Arch Linux, nunca testei esse script em base Arch, se quiser testar fique a vontade, se der algum problema a culpa não é minha :)

## Instalando pacotes:
```
curl https://raw.githubusercontent.com/frannksz/hyprland-install/main/pacman-install.sh |bash
```

## Para iniciar o Hyprland digite no tty:
```
Hyprland
```

## Agora com o Hyprland bootado, execute o script principal
OBS: Caso o Hyprland buga, reboota o seu PC, no topo tela mostra como abrir o terminal, lembre-se a tecla SUPER significa a tecla windows do seu teclado

Execute no terminal:

```
curl https://raw.githubusercontent.com/frannksz/hyprlan-install/main/hyprland-install.sh |bash
```

## Finalizado
Se ocorrer tudo bem, mostra que o script funcionou, depois de finalizado o script tenta rebootar o PC com um **sudo reboot** para aplicar algumas configs e alguns detalhes.
