# makewiki.sh
# Lillian Lemmer
# 2015-06-04T18:03
#
# ZSH script for publishing a heirarchy of asciidoc files to web format.
#
# Tested in FreeBSD.

SOURCE="websource"
DESTINATION="."

for relative_adoc_path in "${SOURCE}"/**.adoc
do
    relative_adoc_dirname=$(dirname "${relative_adoc_path}")
    mkdir -p "${DESTINATION}/${relative_adoc_dirname}"
    adoc_name_no_ext=$(basename "${relative_adoc_path}" .adoc)
    html_file_path="${DESTINATION}/${relative_adoc_dirname}/${adoc_name_no_ext}.html"
    asciidoc "-o" "${html_file_path}" "-a" "toc2" "${relative_adoc_path}"
done
