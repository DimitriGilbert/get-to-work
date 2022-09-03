# inspect_args
# shellcheck source=../.gtfw

source "${args[--directory]}/${args[--gtfw-file]}"

exgp="gtfw_execute";
if [ "${args[--group]}" != "" ]; then
  exgp+="_${args[--group]}";
fi

if [ "${args[--execute]}" != "" ]; then
  eval "${exgp}+=(${args[--execute]})";
fi

toexarr=()
eval "toexarr=(\"\${${exgp}[@]}\")";

for gtfw_ex in "${toexarr[@]}"; do
  # echo "executing : $gtfw_ex";
  eval "$gtfw_ex";
done;
