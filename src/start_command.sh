inspect_args

source "${args[--directory]}/${args[--gtfw-file]}"

if [ "${args[--execute]}" != "" ]; then
  eval "gtfw_execute+=(${args[--execute]})";
fi

for gtfw_ex in "${gtfw_execute[@]}"; do
  # echo "executing : $gtfw_ex";
  eval "$gtfw_ex";
done;

