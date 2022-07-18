pick=("archstarship" "archliquidprompt" "archbearings" "archohmyposh")

select opt in "${pick[@]}"; do
    sudo docker exec -it $opt zsh
    exit
done

# sudo docker exec -it archstarship zsh
# sudo docker exec -it archliquidprompt zsh
# sudo docker exec -it archbearings zsh
