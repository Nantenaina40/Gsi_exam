output_file="check_ios.rep"
echo "$(date)" >  "$output_file"
echo "" >> "$output_file"
echo "starting ios check" >> "$output_file"

for file in ios_configs/*; do
   hostname=$(grep "hostname" "$file" | awk '{print $2}')
   ios_version=$(grep "version" "$file" | awk '{print $2}')

   echo "$hostname" >> "$output_file"
   echo "$ios_version" >> "$output_file"

   if [[ "$ios_version" == "16.9.111 " ]]; then
         echo "IOS est à jour" >> "$output_file"
   else
         echo "IOS doit être miseà niveau" >> "$output_file"
   fi 
   echo "" >> "$output_file"
done

