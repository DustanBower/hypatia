# makewiki.sh
# Lillian Lemmer
#
# ZSH script for publishing a heirarchy of asciidoc files to web format.
#
# Tested in FreeBSD.

SOURCE="websource"

rm *.html
cd "${SOURCE}"

for relative_adoc_path in **.adoc
do
    relative_adoc_dirname=$(dirname "${relative_adoc_path}")
    mkdir -p "${relative_adoc_dirname}"
    adoc_name_no_ext=$(basename "${relative_adoc_path}" .adoc)
    html_file_path="../${relative_adoc_dirname}/${adoc_name_no_ext}.html"
    asciidoc "-o" "${html_file_path}" "-a" "toc2" "${relative_adoc_path}"
done
