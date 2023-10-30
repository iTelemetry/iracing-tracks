set -e

KEYWORD="<style type=\"text/css\">\n\t.track{fill:none;stroke:#231F20;stroke-width:20;stroke-miterlimit:10;}\n</style>"
ESCAPED_KEYWORD=$(printf '%s\n' "$KEYWORD" | sed -e 's/[]\/$*.^[]/\\&/g')

REPLACE='<style>svg {height: 100%;width: 100%;}.track-surface {fill: none;stroke: white;stroke-width: 30;}</style>'
ESCAPED_REPLACE=$(printf '%s\n' "$REPLACE" | sed -e 's/[\/&]/\\&/g')

echo 'Replacing .track'
sed -i '.bak' "s/$ESCAPED_KEYWORD/$ESCAPED_REPLACE/g" *.svg



KEYWORD=".track-surface{fill:none;stroke:#231F20;stroke-width:10;stroke-miterlimit:10;}"
ESCAPED_KEYWORD=$(printf '%s\n' "$KEYWORD" | sed -e 's/[]\/$*.^[]/\\&/g')

REPLACE='svg {height: 100%;width: 100%;}.track-surface {fill: none;stroke: white;stroke-width: 30;}'
ESCAPED_REPLACE=$(printf '%s\n' "$REPLACE" | sed -e 's/[\/&]/\\&/g')

echo 'Replacing bad .track-surface'
sed -i '.bak' "s/$ESCAPED_KEYWORD/$ESCAPED_REPLACE/g" *.svg



KEYWORD='<style type="text/css">.track{fill:none;stroke:#231F20;stroke-width:20;stroke-miterlimit:10;}</style>'
ESCAPED_KEYWORD=$(printf '%s\n' "$KEYWORD" | sed -e 's/[]\/$*.^[]/\\&/g')

REPLACE='<style>svg {height: 100%;width: 100%;}.track-surface {fill: none;stroke: white;stroke-width: 30;}</style>'
ESCAPED_REPLACE=$(printf '%s\n' "$REPLACE" | sed -e 's/[\/&]/\\&/g')

echo 'Replacing .track single line'
sed -i '.bak' "s/$ESCAPED_KEYWORD/$ESCAPED_REPLACE/g" *.svg



KEYWORD='class="track"'
ESCAPED_KEYWORD=$(printf '%s\n' "$KEYWORD" | sed -e 's/[]\/$*.^[]/\\&/g')

REPLACE='class="track-surface"'
ESCAPED_REPLACE=$(printf '%s\n' "$REPLACE" | sed -e 's/[\/&]/\\&/g')

echo 'Replacing class="track"'
sed -i '.bak' "s/$ESCAPED_KEYWORD/$ESCAPED_REPLACE/g" *.svg



KEYWORD='st0'
ESCAPED_KEYWORD=$(printf '%s\n' "$KEYWORD" | sed -e 's/[]\/$*.^[]/\\&/g')

REPLACE='track-surface'
ESCAPED_REPLACE=$(printf '%s\n' "$REPLACE" | sed -e 's/[\/&]/\\&/g')

echo 'Replacing st0'
sed -i '.bak' "s/$ESCAPED_KEYWORD/$ESCAPED_REPLACE/g" *.svg
