#not a complete bashrc! paste this at the bottom of your bashrc
#this requires you install "cowsay"
clear
alias clear='bash' #optional, its an attempt to make clear rerun the fastfetch and quotes thing. you should remove this if you dont want nested bash instances.
alias codex='~/.local/bin/codex' #i put this here because codex fixed my bluetooth (yay)
alias please='sudo'
alias yeet='rm -rf' #unfortunately, "please yeet" doesnt work because sudo doesnt deal with aliases and will just say "yeet isnt a valid command" or something :(
alias localgpt='ollama run qwen3:4b'
alias bashrc='vim ~/.bashrc' #replace "vim" with your text editor of choice (shameless plugin for my textedit repo.. but seriously its a fun project of mine)
fastfetch
quotes=( #add more quotes if you want! or remove some.
    "There is no place like 127.0.0.1."
    "It works on my machine."
    "Segmentation fault (core dumped)."
    "sudo make me a sandwich."
    "In theory, theory and practice are the same. In practice, they are not."
    "Have you tried turning it off and on again?"
    "The only winning move is not to play."
    "There are 10 types of people: those who understand binary and those who don't."
    "rm -rf / is not a personality trait."
    "I use Arch, btw." #99% chance anybody using the repo cant legally say this
    "The terminal is my happy place."
)

quote="${quotes[RANDOM % ${#quotes[@]}]}"

printf '%s\n' "$quote" | cowsay 
export PATH="$PATH:/usr/sbin"
