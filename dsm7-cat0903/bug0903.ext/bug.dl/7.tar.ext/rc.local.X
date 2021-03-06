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
�n�arc.local.X ��O�@���W<��v�����Ƙ��C�	xX��h;MgVm��D�Ą@ $���z�����m<�/ؖ�8�h����%������:��J�4(�"N��N@[ ���}8��K7ޤ{;I�������n��u���`���z:����'_���鳷���6���V�~�?��|��ޜ��L_;�o�0y���zk�>c4��R�U8߳z.���2�������U�٧��fcƘ����-�њ�^!D]�����$hw5x�D���'�tL0��+Y0�R�Q���e�VR��yf�d��=.�Y��j��
����><w8>�`�!!TMT����N	D���.d�e�=w�a>�1�w�\��z���N�G�!���/�.�/���e#��ԕ�E�-�e#�˽+8ǔ3B�\�5����T9X�U�)>��+Q˳���U_���P�+�^/J�袲 )
��D�I;�QR��^�C|�O�,���r�Rŝ�DN�]9B��D�u/jfb���ʙ����ϥ? i�t��  