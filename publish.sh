folder_names=("asklepios_icons" "freud_icons" "icon_pack" "nightingale_icons" "osler_icons" "sandow_icons" "turing_icons")

for folder in "${folder_names[@]}"
do
#  echo "$folder"
  cd "$folder" || exit;
  dart pub publish;

  cd .. || exit;
done