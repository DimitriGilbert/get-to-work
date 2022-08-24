# inspect_args

if [ ! -d "${args[--directory]}" ];then
  mkdir -p "${args[--directory]}";
fi

echo -e "# Get To Work\n" > "${args[--directory]}/${args[--gtfw-file]}"
echo "gtfw_workspace=${args[workspace_name]}" >> "${args[--directory]}/${args[--gtfw-file]}"
echo "gtfw_workspace_directory=${args[--directory]}" >> "${args[--directory]}/${args[--gtfw-file]}"
echo -e "gtfw_execute=()\n" >> "${args[--directory]}/${args[--gtfw-file]}"

echo "# to add stuff:" >> "${args[--directory]}/${args[--gtfw-file]}"
echo -e "#  gtfw_execute+=(\"a_command 'with argument' --and-option\")\n" >> "${args[--directory]}/${args[--gtfw-file]}"

