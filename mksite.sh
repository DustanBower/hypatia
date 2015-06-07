# makewiki.sh
# Lillian Lemmer
#
# ZSH script for publishing a heirarchy of asciidoc files to web format.
#
# Tested in FreeBSD.

SOURCE="websource"

cd "${SOURCE}"

for relative_adoc_path in **.adoc
do
    relative_adoc_dirname=$(dirname "${relative_adoc_path}")
    mkdir -p "${relative_adoc_dirname}"
    adoc_name_no_ext=$(basename "${relative_adoc_path}" .adoc)
    html_file_path="../${relative_adoc_dirname}/${adoc_name_no_ext}.html"
    rm "${html_file_path}"
    asciidoc "-o" "${html_file_path}" "-a" "toc2" "${relative_adoc_path}"
done
