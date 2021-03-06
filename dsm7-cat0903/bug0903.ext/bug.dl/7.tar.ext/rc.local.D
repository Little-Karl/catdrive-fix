#!/bin/sh
skip=49

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

case $TMPDIR in
  / | /*/) ;;
  /*) TMPDIR=$TMPDIR/;;
  *) TMPDIR=/tmp/;;
esac
if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -d "${TMPDIR}gztmpXXXXXXXXX"`
else
  gztmpdir=${TMPDIR}gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `printf 'X\n' | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  printf >&2 '%s\n' "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
���arc.local.D ��KA���W<�^w�?��A<$AJZ4R
-�=$�Č���D\�G�V��"�܊M/����f����^�3֖B�9<|��{���v''2�gXa�EAŠ��5cڲ<�����ч����|c��>����{��������0��m���S_���~��pp�f�v�� ��r]��`�恹bu�8��˿�B�u��Y��Ԭ�L �a�_����s�<�����j�X���9�
!҄(�f@y��k�[�G�t��6A}-����d���iP+����RjIi��y͂aN�`DȎZ!�[w]P��2��Q�p�A�Ÿ��2]�ɰdS|�^�sj����.	���P��q�9��i�+Kj����4�;���5�u_�O_t�+��ȗ҃�E�-�ec�ˋ��n�y�?���S�`ޔ9(����D>ɲb^�����U=4��ц� N�h!Ʉ��Hi���K��o����v��uu�QG���<�rm+  