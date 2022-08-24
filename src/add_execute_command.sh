# inspect_args

eval "execute_add=(${args[execute]})";

exgp="gtfw_execute";
if [ "${args[--group]}" != "" ]; then
  exgp+="_${args[--group]}";
fi

for exac in "${execute_add[@]}"; do
  echo "${exgp}+=(\"$exac\")" >> "${args[--directory]}/${args[--gtfw-file]}";
done
