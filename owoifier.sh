if (( $# == 0 ))
then
    input=$(</dev/stdin)
else
    input=$@
fi
echo "$input" | sed -E "s/(l|L)o(v|V)(e|E)/\1u\2/g;s/(l|L)O(v|V)(e|E)/\1U\2/g;s/(l|L)o(v|V)(i|I)(n|N)(g|G)/\1u\2\3\4\5/g;s/(l|L)O(v|V)(i|I)(n|N)(g|G)/\1U\2\3\4\5/g;s/r|l/w/g;s/R|L/W/g;s/(n|N)(a|e|i|o|u)/\1y\2/g;s/(n|N)(A|E|I|O|U)/\1Y\2/g;s/(q|Q)u/\1w/g;s/(q|Q)U/\1W/g;s/(h|H)(a|A)s/\1\2z/g;s/(h|H)(a|A)S/\1\2Z/g;s/(h|H)(a|A)v(e|E)/\1\2z/g;s/(h|H)(a|A)V(e|E)/\1\2Z/g;s/(^|\s)(s|S)ay(s|S)/\1\2ez/g;s/(^|\s)(s|S)Ay(s|S)/\1\2Ez/g;s/(^|\s)(s|S)AY(s|S)/\1\2EZ/g;s/(^|\s)(s|S)aY(s|S)/\1\2eZ/g;s/th(e|E)($|\s)/da\2/g;s/Th(e|E)($|\s)/Da\2/g;s/TH(e|E)($|\s)/DA\2/g;s/tH(e|E)($|\s)/dA\2/g;s/(p|P)(a|A)u(s|S)(e|E)(\s|$)/\1\2w\3\5/g;s/(p|P)(a|A)U(s|S)(e|E)(\s|$)/\1\2W\3\5/g;s/(p|P)(a|A)u(s|S)/\1\2w\3/g;s/(p|P)(a|A)U(s|S)/\1\2W\3/g;s/y(o|O)(u|U)/u/g;s/Y(o|O)(u|U)/U/g;s/'//g;s/(i)ve/\1/gi"
