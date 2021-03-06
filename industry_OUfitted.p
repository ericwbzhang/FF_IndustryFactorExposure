�}q (X   Otherq}q(X   SMBq}q(X   lamqcnumpy.core.multiarray
scalar
qcnumpy
dtype
qX   f8qK K�q	Rq
(KX   <qNNNJ����J����K tqbC۞�pN�?q�qRqX   ar_modelqcstatsmodels.tsa.ar_model
ARResultsWrapper
q)�q}q(X   __doc__qX�
  
    Class to hold results from fitting an AR model.

    Parameters
    ----------
    model : AR Model instance
        Reference to the model that is fit.
    params : array
        The fitted parameters from the AR Model.
    normalized_cov_params : array
        inv(dot(X.T,X)) where X is the lagged values.
    scale : float, optional
        An estimate of the scale of the model.

    Returns
    -------
    **Attributes**

    aic : float
        Akaike Information Criterion using Lutkephol's definition.
        :math:`log(sigma) + 2*(1 + k_ar + k_trend)/nobs`
    bic : float
        Bayes Information Criterion
        :math:`\log(\sigma) + (1 + k_ar + k_trend)*\log(nobs)/nobs`
    bse : array
        The standard errors of the estimated parameters. If `method` is 'cmle',
        then the standard errors that are returned are the OLS standard errors
        of the coefficients. If the `method` is 'mle' then they are computed
        using the numerical Hessian.
    fittedvalues : array
        The in-sample predicted values of the fitted AR model. The `k_ar`
        initial values are computed via the Kalman Filter if the model is
        fit by `mle`.
    fpe : float
        Final prediction error using Lutkepohl's definition
        ((n_totobs+k_trend)/(n_totobs-k_ar-k_trend))*sigma
    hqic : float
        Hannan-Quinn Information Criterion.
    k_ar : float
        Lag length. Sometimes used as `p` in the docs.
    k_trend : float
        The number of trend terms included. 'nc'=0, 'c'=1.
    llf : float
        The loglikelihood of the model evaluated at `params`. See `AR.loglike`
    model : AR model instance
        A reference to the fitted AR model.
    nobs : float
        The number of available observations `nobs` - `k_ar`
    n_totobs : float
        The number of total observations in `endog`. Sometimes `n` in the docs.
    params : array
        The fitted parameters of the model.
    pvalues : array
        The p values associated with the standard errors.
    resid : array
        The residuals of the model. If the model is fit by 'mle' then the
        pre-sample residuals are calculated using fittedvalues from the Kalman
        Filter.
    roots : array
        The roots of the AR process are the solution to
        (1 - arparams[0]*z - arparams[1]*z**2 -...- arparams[p-1]*z**k_ar) = 0
        Stability requires that the roots in modulus lie outside the unit
        circle.
    scale : float
        Same as sigma2
    sigma2 : float
        The variance of the innovations (residuals).
    trendorder : int
        The polynomial order of the trend. 'nc' = None, 'c' or 't' = 0,
        'ct' = 1, etc.
    tvalues : array
        The t-values associated with `params`.
    qX   _resultsqcstatsmodels.tsa.ar_model
ARResults
q)�q}q(X   n_totobsqK
X   nobsqK	X   df_residqKX
   k_constantqK X   modelqcstatsmodels.tsa.ar_model
AR
q)�q }q!(X   Yq"cnumpy.core.multiarray
_reconstruct
q#cnumpy
ndarray
q$K �q%Cbq&�q'Rq((KK	K�q)h
�CHG���|��?L�����?/i���?ژ{csB�?�ըB��?{��)��?��֬<[�?Bt!��k�?�w�G�?q*tq+bhK	hKhK X
   _data_attrq,]q-(X   exogq.X   endogq/X	   data.exogq0X
   data.endogq1X   data.orig_endogq2X   data.orig_exogq3eX   Xq4h#h$K �q5h&�q6Rq7(KK	K�q8h
�C�      �?�Q��S��?      �?G���|��?      �?L�����?      �?/i���?      �?ژ{csB�?      �?�ըB��?      �?{��)��?      �?��֬<[�?      �?Bt!��k�?q9tq:bX   dataq;cstatsmodels.base.data
PandasData
q<)�q=}q>(X   predict_endq?cpandas._libs.tslib
Timestamp
q@�  E�U7fNN�qARqBhK X   predict_startqCh@�  �F�K�NN�qDRqEX	   orig_exogqFNX
   orig_endogqGcpandas.core.series
Series
qH)�qI}qJ(X   _dataqKcpandas.core.internals
SingleBlockManager
qL)�qM(]qNcpandas.core.indexes.base
_new_Index
qOcpandas.core.indexes.base
Index
qP}qQ(h;h#h$K �qRh&�qSRqT(KK
�qUhX   O8qVK K�qWRqX(KX   |qYNNNJ����J����K?tqZb�]q[(X
   1996-03-01q\X
   1997-03-01q]X
   1998-03-01q^X
   1999-03-01q_X
   2000-03-01q`X
   2001-03-01qaX
   2002-03-01qbX
   2003-03-01qcX
   2004-03-01qdX
   2005-03-01qeetqfbX   nameqgNu�qhRqia]qjh#h$K �qkh&�qlRqm(KK
�qnh
�CP�Q��S��?G���|��?L�����?/i���?ژ{csB�?�ըB��?{��)��?��֬<[�?Bt!��k�?�w�G�?qotqpba]qqhOhP}qr(h;h#h$K �qsh&�qtRqu(KK
�qvhX�]qw(h\h]h^h_h`hahbhchdheetqxbhgNu�qyRqza}q{X   0.14.1q|}q}(X   blocksq~]q}q�(X   valuesq�hmX   mgr_locsq�cbuiltins
slice
q�K K
K�q�Rq�uaX   axesq�hNustq�bX   _typq�X   seriesq�X	   _metadataq�]q�hgahgX   valueq�ubX   freqq�X   AS-MARq�X   _cacheq�cstatsmodels.tools.decorators
ResettableCache
q�)�q�(X   ynamesq�h�X
   row_labelsq�hiX   xnamesq�]q�(X   constq�X   L1.valueq�eu}q�X
   _resetdictq�}q�sbh.NX   predict_datesq�cpandas.core.indexes.datetimes
_new_DatetimeIndex
q�cpandas.core.indexes.datetimes
DatetimeIndex
q�}q�(X   tzq�Nh�cpandas.tseries.offsets
YearBegin
q�)�q�}q�(X   _offsetq�cdateutil.relativedelta
relativedelta
q�)�q�}q�(X   minutesq�K X   monthsq�K X   secondq�NX   hourq�NX   weekdayq�NX   daysq�K X   monthq�KX	   _has_timeq�K X   dayq�NX   minuteq�NX   leapdaysq�K X   yearsq�K X   microsecondsq�K X   microsecondq�NX   yearq�NX   secondsq�K X   hoursq�K ubX	   normalizeq��h�KX   _use_relativedeltaq��X   nq�KX   kwdsq�}q�h�Ksubh;h�h�}q�(h�Nh�Nh;h#h$K �q�h&�q�Rq�(KK	�q�hX   M8q�K K�q�Rq�(KhNNNJ����J����K }q�(Cnsq�KKKtqǆq�tq�b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fq�tq�bhgNu�q�Rq�hgNu�q�Rq�X	   const_idxq�NX   datesq�h�h�}q�(h�Nh�Nh;h#h$K �q�h&�q�Rq�(KK
�q�hX   M8q�K K�q�Rq�(KhNNNJ����J����K }q�(Cnsq�KKKtq܆q�tq�b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fq�tq�bhgNu�q�Rq�h/h#h$K �q�h&�q�Rq�(KK
�q�h
�CP�Q��S��?G���|��?L�����?/i���?ژ{csB�?�ըB��?{��)��?��֬<[�?Bt!��k�?�w�G�?q�tq�bubh.NX   k_trendq�KX   transparamsq�X   trendq�X   cq�X   sigma2q�hh
Cp���V?q�q�Rq�X
   _init_keysq�]q�X   k_arq�Kh/h#h$K �q�h&�q�Rq�(KK
K�q�h
�CP�Q��S��?G���|��?L�����?/i���?ژ{csB�?�ըB��?{��)��?��֬<[�?Bt!��k�?�w�G�?q�tq�bX   methodq�X   cmleq�ubh4h7h;h=X
   trendorderq�K h�h�)�q�(X   fittedvaluesq�h#h$K �q�h&�r   Rr  (KK	�r  h
�CH������?��A���?+�c8��?�'��V��?�X�����?1���D��?�ܔ��N�?If��?��?IRP�8>�?r  tr  bX   residr  h#h$K �r  h&�r  Rr  (KK	�r	  h
�CH�-ɑr�? ��P���?@ �Tu�?�m�;t����Ϸ��}?P
�$g�?0]�]Χ��@���Jq�8�jTM�?r
  tr  bu}r  h�}r  sbh,]r  h�KX   df_modelr  KX   paramsr  h#h$K �r  h&�r  Rr  (KK�r  h
�CD6�[|?{�+efm�?r  tr  bX   normalized_cov_paramsr  h#h$K �r  h&�r  Rr  (KKK�r  h
�C G�\��}�?�P1t����P1t���(9CW��0@r  tr  bh�Kh"h(ububX   sigmar  hh
C����,�?r  �r   Rr!  X   mur"  G?�v�[>�&uX   Mkt-RFr#  }r$  (hhh
C �9MB��?r%  �r&  Rr'  hh)�r(  }r)  (hhhh)�r*  }r+  (hK
hK	hKhK hh)�r,  }r-  (h"h#h$K �r.  h&�r/  Rr0  (KK	K�r1  h
�CHr��]K��?j�8�r�?~Y��5�?h�}�Ʊ�?�?\lY�?}f�%���?,���?_��;��?������?r2  tr3  bhK	hKhK h,]r4  (h.h/h0h1h2h3eh4h#h$K �r5  h&�r6  Rr7  (KK	K�r8  h
�C�      �?�� �`��?      �?r��]K��?      �?j�8�r�?      �?~Y��5�?      �?h�}�Ʊ�?      �?�?\lY�?      �?}f�%���?      �?,���?      �?_��;��?r9  tr:  bh;h<)�r;  }r<  (h?h@�  E�U7fNN�r=  Rr>  hK hCh@�  �F�K�NN�r?  Rr@  hFNhGhH)�rA  }rB  (hKhL)�rC  (]rD  hOhP}rE  (h;h#h$K �rF  h&�rG  RrH  (KK
�rI  hX�]rJ  (h\h]h^h_h`hahbhchdheetrK  bhgNu�rL  RrM  a]rN  h#h$K �rO  h&�rP  RrQ  (KK
�rR  h
�CP�� �`��?r��]K��?j�8�r�?~Y��5�?h�}�Ʊ�?�?\lY�?}f�%���?,���?_��;��?������?rS  trT  ba]rU  hOhP}rV  (h;h#h$K �rW  h&�rX  RrY  (KK
�rZ  hX�]r[  (h\h]h^h_h`hahbhchdheetr\  bhgNu�r]  Rr^  a}r_  h|}r`  (h~]ra  }rb  (h�jQ  h�h�K K
K�rc  Rrd  uah�jD  ustre  bh�h�h�h�hgh�ubh�X   AS-MARrf  h�h�)�rg  (h�h�h�jM  h�]rh  (h�X   L1.valueri  eu}rj  h�}rk  sbh.Nh�h�h�}rl  (h�Nh�h�)�rm  }rn  (h�h�)�ro  }rp  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}rq  h�Ksubh;h�h�}rr  (h�Nh�Nh;h#h$K �rs  h&�rt  Rru  (KK	�rv  hX   M8rw  K K�rx  Rry  (KhNNNJ����J����K }rz  (Cnsr{  KKKtr|  �r}  tr~  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP�� �`��?r��]K��?j�8�r�?~Y��5�?h�}�Ʊ�?�?\lY�?}f�%���?,���?_��;��?������?r�  tr�  bubh.Nh�Kh�h�h�h�hh
C���4\8?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CP�� �`��?r��]K��?j�8�r�?~Y��5�?h�}�Ʊ�?�?\lY�?}f�%���?,���?_��;��?������?r�  tr�  bh�X   cmler�  ubh4j7  h;j;  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH�����_�?�1�d[R�?�
��0�?�PT��.�?]��5�X�?�\��@�?X��7�X�?}����"�?�h(]��?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH :���T�? ��PE� ��-�y��0��[�? ���&?@B�Ht�?@S�Yh}���}��������
Q�[��r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�C��g©�?�pz�N�?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C ��9�o@
G�"o�
G�"o�	.�Uhn@r�  tr�  bh�Kh"j0  ububj  hh
C=�Q�ꔠ?r�  �r�  Rr�  j"  G?�7����uX   MOMr�  }r�  (hhh
C      �r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CH��^NH��h�Bd����t�D"������8ÿ�YO�㪿ʬOb���5��_#;����}�ur��;o��ʴ�r�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?|\%+���      �?��^NH��      �?h�Bd����      �?t�D"����      �?��8ÿ      �?�YO�㪿      �?ʬOb���      �?5��_#;��      �?��}�ur��r�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP|\%+�����^NH��h�Bd����t�D"������8ÿ�YO�㪿ʬOb���5��_#;����}�ur��;o��ʴ�r�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r   Rr  a}r  h|}r  (h~]r  }r  (h�j�  h�h�K K
K�r  Rr  uah�j�  ustr  bh�h�h�h�hgh�ubh�X   AS-MARr	  h�h�)�r
  (h�h�h�j�  h�]r  (h�X   L1.valuer  eu}r  h�}r  sbh.Nh�h�h�}r  (h�Nh�h�)�r  }r  (h�h�)�r  }r  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r  h�Ksubh;h�h�}r  (h�Nh�Nh;h#h$K �r  h&�r  Rr  (KK	�r  hX   M8r  K K�r  Rr  (KhNNNJ����J����K }r  (Cnsr  KKKtr  �r   tr!  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr"  tr#  bhgNu�r$  Rr%  hgNu�r&  Rr'  h�Nh�h�h�}r(  (h�Nh�Nh;h#h$K �r)  h&�r*  Rr+  (KK
�r,  hX   M8r-  K K�r.  Rr/  (KhNNNJ����J����K }r0  (Cnsr1  KKKtr2  �r3  tr4  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr5  tr6  bhgNu�r7  Rr8  h/h#h$K �r9  h&�r:  Rr;  (KK
�r<  h
�CP|\%+�����^NH��h�Bd����t�D"������8ÿ�YO�㪿ʬOb���5��_#;����}�ur��;o��ʴ�r=  tr>  bubh.Nh�Kh�h�h�h�hh
C���
�?C?r?  �r@  RrA  h�]rB  h�Kh/h#h$K �rC  h&�rD  RrE  (KK
K�rF  h
�CP|\%+�����^NH��h�Bd����t�D"������8ÿ�YO�㪿ʬOb���5��_#;����}�ur��;o��ʴ�rG  trH  bh�X   cmlerI  ubh4j�  h;j�  h�K h�h�)�rJ  (h�h#h$K �rK  h&�rL  RrM  (KK	�rN  h
�CH��PY�2��h�x�Q����������}t�ք�����檿�ȯ��v���!��d��.�L�ZJ����Y�3��rO  trP  bj  h#h$K �rQ  h&�rR  RrS  (KK	�rT  h
�CH�˴O�~?��]]A\�?���Y,Y�?*%i�7��� �~	ut�>(� ���?@ūԕ�j��8���r�`2�w��b�rU  trV  bu}rW  h�}rX  sbh,]rY  h�Kj  Kj  h#h$K �rZ  h&�r[  Rr\  (KK�r]  h
�CU�l�d���#ڿr^  tr_  bj  h#h$K �r`  h&�ra  Rrb  (KKK�rc  h
�C �0��|��?a=GR�'@a=GR�'@�+n��b@rd  tre  bh�Kh"j�  ububj  hh
C      ��rf  �rg  Rrh  j"  G���@���uX   HMLri  }rj  (hhh
CC��}���?rk  �rl  Rrm  hh)�rn  }ro  (hhhh)�rp  }rq  (hK
hK	hKhK hh)�rr  }rs  (h"h#h$K �rt  h&�ru  Rrv  (KK	K�rw  h
�CH8G%���?40�i�A�? �Dg�?p��?��m��?$�����?�.9씞�?�Z�U��?���.[�?rx  try  bhK	hKhK h,]rz  (h.h/h0h1h2h3eh4h#h$K �r{  h&�r|  Rr}  (KK	K�r~  h
�C�      �?$4š1��?      �?8G%���?      �?40�i�A�?      �? �Dg�?      �?p��?      �?��m��?      �?$�����?      �?�.9씞�?      �?�Z�U��?r  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP$4š1��?8G%���?40�i�A�? �Dg�?p��?��m��?$�����?�.9씞�?�Z�U��?���.[�?r�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�j�  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j�  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP$4š1��?8G%���?40�i�A�? �Dg�?p��?��m��?$�����?�.9씞�?�Z�U��?���.[�?r�  tr�  bubh.Nh�Kh�h�h�h�hh
CH`(�wj?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CP$4š1��?8G%���?40�i�A�? �Dg�?p��?��m��?$�����?�.9씞�?�Z�U��?���.[�?r�  tr�  bh�X   cmler�  ubh4j}  h;j�  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH��p�Ky�?\9$�]/�?��
į?�ΰ�ղ�?��~4up�?eIM,(�?'�.��I�?'�5��?��Bi��?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CHbї}PC��B�=�|����������4�ZYAT�?�A���? dF�m�r?�_�����������@*���+j?r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r   h
�C�� �P�?�]�p-�?r  tr  bj  h#h$K �r  h&�r  Rr  (KKK�r  h
�C �����?�IzW����IzW���s�5Q�'*@r  tr  bh�Kh"jv  ububj  hh
C���Ll�?r	  �r
  Rr  j"  G?���˛��uuX   BusEqr  }r  (j�  }r  (hhh
C~"��l�?r  �r  Rr  hh)�r  }r  (hhhh)�r  }r  (hK
hK	hKhK hh)�r  }r  (h"h#h$K �r  h&�r  Rr  (KK	K�r  h
�CH���������h/�?�T1(�?"�_��?�:��R�?�}M�C��H�sjÿ�]�w���p阪���r  tr  bhK	hKhK h,]r  (h.h/h0h1h2h3eh4h#h$K �r  h&�r   Rr!  (KK	K�r"  h
�C�      �?()d�t��      �?�����      �?����h/�?      �?�T1(�?      �?"�_��?      �?�:��R�?      �?�}M�C��      �?H�sjÿ      �?�]�w���r#  tr$  bh;h<)�r%  }r&  (h?h@�  E�U7fNN�r'  Rr(  hK hCh@�  �F�K�NN�r)  Rr*  hFNhGhH)�r+  }r,  (hKhL)�r-  (]r.  hOhP}r/  (h;h#h$K �r0  h&�r1  Rr2  (KK
�r3  hX�]r4  (h\h]h^h_h`hahbhchdheetr5  bhgNu�r6  Rr7  a]r8  h#h$K �r9  h&�r:  Rr;  (KK
�r<  h
�CP()d�t�����������h/�?�T1(�?"�_��?�:��R�?�}M�C��H�sjÿ�]�w���p阪���r=  tr>  ba]r?  hOhP}r@  (h;h#h$K �rA  h&�rB  RrC  (KK
�rD  hX�]rE  (h\h]h^h_h`hahbhchdheetrF  bhgNu�rG  RrH  a}rI  h|}rJ  (h~]rK  }rL  (h�j;  h�h�K K
K�rM  RrN  uah�j.  ustrO  bh�h�h�h�hgh�ubh�X   AS-MARrP  h�h�)�rQ  (h�h�h�j7  h�]rR  (h�X   L1.valuerS  eu}rT  h�}rU  sbh.Nh�h�h�}rV  (h�Nh�h�)�rW  }rX  (h�h�)�rY  }rZ  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r[  h�Ksubh;h�h�}r\  (h�Nh�Nh;h#h$K �r]  h&�r^  Rr_  (KK	�r`  hX   M8ra  K K�rb  Rrc  (KhNNNJ����J����K }rd  (Cnsre  KKKtrf  �rg  trh  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fri  trj  bhgNu�rk  Rrl  hgNu�rm  Rrn  h�Nh�h�h�}ro  (h�Nh�Nh;h#h$K �rp  h&�rq  Rrr  (KK
�rs  hX   M8rt  K K�ru  Rrv  (KhNNNJ����J����K }rw  (Cnsrx  KKKtry  �rz  tr{  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr|  tr}  bhgNu�r~  Rr  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP()d�t�����������h/�?�T1(�?"�_��?�:��R�?�}M�C��H�sjÿ�]�w���p阪���r�  tr�  bubh.Nh�Kh�h�h�h�hh
C�J"l�6r?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CP()d�t�����������h/�?�T1(�?"�_��?�:��R�?�}M�C��H�sjÿ�]�w���p阪���r�  tr�  bh�X   cmler�  ubh4j!  h;j%  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CHboSCD�����C�R��Sr�H?R��t�?8����?q����?b�۱�ԥ���=���o6��m��r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH��>(�y?*[���?�"ߚ�?̢�!�?����մ��h�}���{�Ͻ黿�`+m��e? 9O,;9c�r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�C����) ��XN�=��?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C x1"��?��)�T�?��)�T�?�;��')@r�  tr�  bh�Kh"j  ububj  hh
Cg������?r�  �r�  Rr�  j"  G��H�"�j�uX   CMAr�  }r�  (hhh
C��Q�*��?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CH��d������*�9�:�����Z�>-Š�)��:�￲�Rlǔ�P�	Aڿ�t�m�ٿ��R�|�ֿr�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?��Z\�3�      �?��d���      �?���*�      �?9�:�����      �?Z�>-Š�      �?)��:��      �?��Rlǔ�      �?��P�	Aڿ      �?�t�m�ٿr�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP��Z\�3���d������*�9�:�����Z�>-Š�)��:�￲�Rlǔ�P�	Aڿ�t�m�ٿ��R�|�ֿr�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�j�  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j�  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r   h&�r  Rr  (KK	�r  hX   M8r  K K�r  Rr  (KhNNNJ����J����K }r  (Cnsr  KKKtr	  �r
  tr  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr  tr  bhgNu�r  Rr  hgNu�r  Rr  h�Nh�h�h�}r  (h�Nh�Nh;h#h$K �r  h&�r  Rr  (KK
�r  hX   M8r  K K�r  Rr  (KhNNNJ����J����K }r  (Cnsr  KKKtr  �r  tr  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr  tr   bhgNu�r!  Rr"  h/h#h$K �r#  h&�r$  Rr%  (KK
�r&  h
�CP��Z\�3���d������*�9�:�����Z�>-Š�)��:�￲�Rlǔ�P�	Aڿ�t�m�ٿ��R�|�ֿr'  tr(  bubh.Nh�Kh�h�h�h�hh
C�챡�a�?r)  �r*  Rr+  h�]r,  h�Kh/h#h$K �r-  h&�r.  Rr/  (KK
K�r0  h
�CP��Z\�3���d������*�9�:�����Z�>-Š�)��:�￲�Rlǔ�P�	Aڿ�t�m�ٿ��R�|�ֿr1  tr2  bh�X   cmler3  ubh4j�  h;j�  h�K h�h�)�r4  (h�h#h$K �r5  h&�r6  Rr7  (KK	�r8  h
�CH�
�ǆ����Әi��hhl�n]������_"������������I-�Bz��'�ٿJ�:�l�ؿr9  tr:  bj  h#h$K �r;  h&�r<  Rr=  (KK	�r>  h
�CH`;�V,��?���*7׿�&s�b̿�*��k{�?��LKD�� �H+)p��v�B����?@� �t�?�@�ס?r?  tr@  bu}rA  h�}rB  sbh,]rC  h�Kj  Kj  h#h$K �rD  h&�rE  RrF  (KK�rG  h
�C8�c�%m�����c2��?rH  trI  bj  h#h$K �rJ  h&�rK  RrL  (KKK�rM  h
�C ô��k��?i	�Nt}�?i	�Nt}�?Dw)pJ`�?rN  trO  bh�Kh"j�  ububj  hh
C}�2�ј�?rP  �rQ  RrR  j"  G��u����uji  }rS  (hhh
CM�N\��?rT  �rU  RrV  hh)�rW  }rX  (hhhh)�rY  }rZ  (hK
hK	hKhK hh)�r[  }r\  (h"h#h$K �r]  h&�r^  Rr_  (KK	K�r`  h
�CH�����z?�j�Q%��?��<I�}������P̿�
��]ʿv<;� c˿���$w ߿�"��ݿ�=���ݿra  trb  bhK	hKhK h,]rc  (h.h/h0h1h2h3eh4h#h$K �rd  h&�re  Rrf  (KK	K�rg  h
�C�      �?���3�c�?      �?�����z?      �?�j�Q%��?      �?��<I�}�      �?�����P̿      �?�
��]ʿ      �?v<;� c˿      �?���$w ߿      �?�"��ݿrh  tri  bh;h<)�rj  }rk  (h?h@�  E�U7fNN�rl  Rrm  hK hCh@�  �F�K�NN�rn  Rro  hFNhGhH)�rp  }rq  (hKhL)�rr  (]rs  hOhP}rt  (h;h#h$K �ru  h&�rv  Rrw  (KK
�rx  hX�]ry  (h\h]h^h_h`hahbhchdheetrz  bhgNu�r{  Rr|  a]r}  h#h$K �r~  h&�r  Rr�  (KK
�r�  h
�CP���3�c�?�����z?�j�Q%��?��<I�}������P̿�
��]ʿv<;� c˿���$w ߿�"��ݿ�=���ݿr�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�js  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j|  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP���3�c�?�����z?�j�Q%��?��<I�}������P̿�
��]ʿv<;� c˿���$w ߿�"��ݿ�=���ݿr�  tr�  bubh.Nh�Kh�h�h�h�hh
CX8��I�?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CP���3�c�?�����z?�j�Q%��?��<I�}������P̿�
��]ʿv<;� c˿���$w ߿�"��ݿ�=���ݿr�  tr�  bh�X   cmler�  ubh4jf  h;jj  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH ��
�-�?zQ2Ua����5�A�ݑ�2�ɩ�������.l�ѿ�n���пx���|Hѿ�^��߿��;�e޿r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CHhQA�}��:ޓS�,�?t%�ފՄ?��'���H)����?��y�[�?�ޗ��o˿�����?�))�e�?r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�C�B�9�����&�\�?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C 	����=�?(`E�pZ�?(`E�pZ�?���9l@r�  tr�  bh�Kh"j_  ububj  hh
C�,lg��?r�  �r�  Rr�  j"  G��	G]��yuj#  }r�  (hhh
C�'��?^�?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r   Rr  (KK	K�r  h
�CH1�ٽ��?!gYj�O�?ځ�Ap�?���t��?n*�AE�?�T���?�� ��?R��p�?�SdQ-W�?r  tr  bhK	hKhK h,]r  (h.h/h0h1h2h3eh4h#h$K �r  h&�r  Rr  (KK	K�r	  h
�C�      �?�T���?      �?1�ٽ��?      �?!gYj�O�?      �?ځ�Ap�?      �?���t��?      �?n*�AE�?      �?�T���?      �?�� ��?      �?R��p�?r
  tr  bh;h<)�r  }r  (h?h@�  E�U7fNN�r  Rr  hK hCh@�  �F�K�NN�r  Rr  hFNhGhH)�r  }r  (hKhL)�r  (]r  hOhP}r  (h;h#h$K �r  h&�r  Rr  (KK
�r  hX�]r  (h\h]h^h_h`hahbhchdheetr  bhgNu�r  Rr  a]r  h#h$K �r   h&�r!  Rr"  (KK
�r#  h
�CP�T���?1�ٽ��?!gYj�O�?ځ�Ap�?���t��?n*�AE�?�T���?�� ��?R��p�?�SdQ-W�?r$  tr%  ba]r&  hOhP}r'  (h;h#h$K �r(  h&�r)  Rr*  (KK
�r+  hX�]r,  (h\h]h^h_h`hahbhchdheetr-  bhgNu�r.  Rr/  a}r0  h|}r1  (h~]r2  }r3  (h�j"  h�h�K K
K�r4  Rr5  uah�j  ustr6  bh�h�h�h�hgh�ubh�X   AS-MARr7  h�h�)�r8  (h�h�h�j  h�]r9  (h�X   L1.valuer:  eu}r;  h�}r<  sbh.Nh�h�h�}r=  (h�Nh�h�)�r>  }r?  (h�h�)�r@  }rA  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}rB  h�Ksubh;h�h�}rC  (h�Nh�Nh;h#h$K �rD  h&�rE  RrF  (KK	�rG  hX   M8rH  K K�rI  RrJ  (KhNNNJ����J����K }rK  (CnsrL  KKKtrM  �rN  trO  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7frP  trQ  bhgNu�rR  RrS  hgNu�rT  RrU  h�Nh�h�h�}rV  (h�Nh�Nh;h#h$K �rW  h&�rX  RrY  (KK
�rZ  hX   M8r[  K K�r\  Rr]  (KhNNNJ����J����K }r^  (Cnsr_  KKKtr`  �ra  trb  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7frc  trd  bhgNu�re  Rrf  h/h#h$K �rg  h&�rh  Rri  (KK
�rj  h
�CP�T���?1�ٽ��?!gYj�O�?ځ�Ap�?���t��?n*�AE�?�T���?�� ��?R��p�?�SdQ-W�?rk  trl  bubh.Nh�Kh�h�h�h�hh
CE� ��Gk?rm  �rn  Rro  h�]rp  h�Kh/h#h$K �rq  h&�rr  Rrs  (KK
K�rt  h
�CP�T���?1�ٽ��?!gYj�O�?ځ�Ap�?���t��?n*�AE�?�T���?�� ��?R��p�?�SdQ-W�?ru  trv  bh�X   cmlerw  ubh4j  h;j  h�K h�h�)�rx  (h�h#h$K �ry  h&�rz  Rr{  (KK	�r|  h
�CH�&�"���?���,�?X/7����?F��`��?=��6��?.� � ��?���5G�?,<wlhG�?%���F�?r}  tr~  bj  h#h$K �r  h&�r�  Rr�  (KK	�r�  h
�CHpX�Eʨ?`�t&������V��-����R︎����d���? bc`R@�?���Q|�? �׷�{�� m.�r>p?r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�C|\�r��?��؝GO�?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C 	�(/��.@(��>�(-�(��>�(-��l�h�+@r�  tr�  bh�Kh"j  ububj  hh
C�J
�_�?r�  �r�  Rr�  j"  G?�}���MbuX   RMWr�  }r�  (hhh
C`�Ѕs��?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CH�R��#YĿ��<�G˿�N�ӿv�1��ֿ�WDڐ<ӿz���.տbnT'QؿC�=�<ڿ���gCUۿr�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?�qcu�ſ      �?�R��#YĿ      �?��<�G˿      �?�N�ӿ      �?v�1��ֿ      �?�WDڐ<ӿ      �?z���.տ      �?bnT'Qؿ      �?C�=�<ڿr�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP�qcu�ſ�R��#YĿ��<�G˿�N�ӿv�1��ֿ�WDڐ<ӿz���.տbnT'QؿC�=�<ڿ���gCUۿr�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�j�  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j�  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr   (KhNNNJ����J����K }r  (Cnsr  KKKtr  �r  tr  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr  tr  bhgNu�r  Rr	  h/h#h$K �r
  h&�r  Rr  (KK
�r  h
�CP�qcu�ſ�R��#YĿ��<�G˿�N�ӿv�1��ֿ�WDڐ<ӿz���.տbnT'QؿC�=�<ڿ���gCUۿr  tr  bubh.Nh�Kh�h�h�h�hh
C�/�ڂHT?r  �r  Rr  h�]r  h�Kh/h#h$K �r  h&�r  Rr  (KK
K�r  h
�CP�qcu�ſ�R��#YĿ��<�G˿�N�ӿv�1��ֿ�WDڐ<ӿz���.տbnT'QؿC�=�<ڿ���gCUۿr  tr  bh�X   cmler  ubh4j�  h;j�  h�K h�h�)�r  (h�h#h$K �r  h&�r  Rr  (KK	�r  h
�CH[���a5˿��o2�ɿ�4d�
п���7տ���J�o׿��yQ��Կ���\��ֿ���U+zٿ�G�!s,ۿr   tr!  bj  h#h$K �r"  h&�r#  Rr$  (KK	�r%  h
�CHh�A[�p�?��R�B,��p���l���@����=���
��ḭ? �ϟ�h�p��x�`q��M�� ��+#hd�r&  tr'  bu}r(  h�}r)  sbh,]r*  h�Kj  Kj  h#h$K �r+  h&�r,  Rr-  (KK�r.  h
�C?*�(篿���hG�?r/  tr0  bj  h#h$K �r1  h&�r2  Rr3  (KKK�r4  h
�C ���Y��?�#�tp�@�#�tp�@L��h�.@r5  tr6  bh�Kh"j�  ububj  hh
C�-�ĕ#�?r7  �r8  Rr9  j"  G��%���ZNuh}r:  (hhh
C�}V �?r;  �r<  Rr=  hh)�r>  }r?  (hhhh)�r@  }rA  (hK
hK	hKhK hh)�rB  }rC  (h"h#h$K �rD  h&�rE  RrF  (KK	K�rG  h
�CH��H>���?�<[�I&�?�e`tP�?(B�K��?-��m]�?@l��v�?.�e�j��?P�hhgP�?�fG}ݴ?rH  trI  bhK	hKhK h,]rJ  (h.h/h0h1h2h3eh4h#h$K �rK  h&�rL  RrM  (KK	K�rN  h
�C�      �?S���F�?      �?��H>���?      �?�<[�I&�?      �?�e`tP�?      �?(B�K��?      �?-��m]�?      �?@l��v�?      �?.�e�j��?      �?P�hhgP�?rO  trP  bh;h<)�rQ  }rR  (h?h@�  E�U7fNN�rS  RrT  hK hCh@�  �F�K�NN�rU  RrV  hFNhGhH)�rW  }rX  (hKhL)�rY  (]rZ  hOhP}r[  (h;h#h$K �r\  h&�r]  Rr^  (KK
�r_  hX�]r`  (h\h]h^h_h`hahbhchdheetra  bhgNu�rb  Rrc  a]rd  h#h$K �re  h&�rf  Rrg  (KK
�rh  h
�CPS���F�?��H>���?�<[�I&�?�e`tP�?(B�K��?-��m]�?@l��v�?.�e�j��?P�hhgP�?�fG}ݴ?ri  trj  ba]rk  hOhP}rl  (h;h#h$K �rm  h&�rn  Rro  (KK
�rp  hX�]rq  (h\h]h^h_h`hahbhchdheetrr  bhgNu�rs  Rrt  a}ru  h|}rv  (h~]rw  }rx  (h�jg  h�h�K K
K�ry  Rrz  uah�jZ  ustr{  bh�h�h�h�hgh�ubh�X   AS-MARr|  h�h�)�r}  (h�h�h�jc  h�]r~  (h�X   L1.valuer  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CPS���F�?��H>���?�<[�I&�?�e`tP�?(B�K��?-��m]�?@l��v�?.�e�j��?P�hhgP�?�fG}ݴ?r�  tr�  bubh.Nh�Kh�h�h�h�hh
C�c[�Lte?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CPS���F�?��H>���?�<[�I&�?�e`tP�?(B�K��?-��m]�?@l��v�?.�e�j��?P�hhgP�?�fG}ݴ?r�  tr�  bh�X   cmler�  ubh4jM  h;jQ  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CHn�rf̛�?^ ����?�f�Y�Ⱦ?F���f�?t���a�?���j�?�?������?2R�R\$�?�!����?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH�{X��?@��������)����
���d%�?pT�0�B��?�d?l�����P��������U[��r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�C�=C��X�?3[?X���?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C �jx�k�?zf���[��zf���[����'@r�  tr�  bh�Kh"jF  ububj  hh
C�M��ٲ?r�  �r�  Rr�  j"  G?���U)��uuX   Shopsr�  }r�  (ji  }r�  (hhh
C`�,�A�?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CH8��^�ʿzjܱ����J��?¿Qz#�ɿp���۟����O������HwD��?(�VR��?��`�
?�?r�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?Lz�j�oѿ      �?8��^�ʿ      �?zjܱ����      �?J��?¿      �?Qz#�ɿ      �?p���۟��      �?��O�����      �?�HwD��?      �?(�VR��?r�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r   h&�r  Rr  (KK
�r  hX�]r  (h\h]h^h_h`hahbhchdheetr  bhgNu�r  Rr  a]r  h#h$K �r	  h&�r
  Rr  (KK
�r  h
�CPLz�j�oѿ8��^�ʿzjܱ����J��?¿Qz#�ɿp���۟����O������HwD��?(�VR��?��`�
?�?r  tr  ba]r  hOhP}r  (h;h#h$K �r  h&�r  Rr  (KK
�r  hX�]r  (h\h]h^h_h`hahbhchdheetr  bhgNu�r  Rr  a}r  h|}r  (h~]r  }r  (h�j  h�h�K K
K�r  Rr  uah�j�  ustr  bh�h�h�h�hgh�ubh�X   AS-MARr   h�h�)�r!  (h�h�h�j  h�]r"  (h�X   L1.valuer#  eu}r$  h�}r%  sbh.Nh�h�h�}r&  (h�Nh�h�)�r'  }r(  (h�h�)�r)  }r*  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r+  h�Ksubh;h�h�}r,  (h�Nh�Nh;h#h$K �r-  h&�r.  Rr/  (KK	�r0  hX   M8r1  K K�r2  Rr3  (KhNNNJ����J����K }r4  (Cnsr5  KKKtr6  �r7  tr8  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr9  tr:  bhgNu�r;  Rr<  hgNu�r=  Rr>  h�Nh�h�h�}r?  (h�Nh�Nh;h#h$K �r@  h&�rA  RrB  (KK
�rC  hX   M8rD  K K�rE  RrF  (KhNNNJ����J����K }rG  (CnsrH  KKKtrI  �rJ  trK  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7frL  trM  bhgNu�rN  RrO  h/h#h$K �rP  h&�rQ  RrR  (KK
�rS  h
�CPLz�j�oѿ8��^�ʿzjܱ����J��?¿Qz#�ɿp���۟����O������HwD��?(�VR��?��`�
?�?rT  trU  bubh.Nh�Kh�h�h�h�hh
C�Z %W`?rV  �rW  RrX  h�]rY  h�Kh/h#h$K �rZ  h&�r[  Rr\  (KK
K�r]  h
�CPLz�j�oѿ8��^�ʿzjܱ����J��?¿Qz#�ɿp���۟����O������HwD��?(�VR��?��`�
?�?r^  tr_  bh�X   cmler`  ubh4j�  h;j�  h�K h�h�)�ra  (h�h#h$K �rb  h&�rc  Rrd  (KK	�re  h
�CH4��ۥʿDH�*�'Ŀ��5��"���]���z� V�eÿ}�R ����bu� b?�֚�/1�?_N��٠?rf  trg  bj  h#h$K �rh  h&�ri  Rrj  (KK	�rk  h
�CH �,�P�P�f���?�VeP�������	����W�?��)�?mq�v,C�?��(ye?�l�`t�}�rl  trm  bu}rn  h�}ro  sbh,]rp  h�Kj  Kj  h#h$K �rq  h&�rr  Rrs  (KK�rt  h
�C��]��?x�$�<��?ru  trv  bj  h#h$K �rw  h&�rx  Rry  (KKK�rz  h
�C ��:7U�?�\TC��?�\TC��?��o��%@r{  tr|  bh�Kh"j�  ububj  hh
C5���Ս�?r}  �r~  Rr  j"  G?���1��uj#  }r�  (hhh
C�)VR��?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CHG��S�?>?bt�a�?[uzzt!�?�\�t4�?!�8x�$�?0*�ʎ��?�����?���@�?a���?r�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?���;���?      �?G��S�?      �?>?bt�a�?      �?[uzzt!�?      �?�\�t4�?      �?!�8x�$�?      �?0*�ʎ��?      �?�����?      �?���@�?r�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP���;���?G��S�?>?bt�a�?[uzzt!�?�\�t4�?!�8x�$�?0*�ʎ��?�����?���@�?a���?r�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�j�  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j�  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP���;���?G��S�?>?bt�a�?[uzzt!�?�\�t4�?!�8x�$�?0*�ʎ��?�����?���@�?a���?r�  tr�  bubh.Nh�Kh�h�h�h�hh
C|��m�6?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CP���;���?G��S�?>?bt�a�?[uzzt!�?�\�t4�?!�8x�$�?0*�ʎ��?�����?���@�?a���?r   tr  bh�X   cmler  ubh4j�  h;j�  h�K h�h�)�r  (h�h#h$K �r  h&�r  Rr  (KK	�r  h
�CHzFVG��?$y?��h�?���s�?���)C�?��̀Q�?��O ~E�?�8�m���?U��A��?"��T.�?r  tr	  bj  h#h$K �r
  h&�r  Rr  (KK	�r  h
�CH M�L�� ��t�\��ɦ%��� h��hm� z+Ъz��@L"�*�? ZwM��?@gc�w��? ���-?r  tr  bu}r  h�}r  sbh,]r  h�Kj  Kj  h#h$K �r  h&�r  Rr  (KK�r  h
�Ccy��W�?�)&��'�?r  tr  bj  h#h$K �r  h&�r  Rr  (KKK�r  h
�C _ϱ��h@\���g�\���g��g@r  tr  bh�Kh"j�  ububj  hh
CD��˻��?r  �r   Rr!  j"  G?��y-�uj�  }r"  (hhh
C�tp7�?r#  �r$  Rr%  hh)�r&  }r'  (hhhh)�r(  }r)  (hK
hK	hKhK hh)�r*  }r+  (h"h#h$K �r,  h&�r-  Rr.  (KK	K�r/  h
�CH��Nռ�Ͽ�ĪŃ˿�]Ư������̡���bRY�eڹ��ͨi�����<���p����L��[N����r0  tr1  bhK	hKhK h,]r2  (h.h/h0h1h2h3eh4h#h$K �r3  h&�r4  Rr5  (KK	K�r6  h
�C�      �?�ϰ��˿      �?��Nռ�Ͽ      �?�ĪŃ˿      �?�]Ư����      �?��̡���      �?bRY�eڹ�      �?�ͨi����      �?�<���p��      �?��L��r7  tr8  bh;h<)�r9  }r:  (h?h@�  E�U7fNN�r;  Rr<  hK hCh@�  �F�K�NN�r=  Rr>  hFNhGhH)�r?  }r@  (hKhL)�rA  (]rB  hOhP}rC  (h;h#h$K �rD  h&�rE  RrF  (KK
�rG  hX�]rH  (h\h]h^h_h`hahbhchdheetrI  bhgNu�rJ  RrK  a]rL  h#h$K �rM  h&�rN  RrO  (KK
�rP  h
�CP�ϰ��˿��Nռ�Ͽ�ĪŃ˿�]Ư������̡���bRY�eڹ��ͨi�����<���p����L��[N����rQ  trR  ba]rS  hOhP}rT  (h;h#h$K �rU  h&�rV  RrW  (KK
�rX  hX�]rY  (h\h]h^h_h`hahbhchdheetrZ  bhgNu�r[  Rr\  a}r]  h|}r^  (h~]r_  }r`  (h�jO  h�h�K K
K�ra  Rrb  uah�jB  ustrc  bh�h�h�h�hgh�ubh�X   AS-MARrd  h�h�)�re  (h�h�h�jK  h�]rf  (h�X   L1.valuerg  eu}rh  h�}ri  sbh.Nh�h�h�}rj  (h�Nh�h�)�rk  }rl  (h�h�)�rm  }rn  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}ro  h�Ksubh;h�h�}rp  (h�Nh�Nh;h#h$K �rq  h&�rr  Rrs  (KK	�rt  hX   M8ru  K K�rv  Rrw  (KhNNNJ����J����K }rx  (Cnsry  KKKtrz  �r{  tr|  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr}  tr~  bhgNu�r  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP�ϰ��˿��Nռ�Ͽ�ĪŃ˿�]Ư������̡���bRY�eڹ��ͨi�����<���p����L��[N����r�  tr�  bubh.Nh�Kh�h�h�h�hh
Cd�FOP?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CP�ϰ��˿��Nռ�Ͽ�ĪŃ˿�]Ư������̡���bRY�eڹ��ͨi�����<���p����L��[N����r�  tr�  bh�X   cmler�  ubh4j5  h;j9  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH�����ǿ��+˿۪8���ǿ�B�%�����\(t*��t
�H����R�9E��6V��K����l:.y��r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH4�w����/��&n�05�	��?L0�ף?@V�ƿ�� Ͱ)�IR���D2�[�� ���z? `���2�r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�Ctҹc3Ǝ��B�L�?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C gM��X!�?r��Lqb@r��Lqb@�:�+��<@r�  tr�  bh�Kh"j.  ububj  hh
C���>�?r�  �r�  Rr�  j"  G��]YM
��uj�  }r�  (hhh
Cg�����?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CH"5ֿ���?�<K9�X�?���*%�?��m���?���:��?4��듬�?f��}��?T��O�?r(�3���?r�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?T���k��?      �?"5ֿ���?      �?�<K9�X�?      �?���*%�?      �?��m���?      �?���:��?      �?4��듬�?      �?f��}��?      �?T��O�?r�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CPT���k��?"5ֿ���?�<K9�X�?���*%�?��m���?���:��?4��듬�?f��}��?T��O�?r(�3���?r�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r 	  (h~]r	  }r	  (h�j�  h�h�K K
K�r	  Rr	  uah�j�  ustr	  bh�h�h�h�hgh�ubh�X   AS-MARr	  h�h�)�r	  (h�h�h�j�  h�]r	  (h�X   L1.valuer		  eu}r
	  h�}r	  sbh.Nh�h�h�}r	  (h�Nh�h�)�r	  }r	  (h�h�)�r	  }r	  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r	  h�Ksubh;h�h�}r	  (h�Nh�Nh;h#h$K �r	  h&�r	  Rr	  (KK	�r	  hX   M8r	  K K�r	  Rr	  (KhNNNJ����J����K }r	  (Cnsr	  KKKtr	  �r	  tr	  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr	  tr 	  bhgNu�r!	  Rr"	  hgNu�r#	  Rr$	  h�Nh�h�h�}r%	  (h�Nh�Nh;h#h$K �r&	  h&�r'	  Rr(	  (KK
�r)	  hX   M8r*	  K K�r+	  Rr,	  (KhNNNJ����J����K }r-	  (Cnsr.	  KKKtr/	  �r0	  tr1	  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr2	  tr3	  bhgNu�r4	  Rr5	  h/h#h$K �r6	  h&�r7	  Rr8	  (KK
�r9	  h
�CPT���k��?"5ֿ���?�<K9�X�?���*%�?��m���?���:��?4��듬�?f��}��?T��O�?r(�3���?r:	  tr;	  bubh.Nh�Kh�h�h�h�hh
Ct⺏r^[?r<	  �r=	  Rr>	  h�]r?	  h�Kh/h#h$K �r@	  h&�rA	  RrB	  (KK
K�rC	  h
�CPT���k��?"5ֿ���?�<K9�X�?���*%�?��m���?���:��?4��듬�?f��}��?T��O�?r(�3���?rD	  trE	  bh�X   cmlerF	  ubh4j�  h;j�  h�K h�h�)�rG	  (h�h#h$K �rH	  h&�rI	  RrJ	  (KK	�rK	  h
�CH����z�?��N����?Q��Ǵ�?�?�
5�?/�m�[�?e����?K�z��A�?��m5��?p��_�?rL	  trM	  bj  h#h$K �rN	  h&�rO	  RrP	  (KK	�rQ	  h
�CH�Q��\�� �&��Ƌ?0\w�9����|��^�?��p�P�?@L�vL������>�6r���M!�K�?�a𖑿rR	  trS	  bu}rT	  h�}rU	  sbh,]rV	  h�Kj  Kj  h#h$K �rW	  h&�rX	  RrY	  (KK�rZ	  h
�C5�>9�?�xd���?r[	  tr\	  bj  h#h$K �r]	  h&�r^	  Rr_	  (KKK�r`	  h
�C г#�!0@	�W�y�<�	�W�y�<����R��I@ra	  trb	  bh�Kh"j�  ububj  hh
C.��(�?rc	  �rd	  Rre	  j"  G?��3�?�uh}rf	  (hhh
C(w41o��?rg	  �rh	  Rri	  hh)�rj	  }rk	  (hhhh)�rl	  }rm	  (hK
hK	hKhK hh)�rn	  }ro	  (h"h#h$K �rp	  h&�rq	  Rrr	  (KK	K�rs	  h
�CH����i�?�PE"%�?6x����?N��]�?d����?���9�?|�)"�?��%���?�:)��?rt	  tru	  bhK	hKhK h,]rv	  (h.h/h0h1h2h3eh4h#h$K �rw	  h&�rx	  Rry	  (KK	K�rz	  h
�C�      �?L��g.�?      �?����i�?      �?�PE"%�?      �?6x����?      �?N��]�?      �?d����?      �?���9�?      �?|�)"�?      �?��%���?r{	  tr|	  bh;h<)�r}	  }r~	  (h?h@�  E�U7fNN�r	  Rr�	  hK hCh@�  �F�K�NN�r�	  Rr�	  hFNhGhH)�r�	  }r�	  (hKhL)�r�	  (]r�	  hOhP}r�	  (h;h#h$K �r�	  h&�r�	  Rr�	  (KK
�r�	  hX�]r�	  (h\h]h^h_h`hahbhchdheetr�	  bhgNu�r�	  Rr�	  a]r�	  h#h$K �r�	  h&�r�	  Rr�	  (KK
�r�	  h
�CPL��g.�?����i�?�PE"%�?6x����?N��]�?d����?���9�?|�)"�?��%���?�:)��?r�	  tr�	  ba]r�	  hOhP}r�	  (h;h#h$K �r�	  h&�r�	  Rr�	  (KK
�r�	  hX�]r�	  (h\h]h^h_h`hahbhchdheetr�	  bhgNu�r�	  Rr�	  a}r�	  h|}r�	  (h~]r�	  }r�	  (h�j�	  h�h�K K
K�r�	  Rr�	  uah�j�	  ustr�	  bh�h�h�h�hgh�ubh�X   AS-MARr�	  h�h�)�r�	  (h�h�h�j�	  h�]r�	  (h�X   L1.valuer�	  eu}r�	  h�}r�	  sbh.Nh�h�h�}r�	  (h�Nh�h�)�r�	  }r�	  (h�h�)�r�	  }r�	  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�	  h�Ksubh;h�h�}r�	  (h�Nh�Nh;h#h$K �r�	  h&�r�	  Rr�	  (KK	�r�	  hX   M8r�	  K K�r�	  Rr�	  (KhNNNJ����J����K }r�	  (Cnsr�	  KKKtr�	  �r�	  tr�	  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�	  tr�	  bhgNu�r�	  Rr�	  hgNu�r�	  Rr�	  h�Nh�h�h�}r�	  (h�Nh�Nh;h#h$K �r�	  h&�r�	  Rr�	  (KK
�r�	  hX   M8r�	  K K�r�	  Rr�	  (KhNNNJ����J����K }r�	  (Cnsr�	  KKKtr�	  �r�	  tr�	  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�	  tr�	  bhgNu�r�	  Rr�	  h/h#h$K �r�	  h&�r�	  Rr�	  (KK
�r�	  h
�CPL��g.�?����i�?�PE"%�?6x����?N��]�?d����?���9�?|�)"�?��%���?�:)��?r�	  tr�	  bubh.Nh�Kh�h�h�h�hh
C��h��S?r�	  �r�	  Rr�	  h�]r�	  h�Kh/h#h$K �r�	  h&�r�	  Rr�	  (KK
K�r�	  h
�CPL��g.�?����i�?�PE"%�?6x����?N��]�?d����?���9�?|�)"�?��%���?�:)��?r�	  tr�	  bh�X   cmler�	  ubh4jy	  h;j}	  h�K h�h�)�r�	  (h�h#h$K �r�	  h&�r�	  Rr�	  (KK	�r�	  h
�CH�������?����͂�?��y'�?+��裶�?`ѸXэ�?��Br��?������?ր��B�?��MM7�?r�	  tr�	  bj  h#h$K �r�	  h&�r�	  Rr�	  (KK	�r�	  h
�CHh�0M�`�?@ik�2�z��_I 2~���Nf�2��� `Faڑ? �p��)�� znHX.N? �L5ۅ�?`{
l�q�r�	  tr�	  bu}r�	  h�}r�	  sbh,]r�	  h�Kj  Kj  h#h$K �r�	  h&�r�	  Rr�	  (KK�r�	  h
�C0�k��?�W��?r�	  tr�	  bj  h#h$K �r�	  h&�r 
  Rr
  (KKK�r
  h
�C *YY\�@�Z��� ��Z��� �fD��x=@r
  tr
  bh�Kh"jr	  ububj  hh
C�"Y���?r
  �r
  Rr
  j"  G?��,�DEuuX   NoDurr
  }r	
  (j#  }r

  (hhh
C�gU�r��?r
  �r
  Rr
  hh)�r
  }r
  (hhhh)�r
  }r
  (hK
hK	hKhK hh)�r
  }r
  (h"h#h$K �r
  h&�r
  Rr
  (KK	K�r
  h
�CHj��i8E�?�PE~��?�.�@h�?O=����?�R׭ҵ�?J"�[I�?	A=��L�?�uu˻��?:��*�?r
  tr
  bhK	hKhK h,]r
  (h.h/h0h1h2h3eh4h#h$K �r
  h&�r
  Rr
  (KK	K�r
  h
�C�      �?31x�^��?      �?j��i8E�?      �?�PE~��?      �?�.�@h�?      �?O=����?      �?�R׭ҵ�?      �?J"�[I�?      �?	A=��L�?      �?�uu˻��?r
  tr 
  bh;h<)�r!
  }r"
  (h?h@�  E�U7fNN�r#
  Rr$
  hK hCh@�  �F�K�NN�r%
  Rr&
  hFNhGhH)�r'
  }r(
  (hKhL)�r)
  (]r*
  hOhP}r+
  (h;h#h$K �r,
  h&�r-
  Rr.
  (KK
�r/
  hX�]r0
  (h\h]h^h_h`hahbhchdheetr1
  bhgNu�r2
  Rr3
  a]r4
  h#h$K �r5
  h&�r6
  Rr7
  (KK
�r8
  h
�CP31x�^��?j��i8E�?�PE~��?�.�@h�?O=����?�R׭ҵ�?J"�[I�?	A=��L�?�uu˻��?:��*�?r9
  tr:
  ba]r;
  hOhP}r<
  (h;h#h$K �r=
  h&�r>
  Rr?
  (KK
�r@
  hX�]rA
  (h\h]h^h_h`hahbhchdheetrB
  bhgNu�rC
  RrD
  a}rE
  h|}rF
  (h~]rG
  }rH
  (h�j7
  h�h�K K
K�rI
  RrJ
  uah�j*
  ustrK
  bh�h�h�h�hgh�ubh�X   AS-MARrL
  h�h�)�rM
  (h�h�h�j3
  h�]rN
  (h�X   L1.valuerO
  eu}rP
  h�}rQ
  sbh.Nh�h�h�}rR
  (h�Nh�h�)�rS
  }rT
  (h�h�)�rU
  }rV
  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}rW
  h�Ksubh;h�h�}rX
  (h�Nh�Nh;h#h$K �rY
  h&�rZ
  Rr[
  (KK	�r\
  hX   M8r]
  K K�r^
  Rr_
  (KhNNNJ����J����K }r`
  (Cnsra
  KKKtrb
  �rc
  trd
  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fre
  trf
  bhgNu�rg
  Rrh
  hgNu�ri
  Rrj
  h�Nh�h�h�}rk
  (h�Nh�Nh;h#h$K �rl
  h&�rm
  Rrn
  (KK
�ro
  hX   M8rp
  K K�rq
  Rrr
  (KhNNNJ����J����K }rs
  (Cnsrt
  KKKtru
  �rv
  trw
  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7frx
  try
  bhgNu�rz
  Rr{
  h/h#h$K �r|
  h&�r}
  Rr~
  (KK
�r
  h
�CP31x�^��?j��i8E�?�PE~��?�.�@h�?O=����?�R׭ҵ�?J"�[I�?	A=��L�?�uu˻��?:��*�?r�
  tr�
  bubh.Nh�Kh�h�h�h�hh
C��b�vM?r�
  �r�
  Rr�
  h�]r�
  h�Kh/h#h$K �r�
  h&�r�
  Rr�
  (KK
K�r�
  h
�CP31x�^��?j��i8E�?�PE~��?�.�@h�?O=����?�R׭ҵ�?J"�[I�?	A=��L�?�uu˻��?:��*�?r�
  tr�
  bh�X   cmler�
  ubh4j
  h;j!
  h�K h�h�)�r�
  (h�h#h$K �r�
  h&�r�
  Rr�
  (KK	�r�
  h
�CH�1=�>�?֍f�?a��`�R�?��5E[�?v�4_?�?�$��h��?ŧ˖�9�?F}��?���q� �?r�
  tr�
  bj  h#h$K �r�
  h&�r�
  Rr�
  (KK	�r�
  h
�CH ��#�hI?�$0�,�?0�j�ާ?`��3r�?`�h������T��C�����񘖝� �m/N�b? � �K�>r�
  tr�
  bu}r�
  h�}r�
  sbh,]r�
  h�Kj  Kj  h#h$K �r�
  h&�r�
  Rr�
  (KK�r�
  h
�C��`�d6�?�}#y�?r�
  tr�
  bj  h#h$K �r�
  h&�r�
  Rr�
  (KKK�r�
  h
�C >�@"-�P@�{��7*Q��{��7*Q�0�F���Q@r�
  tr�
  bh�Kh"j
  ububj  hh
C��+�q!�?r�
  �r�
  Rr�
  j"  G?�4J��kuj�  }r�
  (hhh
C?cO���?r�
  �r�
  Rr�
  hh)�r�
  }r�
  (hhhh)�r�
  }r�
  (hK
hK	hKhK hh)�r�
  }r�
  (h"h#h$K �r�
  h&�r�
  Rr�
  (KK	K�r�
  h
�CH>�B.B��?_t��?�O�.T�?0g]j��?l�Rxk�?v�6c�5�?��ToU��?�;O���?�M�.�?r�
  tr�
  bhK	hKhK h,]r�
  (h.h/h0h1h2h3eh4h#h$K �r�
  h&�r�
  Rr�
  (KK	K�r�
  h
�C�      �?��ߞ=��?      �?>�B.B��?      �?_t��?      �?�O�.T�?      �?0g]j��?      �?l�Rxk�?      �?v�6c�5�?      �?��ToU��?      �?�;O���?r�
  tr�
  bh;h<)�r�
  }r�
  (h?h@�  E�U7fNN�r�
  Rr�
  hK hCh@�  �F�K�NN�r�
  Rr�
  hFNhGhH)�r�
  }r�
  (hKhL)�r�
  (]r�
  hOhP}r�
  (h;h#h$K �r�
  h&�r�
  Rr�
  (KK
�r�
  hX�]r�
  (h\h]h^h_h`hahbhchdheetr�
  bhgNu�r�
  Rr�
  a]r�
  h#h$K �r�
  h&�r�
  Rr�
  (KK
�r�
  h
�CP��ߞ=��?>�B.B��?_t��?�O�.T�?0g]j��?l�Rxk�?v�6c�5�?��ToU��?�;O���?�M�.�?r�
  tr�
  ba]r�
  hOhP}r�
  (h;h#h$K �r�
  h&�r�
  Rr�
  (KK
�r�
  hX�]r�
  (h\h]h^h_h`hahbhchdheetr�
  bhgNu�r�
  Rr�
  a}r�
  h|}r�
  (h~]r�
  }r�
  (h�j�
  h�h�K K
K�r�
  Rr�
  uah�j�
  ustr�
  bh�h�h�h�hgh�ubh�X   AS-MARr�
  h�h�)�r�
  (h�h�h�j�
  h�]r�
  (h�X   L1.valuer�
  eu}r�
  h�}r�
  sbh.Nh�h�h�}r�
  (h�Nh�h�)�r�
  }r�
  (h�h�)�r�
  }r�
  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�
  h�Ksubh;h�h�}r�
  (h�Nh�Nh;h#h$K �r�
  h&�r�
  Rr�
  (KK	�r�
  hX   M8r�
  K K�r   Rr  (KhNNNJ����J����K }r  (Cnsr  KKKtr  �r  tr  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr  tr  bhgNu�r	  Rr
  hgNu�r  Rr  h�Nh�h�h�}r  (h�Nh�Nh;h#h$K �r  h&�r  Rr  (KK
�r  hX   M8r  K K�r  Rr  (KhNNNJ����J����K }r  (Cnsr  KKKtr  �r  tr  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr  tr  bhgNu�r  Rr  h/h#h$K �r  h&�r  Rr   (KK
�r!  h
�CP��ߞ=��?>�B.B��?_t��?�O�.T�?0g]j��?l�Rxk�?v�6c�5�?��ToU��?�;O���?�M�.�?r"  tr#  bubh.Nh�Kh�h�h�h�hh
C�V�6X�O?r$  �r%  Rr&  h�]r'  h�Kh/h#h$K �r(  h&�r)  Rr*  (KK
K�r+  h
�CP��ߞ=��?>�B.B��?_t��?�O�.T�?0g]j��?l�Rxk�?v�6c�5�?��ToU��?�;O���?�M�.�?r,  tr-  bh�X   cmler.  ubh4j�
  h;j�
  h�K h�h�)�r/  (h�h#h$K �r0  h&�r1  Rr2  (KK	�r3  h
�CH�@�4�?w�z8���?�N�$K��?X�z]_��?��<
�%�?zn��3�?�J�4 �?�������?� ����?r4  tr5  bj  h#h$K �r6  h&�r7  Rr8  (KK	�r9  h
�CH`��پj�? 㯮Iț��L�5>�?�7Po��@���n�?�`�
*�� tJ�N�d�`^�"��@TK�?r:  tr;  bu}r<  h�}r=  sbh,]r>  h�Kj  Kj  h#h$K �r?  h&�r@  RrA  (KK�rB  h
�C���C�?���$E/�?rC  trD  bj  h#h$K �rE  h&�rF  RrG  (KKK�rH  h
�C ���5j�;@ڢ`�pB�ڢ`�pB��t2}G@rI  trJ  bh�Kh"j�
  ububj  hh
C���{�7�?rK  �rL  RrM  j"  G?��%�g��uj�  }rN  (hhh
C�S�g�^�?rO  �rP  RrQ  hh)�rR  }rS  (hhhh)�rT  }rU  (hK
hK	hKhK hh)�rV  }rW  (h"h#h$K �rX  h&�rY  RrZ  (KK	K�r[  h
�CH����y��? vYy�=�?A�RG�?NIi�N��?�����#�?�E��`s�?t������?����r�?�Pn���?r\  tr]  bhK	hKhK h,]r^  (h.h/h0h1h2h3eh4h#h$K �r_  h&�r`  Rra  (KK	K�rb  h
�C�      �?�yO7���?      �?����y��?      �? vYy�=�?      �?A�RG�?      �?NIi�N��?      �?�����#�?      �?�E��`s�?      �?t������?      �?����r�?rc  trd  bh;h<)�re  }rf  (h?h@�  E�U7fNN�rg  Rrh  hK hCh@�  �F�K�NN�ri  Rrj  hFNhGhH)�rk  }rl  (hKhL)�rm  (]rn  hOhP}ro  (h;h#h$K �rp  h&�rq  Rrr  (KK
�rs  hX�]rt  (h\h]h^h_h`hahbhchdheetru  bhgNu�rv  Rrw  a]rx  h#h$K �ry  h&�rz  Rr{  (KK
�r|  h
�CP�yO7���?����y��? vYy�=�?A�RG�?NIi�N��?�����#�?�E��`s�?t������?����r�?�Pn���?r}  tr~  ba]r  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j{  h�h�K K
K�r�  Rr�  uah�jn  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�jw  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP�yO7���?����y��? vYy�=�?A�RG�?NIi�N��?�����#�?�E��`s�?t������?����r�?�Pn���?r�  tr�  bubh.Nh�Kh�h�h�h�hh
Cк:��ms?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CP�yO7���?����y��? vYy�=�?A�RG�?NIi�N��?�����#�?�E��`s�?t������?����r�?�Pn���?r�  tr�  bh�X   cmler�  ubh4ja  h;je  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH���}�!�?�B��N��?��3�^K�?�p�޺6�?2������?���>�?85�?���?�0�T.�?p��^j�?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CHX���}�? 9s
�s�?`��#4�?��].<I�?��{u��?�YLn�fz?7�qEĿ0�ʕ��`�W�v��r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�C3�]R�}�?���#���?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C ��E�@��hH�Y#���hH�Y#��&�i%,@r�  tr�  bh�Kh"jZ  ububj  hh
C�=��f�?r�  �r�  Rr�  j"  G?�\-5w\uji  }r�  (hhh
C�F,����?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CHRh��ZIܿTb4 t�ݿ�b����׿{��%�/ѿ���S��ֿ>��q]ֿ�m���̿F��SɿĠ�)aͿr�  tr�  bhK	hKhK h,]r   (h.h/h0h1h2h3eh4h#h$K �r  h&�r  Rr  (KK	K�r  h
�C�      �?i�)[�ۿ      �?Rh��ZIܿ      �?Tb4 t�ݿ      �?�b����׿      �?{��%�/ѿ      �?���S��ֿ      �?>��q]ֿ      �?�m���̿      �?F��Sɿr  tr  bh;h<)�r  }r  (h?h@�  E�U7fNN�r	  Rr
  hK hCh@�  �F�K�NN�r  Rr  hFNhGhH)�r  }r  (hKhL)�r  (]r  hOhP}r  (h;h#h$K �r  h&�r  Rr  (KK
�r  hX�]r  (h\h]h^h_h`hahbhchdheetr  bhgNu�r  Rr  a]r  h#h$K �r  h&�r  Rr  (KK
�r  h
�CPi�)[�ۿRh��ZIܿTb4 t�ݿ�b����׿{��%�/ѿ���S��ֿ>��q]ֿ�m���̿F��SɿĠ�)aͿr  tr   ba]r!  hOhP}r"  (h;h#h$K �r#  h&�r$  Rr%  (KK
�r&  hX�]r'  (h\h]h^h_h`hahbhchdheetr(  bhgNu�r)  Rr*  a}r+  h|}r,  (h~]r-  }r.  (h�j  h�h�K K
K�r/  Rr0  uah�j  ustr1  bh�h�h�h�hgh�ubh�X   AS-MARr2  h�h�)�r3  (h�h�h�j  h�]r4  (h�X   L1.valuer5  eu}r6  h�}r7  sbh.Nh�h�h�}r8  (h�Nh�h�)�r9  }r:  (h�h�)�r;  }r<  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r=  h�Ksubh;h�h�}r>  (h�Nh�Nh;h#h$K �r?  h&�r@  RrA  (KK	�rB  hX   M8rC  K K�rD  RrE  (KhNNNJ����J����K }rF  (CnsrG  KKKtrH  �rI  trJ  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7frK  trL  bhgNu�rM  RrN  hgNu�rO  RrP  h�Nh�h�h�}rQ  (h�Nh�Nh;h#h$K �rR  h&�rS  RrT  (KK
�rU  hX   M8rV  K K�rW  RrX  (KhNNNJ����J����K }rY  (CnsrZ  KKKtr[  �r\  tr]  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr^  tr_  bhgNu�r`  Rra  h/h#h$K �rb  h&�rc  Rrd  (KK
�re  h
�CPi�)[�ۿRh��ZIܿTb4 t�ݿ�b����׿{��%�/ѿ���S��ֿ>��q]ֿ�m���̿F��SɿĠ�)aͿrf  trg  bubh.Nh�Kh�h�h�h�hh
C��)5p?rh  �ri  Rrj  h�]rk  h�Kh/h#h$K �rl  h&�rm  Rrn  (KK
K�ro  h
�CPi�)[�ۿRh��ZIܿTb4 t�ݿ�b����׿{��%�/ѿ���S��ֿ>��q]ֿ�m���̿F��SɿĠ�)aͿrp  trq  bh�X   cmlerr  ubh4j  h;j  h�K h�h�)�rs  (h�h#h$K �rt  h&�ru  Rrv  (KK	�rw  h
�CH���V �ؿR{���;ٿ..=�mڿ^�+�'�տ�ҙ�ѿ�1���.տL����Կ�ܝο�ވ�n˿rx  try  bj  h#h$K �rz  h&�r{  Rr|  (KK	�r}  h
�CH �{��j���W�����[���_�?��yB2�?T���������Rf풿БY.��?��C��? >��#��r~  tr  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�C���,v���ET�𥳐�?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C ݋���?{K�lȘ@{K�lȘ@����$�*@r�  tr�  bh�Kh"j�  ububj  hh
C�.���?r�  �r�  Rr�  j"  G�Ы��uuX   Hlthr�  }r�  (ji  }r�  (hhh
Ca�H�o��?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CH~�*���j�6r�U�*�M~u+��IV�[ۿ �艾.��C=w�K���̘��&޶7������񇴿r�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?A����Z�      �?~�*���      �?j�6r�U�      �?*�M~u+�      �?�IV�[ۿ      �? �艾.�      �?�C=w�      �?K���̘��      �?&޶7��r�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CPA����Z�~�*���j�6r�U�*�M~u+��IV�[ۿ �艾.��C=w�K���̘��&޶7������񇴿r�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�j�  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j�  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r   tr  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr  tr  bhgNu�r  Rr  h/h#h$K �r  h&�r  Rr  (KK
�r	  h
�CPA����Z�~�*���j�6r�U�*�M~u+��IV�[ۿ �艾.��C=w�K���̘��&޶7������񇴿r
  tr  bubh.Nh�Kh�h�h�h�hh
C)&Z�p�?r  �r  Rr  h�]r  h�Kh/h#h$K �r  h&�r  Rr  (KK
K�r  h
�CPA����Z�~�*���j�6r�U�*�M~u+��IV�[ۿ �艾.��C=w�K���̘��&޶7������񇴿r  tr  bh�X   cmler  ubh4j�  h;j�  h�K h�h�)�r  (h�h#h$K �r  h&�r  Rr  (KK	�r  h
�CHX�M�{�俳����῾Pg�2��@�g7�ܿ����Uտ���l�?j^��r�����|k��¼��!���r  tr  bj  h#h$K �r  h&�r  Rr   (KK	�r!  h
�CH`B��HR���%��黿��c�/T�� a_e�?\އ*�Q�?��擤��(]'<���B;?l��{$��?��r"  tr#  bu}r$  h�}r%  sbh,]r&  h�Kj  Kj  h#h$K �r'  h&�r(  Rr)  (KK�r*  h
�C���φ?َ)�z��?r+  tr,  bj  h#h$K �r-  h&�r.  Rr/  (KKK�r0  h
�C ���>z��?g7�Լ��?g7�Լ��?kx��?r1  tr2  bh�Kh"j�  ububj  hh
C�=��Q�?r3  �r4  Rr5  j"  G?�_s����uj#  }r6  (hhh
C��� ��?r7  �r8  Rr9  hh)�r:  }r;  (hhhh)�r<  }r=  (hK
hK	hKhK hh)�r>  }r?  (h"h#h$K �r@  h&�rA  RrB  (KK	K�rC  h
�CH��J��?��Ғ���?/Vz�,�?8:�W[��? �L��d�?��6-�?Ŀ�+X��?|�#����?l�cM�?rD  trE  bhK	hKhK h,]rF  (h.h/h0h1h2h3eh4h#h$K �rG  h&�rH  RrI  (KK	K�rJ  h
�C�      �?9�Kǒ�?      �?��J��?      �?��Ғ���?      �?/Vz�,�?      �?8:�W[��?      �? �L��d�?      �?��6-�?      �?Ŀ�+X��?      �?|�#����?rK  trL  bh;h<)�rM  }rN  (h?h@�  E�U7fNN�rO  RrP  hK hCh@�  �F�K�NN�rQ  RrR  hFNhGhH)�rS  }rT  (hKhL)�rU  (]rV  hOhP}rW  (h;h#h$K �rX  h&�rY  RrZ  (KK
�r[  hX�]r\  (h\h]h^h_h`hahbhchdheetr]  bhgNu�r^  Rr_  a]r`  h#h$K �ra  h&�rb  Rrc  (KK
�rd  h
�CP9�Kǒ�?��J��?��Ғ���?/Vz�,�?8:�W[��? �L��d�?��6-�?Ŀ�+X��?|�#����?l�cM�?re  trf  ba]rg  hOhP}rh  (h;h#h$K �ri  h&�rj  Rrk  (KK
�rl  hX�]rm  (h\h]h^h_h`hahbhchdheetrn  bhgNu�ro  Rrp  a}rq  h|}rr  (h~]rs  }rt  (h�jc  h�h�K K
K�ru  Rrv  uah�jV  ustrw  bh�h�h�h�hgh�ubh�X   AS-MARrx  h�h�)�ry  (h�h�h�j_  h�]rz  (h�X   L1.valuer{  eu}r|  h�}r}  sbh.Nh�h�h�}r~  (h�Nh�h�)�r  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP9�Kǒ�?��J��?��Ғ���?/Vz�,�?8:�W[��? �L��d�?��6-�?Ŀ�+X��?|�#����?l�cM�?r�  tr�  bubh.Nh�Kh�h�h�h�hh
C.m!&j�Y?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CP9�Kǒ�?��J��?��Ғ���?/Vz�,�?8:�W[��? �L��d�?��6-�?Ŀ�+X��?|�#����?l�cM�?r�  tr�  bh�X   cmler�  ubh4jI  h;jM  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH\�X��?m�cNn]�?�Y����?�  h���?J���� �?	N_w��?j��Y��?�
b=�?�ZY���?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH*���n�? ��7��u?�Zųth�� м����P��z�ⴿ@"A��?@kC3.�? �8xKR�?�Wٛ�?r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�C�'�IQ�?�0��)�?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C 9���%@�C��4���C��4��2��z�@r�  tr�  bh�Kh"jB  ububj  hh
C����?r�  �r�  Rr�  j"  G?�i�XMuj�  }r�  (hhh
C�m�@r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CHHYފ��?|�����?tC>m��?��4麿�o�瑯�?���?���=R�?R�`z�?,y�͉i�?r�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?��̬��?      �?HYފ��?      �?|�����?      �?tC>m��?      �?��4麿      �?�o�瑯�?      �?���?      �?���=R�?      �?R�`z�?r�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r   Rr  a]r  h#h$K �r  h&�r  Rr  (KK
�r  h
�CP��̬��?HYފ��?|�����?tC>m��?��4麿�o�瑯�?���?���=R�?R�`z�?,y�͉i�?r  tr  ba]r	  hOhP}r
  (h;h#h$K �r  h&�r  Rr  (KK
�r  hX�]r  (h\h]h^h_h`hahbhchdheetr  bhgNu�r  Rr  a}r  h|}r  (h~]r  }r  (h�j  h�h�K K
K�r  Rr  uah�j�  ustr  bh�h�h�h�hgh�ubh�X   AS-MARr  h�h�)�r  (h�h�h�j  h�]r  (h�X   L1.valuer  eu}r  h�}r  sbh.Nh�h�h�}r   (h�Nh�h�)�r!  }r"  (h�h�)�r#  }r$  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r%  h�Ksubh;h�h�}r&  (h�Nh�Nh;h#h$K �r'  h&�r(  Rr)  (KK	�r*  hX   M8r+  K K�r,  Rr-  (KhNNNJ����J����K }r.  (Cnsr/  KKKtr0  �r1  tr2  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr3  tr4  bhgNu�r5  Rr6  hgNu�r7  Rr8  h�Nh�h�h�}r9  (h�Nh�Nh;h#h$K �r:  h&�r;  Rr<  (KK
�r=  hX   M8r>  K K�r?  Rr@  (KhNNNJ����J����K }rA  (CnsrB  KKKtrC  �rD  trE  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7frF  trG  bhgNu�rH  RrI  h/h#h$K �rJ  h&�rK  RrL  (KK
�rM  h
�CP��̬��?HYފ��?|�����?tC>m��?��4麿�o�瑯�?���?���=R�?R�`z�?,y�͉i�?rN  trO  bubh.Nh�Kh�h�h�h�hh
C��Ŷr�y?rP  �rQ  RrR  h�]rS  h�Kh/h#h$K �rT  h&�rU  RrV  (KK
K�rW  h
�CP��̬��?HYފ��?|�����?tC>m��?��4麿�o�瑯�?���?���=R�?R�`z�?,y�͉i�?rX  trY  bh�X   cmlerZ  ubh4j�  h;j�  h�K h�h�)�r[  (h�h#h$K �r\  h&�r]  Rr^  (KK	�r_  h
�CHX�:V�?qϷ��?��_����?�KG'�?�q8����?�/y_�T�?;Ԩ��0�?	��Mi�?P�@x��?r`  tra  bj  h#h$K �rb  h&�rc  Rrd  (KK	�re  h
�CH�V��!��� ��0��>�b�|��O����.�ǿn��kq�?���4��?B�I��?���$"�?p_U9V�?rf  trg  bu}rh  h�}ri  sbh,]rj  h�Kj  Kj  h#h$K �rk  h&�rl  Rrm  (KK�rn  h
�C�;�Eó? B[�D��?ro  trp  bj  h#h$K �rq  h&�rr  Rrs  (KKK�rt  h
�C ��?�N:�?qaν��qaν��A��B�q1@ru  trv  bh�Kh"j�  ububj  hh
C�@y��?rw  �rx  Rry  j"  G?��lW#�uh}rz  (hhh
C      �r{  �r|  Rr}  hh)�r~  }r  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CH��:�ֿ4F J�ѿ[\��XLѿs�䄈ٿ��}y��ο{�ȶ�п�0�ѿ�a����ѿ�_@���ҿr�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?�<�ݶ@ҿ      �?��:�ֿ      �?4F J�ѿ      �?[\��XLѿ      �?s�䄈ٿ      �?��}y��ο      �?{�ȶ�п      �?�0�ѿ      �?�a����ѿr�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP�<�ݶ@ҿ��:�ֿ4F J�ѿ[\��XLѿs�䄈ٿ��}y��ο{�ȶ�п�0�ѿ�a����ѿ�_@���ҿr�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�j�  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j�  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP�<�ݶ@ҿ��:�ֿ4F J�ѿ[\��XLѿs�䄈ٿ��}y��ο{�ȶ�п�0�ѿ�a����ѿ�_@���ҿr�  tr�  bubh.Nh�Kh�h�h�h�hh
C>Oߴ�]?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CP�<�ݶ@ҿ��:�ֿ4F J�ѿ[\��XLѿs�䄈ٿ��}y��ο{�ȶ�п�0�ѿ�a����ѿ�_@���ҿr�  tr�  bh�X   cmler�  ubh4j�  h;j�  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr   (KK	�r  h
�CH�MO���ҿ$�%�y�ѿ����$ӿ�?�^SӿrO�yfп��,�Կ�����yӿE&��,ӿ�*-1ӿr  tr  bj  h#h$K �r  h&�r  Rr  (KK	�r  h
�CHp�~T���� �%�f��i���?�����Ը���Y�ڐ?p�0�(�?P?^�}�?0H|��?�G�z�x?r  tr	  bu}r
  h�}r  sbh,]r  h�Kj  Kj  h#h$K �r  h&�r  Rr  (KK�r  h
�C�1*xxٿV�l�'�ֿr  tr  bj  h#h$K �r  h&�r  Rr  (KKK�r  h
�C X�ૣ@*�P��/@*�P��/@Pg�79�J@r  tr  bh�Kh"j�  ububj  hh
C      ��r  �r  Rr  j"  G���R��j�uuX   Chemsr  }r  (j#  }r  (hhh
C��!0�?r  �r   Rr!  hh)�r"  }r#  (hhhh)�r$  }r%  (hK
hK	hKhK hh)�r&  }r'  (h"h#h$K �r(  h&�r)  Rr*  (KK	K�r+  h
�CH�K���?�m<�}��?j�i��?��u��?�oE�J]�?���X�?��(`u��?_�@\Li�?��p$���?r,  tr-  bhK	hKhK h,]r.  (h.h/h0h1h2h3eh4h#h$K �r/  h&�r0  Rr1  (KK	K�r2  h
�C�      �?8��T�/�?      �?�K���?      �?�m<�}��?      �?j�i��?      �?��u��?      �?�oE�J]�?      �?���X�?      �?��(`u��?      �?_�@\Li�?r3  tr4  bh;h<)�r5  }r6  (h?h@�  E�U7fNN�r7  Rr8  hK hCh@�  �F�K�NN�r9  Rr:  hFNhGhH)�r;  }r<  (hKhL)�r=  (]r>  hOhP}r?  (h;h#h$K �r@  h&�rA  RrB  (KK
�rC  hX�]rD  (h\h]h^h_h`hahbhchdheetrE  bhgNu�rF  RrG  a]rH  h#h$K �rI  h&�rJ  RrK  (KK
�rL  h
�CP8��T�/�?�K���?�m<�}��?j�i��?��u��?�oE�J]�?���X�?��(`u��?_�@\Li�?��p$���?rM  trN  ba]rO  hOhP}rP  (h;h#h$K �rQ  h&�rR  RrS  (KK
�rT  hX�]rU  (h\h]h^h_h`hahbhchdheetrV  bhgNu�rW  RrX  a}rY  h|}rZ  (h~]r[  }r\  (h�jK  h�h�K K
K�r]  Rr^  uah�j>  ustr_  bh�h�h�h�hgh�ubh�X   AS-MARr`  h�h�)�ra  (h�h�h�jG  h�]rb  (h�X   L1.valuerc  eu}rd  h�}re  sbh.Nh�h�h�}rf  (h�Nh�h�)�rg  }rh  (h�h�)�ri  }rj  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}rk  h�Ksubh;h�h�}rl  (h�Nh�Nh;h#h$K �rm  h&�rn  Rro  (KK	�rp  hX   M8rq  K K�rr  Rrs  (KhNNNJ����J����K }rt  (Cnsru  KKKtrv  �rw  trx  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fry  trz  bhgNu�r{  Rr|  hgNu�r}  Rr~  h�Nh�h�h�}r  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP8��T�/�?�K���?�m<�}��?j�i��?��u��?�oE�J]�?���X�?��(`u��?_�@\Li�?��p$���?r�  tr�  bubh.Nh�Kh�h�h�h�hh
CE�م!Z?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CP8��T�/�?�K���?�m<�}��?j�i��?��u��?�oE�J]�?���X�?��(`u��?_�@\Li�?��p$���?r�  tr�  bh�X   cmler�  ubh4j1  h;j5  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH�n����?dFe�i�?�^	wys�?�yW�uD�?}�/ܘ�?���?�L�i�?uJ4����?���K��?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH �F���?�ى�`>�?���>�5�?�`��ڳ?`�J��ɤ� X��}��?��|�����E�|�!�� �y��b?r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�Ch���1��?Dc��ˬ�?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C Δ<�bQB@!7��y�A�!7��y�A��5��}A@r�  tr�  bh�Kh"j*  ububj  hh
CF�Ak��?r�  �r�  Rr�  j"  G?�>uj�  }r�  (hhh
Cs�d�J�?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CH~ڝd�?6S�����?����?v-a��?}��%���?�x0��?
j���p�?*3�0C��?�v��qs�?r�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?�4��'p�?      �?~ڝd�?      �?6S�����?      �?����?      �?v-a��?      �?}��%���?      �?�x0��?      �?
j���p�?      �?*3�0C��?r�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP�4��'p�?~ڝd�?6S�����?����?v-a��?}��%���?�x0��?
j���p�?*3�0C��?�v��qs�?r�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr   uah�j�  ustr  bh�h�h�h�hgh�ubh�X   AS-MARr  h�h�)�r  (h�h�h�j�  h�]r  (h�X   L1.valuer  eu}r  h�}r  sbh.Nh�h�h�}r  (h�Nh�h�)�r	  }r
  (h�h�)�r  }r  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r  h�Ksubh;h�h�}r  (h�Nh�Nh;h#h$K �r  h&�r  Rr  (KK	�r  hX   M8r  K K�r  Rr  (KhNNNJ����J����K }r  (Cnsr  KKKtr  �r  tr  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr  tr  bhgNu�r  Rr  hgNu�r  Rr   h�Nh�h�h�}r!  (h�Nh�Nh;h#h$K �r"  h&�r#  Rr$  (KK
�r%  hX   M8r&  K K�r'  Rr(  (KhNNNJ����J����K }r)  (Cnsr*  KKKtr+  �r,  tr-  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr.  tr/  bhgNu�r0  Rr1  h/h#h$K �r2  h&�r3  Rr4  (KK
�r5  h
�CP�4��'p�?~ڝd�?6S�����?����?v-a��?}��%���?�x0��?
j���p�?*3�0C��?�v��qs�?r6  tr7  bubh.Nh�Kh�h�h�h�hh
Cp���  m?r8  �r9  Rr:  h�]r;  h�Kh/h#h$K �r<  h&�r=  Rr>  (KK
K�r?  h
�CP�4��'p�?~ڝd�?6S�����?����?v-a��?}��%���?�x0��?
j���p�?*3�0C��?�v��qs�?r@  trA  bh�X   cmlerB  ubh4j�  h;j�  h�K h�h�)�rC  (h�h#h$K �rD  h&�rE  RrF  (KK	�rG  h
�CHJ_:�N)�?f���0��?��T߼{�?
��o<�?r�-��^�?���]��?�'�F��?���W��?֬��:��?rH  trI  bj  h#h$K �rJ  h&�rK  RrL  (KK	�rM  h
�CHX�[{����ٹY¥����(	�?��^R���?��9RfI����ZhAc�������3�? �f�pݏ? :ٻ�f�?rN  trO  bu}rP  h�}rQ  sbh,]rR  h�Kj  Kj  h#h$K �rS  h&�rT  RrU  (KK�rV  h
�C�;�R��?4w�'Gd�?rW  trX  bj  h#h$K �rY  h&�rZ  Rr[  (KKK�r\  h
�C ^�@3�?x�(>�x�(>�M4(M�� @r]  tr^  bh�Kh"j�  ububj  hh
C�xIt�4�?r_  �r`  Rra  j"  G?ܛ����"uj�  }rb  (hhh
C����R��?rc  �rd  Rre  hh)�rf  }rg  (hhhh)�rh  }ri  (hK
hK	hKhK hh)�rj  }rk  (h"h#h$K �rl  h&�rm  Rrn  (KK	K�ro  h
�CH}'�p�:�?B�*œ�?>���"�?cNܔ��?r誨��?@�̫P7�?�l���?'�qq�B�?�k F�p�?rp  trq  bhK	hKhK h,]rr  (h.h/h0h1h2h3eh4h#h$K �rs  h&�rt  Rru  (KK	K�rv  h
�C�      �?L�<��N�?      �?}'�p�:�?      �?B�*œ�?      �?>���"�?      �?cNܔ��?      �?r誨��?      �?@�̫P7�?      �?�l���?      �?'�qq�B�?rw  trx  bh;h<)�ry  }rz  (h?h@�  E�U7fNN�r{  Rr|  hK hCh@�  �F�K�NN�r}  Rr~  hFNhGhH)�r  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CPL�<��N�?}'�p�:�?B�*œ�?>���"�?cNܔ��?r誨��?@�̫P7�?�l���?'�qq�B�?�k F�p�?r�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�j�  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j�  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CPL�<��N�?}'�p�:�?B�*œ�?>���"�?cNܔ��?r誨��?@�̫P7�?�l���?'�qq�B�?�k F�p�?r�  tr�  bubh.Nh�Kh�h�h�h�hh
CP��ϣ��?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CPL�<��N�?}'�p�:�?B�*œ�?>���"�?cNܔ��?r誨��?@�̫P7�?�l���?'�qq�B�?�k F�p�?r�  tr�  bh�X   cmler�  ubh4ju  h;jy  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CHw\�����?DեtoA�?`����>�?*�Y6��?���^a��?*;��V�?]s����?66B>9�?c�o�?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH�"S=C����(�}3޵�8|"#��? ;�Q�+�?�)�`:ʹ?`���/�? M�� *��x��f>��������r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�C�-}	� �?ZT�X��?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C &x uC�?I6Ͳ����I6Ͳ����a��@r�  tr   bh�Kh"jn  ububj  hh
Cn�E�:�?r  �r  Rr  j"  G?ޕv�MZ(uuX   Manufr  }r  (h}r  (hhh
C�eg�O�?r  �r  Rr	  hh)�r
  }r  (hhhh)�r  }r  (hK
hK	hKhK hh)�r  }r  (h"h#h$K �r  h&�r  Rr  (KK	K�r  h
�CH ٍ�)�?����?N1@�S�?��+?�?&$���?h����?PZw#��?V��o�C�?q�{u	'�?r  tr  bhK	hKhK h,]r  (h.h/h0h1h2h3eh4h#h$K �r  h&�r  Rr  (KK	K�r  h
�C�      �?��Z��Q�?      �? ٍ�)�?      �?����?      �?N1@�S�?      �?��+?�?      �?&$���?      �?h����?      �?PZw#��?      �?V��o�C�?r  tr  bh;h<)�r  }r  (h?h@�  E�U7fNN�r  Rr   hK hCh@�  �F�K�NN�r!  Rr"  hFNhGhH)�r#  }r$  (hKhL)�r%  (]r&  hOhP}r'  (h;h#h$K �r(  h&�r)  Rr*  (KK
�r+  hX�]r,  (h\h]h^h_h`hahbhchdheetr-  bhgNu�r.  Rr/  a]r0  h#h$K �r1  h&�r2  Rr3  (KK
�r4  h
�CP��Z��Q�? ٍ�)�?����?N1@�S�?��+?�?&$���?h����?PZw#��?V��o�C�?q�{u	'�?r5  tr6  ba]r7  hOhP}r8  (h;h#h$K �r9  h&�r:  Rr;  (KK
�r<  hX�]r=  (h\h]h^h_h`hahbhchdheetr>  bhgNu�r?  Rr@  a}rA  h|}rB  (h~]rC  }rD  (h�j3  h�h�K K
K�rE  RrF  uah�j&  ustrG  bh�h�h�h�hgh�ubh�X   AS-MARrH  h�h�)�rI  (h�h�h�j/  h�]rJ  (h�X   L1.valuerK  eu}rL  h�}rM  sbh.Nh�h�h�}rN  (h�Nh�h�)�rO  }rP  (h�h�)�rQ  }rR  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}rS  h�Ksubh;h�h�}rT  (h�Nh�Nh;h#h$K �rU  h&�rV  RrW  (KK	�rX  hX   M8rY  K K�rZ  Rr[  (KhNNNJ����J����K }r\  (Cnsr]  KKKtr^  �r_  tr`  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fra  trb  bhgNu�rc  Rrd  hgNu�re  Rrf  h�Nh�h�h�}rg  (h�Nh�Nh;h#h$K �rh  h&�ri  Rrj  (KK
�rk  hX   M8rl  K K�rm  Rrn  (KhNNNJ����J����K }ro  (Cnsrp  KKKtrq  �rr  trs  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7frt  tru  bhgNu�rv  Rrw  h/h#h$K �rx  h&�ry  Rrz  (KK
�r{  h
�CP��Z��Q�? ٍ�)�?����?N1@�S�?��+?�?&$���?h����?PZw#��?V��o�C�?q�{u	'�?r|  tr}  bubh.Nh�Kh�h�h�h�hh
C16�l�G?r~  �r  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CP��Z��Q�? ٍ�)�?����?N1@�S�?��+?�?&$���?h����?PZw#��?V��o�C�?q�{u	'�?r�  tr�  bh�X   cmler�  ubh4j  h;j  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CHr�S�?�%�a��?�	���Ź?vM��T��?�&5�?�_1'q��?4��2c{�?���J�p�?DEz��?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH�	X�s؀?�,��0��Pxr�I�u?�&�W4�� ힹsp���j����?��#�?����]z?h
𲱐?r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�CLD*R�c�?����*��?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C �����? @�����0-������0-�hC˔�[@r�  tr�  bh�Kh"j  ububj  hh
C�"�)�&�?r�  �r�  Rr�  j"  G?�1J�uj#  }r�  (hhh
Cό�vZo�?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CHpp`�/��?�����?S����t�?��`�Z��?�b��VJ�?j^X6���?�c7�b��?�0�$���?D2�q�?r�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?Z��a���?      �?pp`�/��?      �?�����?      �?S����t�?      �?��`�Z��?      �?�b��VJ�?      �?j^X6���?      �?�c7�b��?      �?�0�$���?r�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CPZ��a���?pp`�/��?�����?S����t�?��`�Z��?�b��VJ�?j^X6���?�c7�b��?�0�$���?D2�q�?r�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�j�  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j�  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr   �r  tr  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr  tr  bhgNu�r  Rr  hgNu�r  Rr  h�Nh�h�h�}r	  (h�Nh�Nh;h#h$K �r
  h&�r  Rr  (KK
�r  hX   M8r  K K�r  Rr  (KhNNNJ����J����K }r  (Cnsr  KKKtr  �r  tr  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr  tr  bhgNu�r  Rr  h/h#h$K �r  h&�r  Rr  (KK
�r  h
�CPZ��a���?pp`�/��?�����?S����t�?��`�Z��?�b��VJ�?j^X6���?�c7�b��?�0�$���?D2�q�?r  tr  bubh.Nh�Kh�h�h�h�hh
C��d��>?r   �r!  Rr"  h�]r#  h�Kh/h#h$K �r$  h&�r%  Rr&  (KK
K�r'  h
�CPZ��a���?pp`�/��?�����?S����t�?��`�Z��?�b��VJ�?j^X6���?�c7�b��?�0�$���?D2�q�?r(  tr)  bh�X   cmler*  ubh4j�  h;j�  h�K h�h�)�r+  (h�h#h$K �r,  h&�r-  Rr.  (KK	�r/  h
�CH�B�m��?ډ�"��?[o�2���?������?\8Y'���?�_��?h�?��$�R�?�����?�s�2��?r0  tr1  bj  h#h$K �r2  h&�r3  Rr4  (KK	�r5  h
�CH ��O�f�� ����� B�pЄ�� 0�T�ZU? ��X&4�?`�1�ˢ?�=[��{�� �Y�O|? H�
�6�?r6  tr7  bu}r8  h�}r9  sbh,]r:  h�Kj  Kj  h#h$K �r;  h&�r<  Rr=  (KK�r>  h
�C���#`�?V�[h��?r?  tr@  bj  h#h$K �rA  h&�rB  RrC  (KKK�rD  h
�C Z�:�EZ@�i�|X��i�|X��P�Uh�V@rE  trF  bh�Kh"j�  ububj  hh
C��D�Q�?rG  �rH  RrI  j"  G?�+]	��uj�  }rJ  (hhh
C@ ����?rK  �rL  RrM  hh)�rN  }rO  (hhhh)�rP  }rQ  (hK
hK	hKhK hh)�rR  }rS  (h"h#h$K �rT  h&�rU  RrV  (KK	K�rW  h
�CHf��8�l���Vt�c����䳜�ǿR.�$� ��3+��^��/ ��x����E�����"ף�����̶ua�rX  trY  bhK	hKhK h,]rZ  (h.h/h0h1h2h3eh4h#h$K �r[  h&�r\  Rr]  (KK	K�r^  h
�C�      �?f�U�"��      �?f��8�l��      �?�Vt�c���      �?�䳜�ǿ      �?R.�$� ��      �?3+��^��      �?/ ��x��      �?��E�����      �?"ף����r_  tr`  bh;h<)�ra  }rb  (h?h@�  E�U7fNN�rc  Rrd  hK hCh@�  �F�K�NN�re  Rrf  hFNhGhH)�rg  }rh  (hKhL)�ri  (]rj  hOhP}rk  (h;h#h$K �rl  h&�rm  Rrn  (KK
�ro  hX�]rp  (h\h]h^h_h`hahbhchdheetrq  bhgNu�rr  Rrs  a]rt  h#h$K �ru  h&�rv  Rrw  (KK
�rx  h
�CPf�U�"��f��8�l���Vt�c����䳜�ǿR.�$� ��3+��^��/ ��x����E�����"ף�����̶ua�ry  trz  ba]r{  hOhP}r|  (h;h#h$K �r}  h&�r~  Rr  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�jw  h�h�K K
K�r�  Rr�  uah�jj  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�js  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CPf�U�"��f��8�l���Vt�c����䳜�ǿR.�$� ��3+��^��/ ��x����E�����"ף�����̶ua�r�  tr�  bubh.Nh�Kh�h�h�h�hh
C����ԧM?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CPf�U�"��f��8�l���Vt�c����䳜�ǿR.�$� ��3+��^��/ ��x����E�����"ף�����̶ua�r�  tr�  bh�X   cmler�  ubh4j]  h;ja  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CHwU(��H���b�!���m{�������z��v����}�%��pjW�7������k����`�8᧻��<��r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH�Xn
���? �1w2_O?5N�'[����w}3%Z��4?�|S�?�����P� �(,2�b?�LL�F�?\-}e�.�?r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�Cp�й���T�@ �/�?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C �u���?�)K��+@�)K��+@���=1?_@r�  tr�  bh�Kh"jV  ububj  hh
ChvQK5��?r�  �r�  Rr�  j"  G���}�H�;uj�  }r�  (hhh
C�?X�G��?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CHsc�	�?��x�� �?��\%��?��+b��?�d��T�?Q�ω��?�mf����?���z�?���R��?r�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r   h
�C�      �?ҕ�ګ?      �?sc�	�?      �?��x�� �?      �?��\%��?      �?��+b��?      �?�d��T�?      �?Q�ω��?      �?�mf����?      �?���z�?r  tr  bh;h<)�r  }r  (h?h@�  E�U7fNN�r  Rr  hK hCh@�  �F�K�NN�r  Rr  hFNhGhH)�r	  }r
  (hKhL)�r  (]r  hOhP}r  (h;h#h$K �r  h&�r  Rr  (KK
�r  hX�]r  (h\h]h^h_h`hahbhchdheetr  bhgNu�r  Rr  a]r  h#h$K �r  h&�r  Rr  (KK
�r  h
�CPҕ�ګ?sc�	�?��x�� �?��\%��?��+b��?�d��T�?Q�ω��?�mf����?���z�?���R��?r  tr  ba]r  hOhP}r  (h;h#h$K �r  h&�r   Rr!  (KK
�r"  hX�]r#  (h\h]h^h_h`hahbhchdheetr$  bhgNu�r%  Rr&  a}r'  h|}r(  (h~]r)  }r*  (h�j  h�h�K K
K�r+  Rr,  uah�j  ustr-  bh�h�h�h�hgh�ubh�X   AS-MARr.  h�h�)�r/  (h�h�h�j  h�]r0  (h�X   L1.valuer1  eu}r2  h�}r3  sbh.Nh�h�h�}r4  (h�Nh�h�)�r5  }r6  (h�h�)�r7  }r8  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r9  h�Ksubh;h�h�}r:  (h�Nh�Nh;h#h$K �r;  h&�r<  Rr=  (KK	�r>  hX   M8r?  K K�r@  RrA  (KhNNNJ����J����K }rB  (CnsrC  KKKtrD  �rE  trF  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7frG  trH  bhgNu�rI  RrJ  hgNu�rK  RrL  h�Nh�h�h�}rM  (h�Nh�Nh;h#h$K �rN  h&�rO  RrP  (KK
�rQ  hX   M8rR  K K�rS  RrT  (KhNNNJ����J����K }rU  (CnsrV  KKKtrW  �rX  trY  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7frZ  tr[  bhgNu�r\  Rr]  h/h#h$K �r^  h&�r_  Rr`  (KK
�ra  h
�CPҕ�ګ?sc�	�?��x�� �?��\%��?��+b��?�d��T�?Q�ω��?�mf����?���z�?���R��?rb  trc  bubh.Nh�Kh�h�h�h�hh
C���t��`?rd  �re  Rrf  h�]rg  h�Kh/h#h$K �rh  h&�ri  Rrj  (KK
K�rk  h
�CPҕ�ګ?sc�	�?��x�� �?��\%��?��+b��?�d��T�?Q�ω��?�mf����?���z�?���R��?rl  trm  bh�X   cmlern  ubh4j�  h;j  h�K h�h�)�ro  (h�h#h$K �rp  h&�rq  Rrr  (KK	�rs  h
�CH������?���b^��?=%,~���?�8�Y �?ж��?�-Tv��?5x��|��?�~t�� �?"O6�M�?rt  tru  bj  h#h$K �rv  h&�rw  Rrx  (KK	�ry  h
�CH rV��S?<n�##䲿�����0�?&*�[v���xV�/-��?`��7ѓ?pWox���? ����Ā����:3~?rz  tr{  bu}r|  h�}r}  sbh,]r~  h�Kj  Kj  h#h$K �r  h&�r�  Rr�  (KK�r�  h
�C����?\��j$
�?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C �-x� ��?����9������9��6*�w"`-@r�  tr�  bh�Kh"j�  ububj  hh
C��+�?r�  �r�  Rr�  j"  G?��-���uji  }r�  (hhh
C�ewW�J�?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CHK�R.ݽ?��1C:�?\��1H��?���ǲ?�b�1���?�$i;�?,_��7a�?.튘U��?��=�C�?r�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?� c�H�?      �?K�R.ݽ?      �?��1C:�?      �?\��1H��?      �?���ǲ?      �?�b�1���?      �?�$i;�?      �?,_��7a�?      �?.튘U��?r�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP� c�H�?K�R.ݽ?��1C:�?\��1H��?���ǲ?�b�1���?�$i;�?,_��7a�?.튘U��?��=�C�?r�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�j�  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j�  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r   h&�r  Rr  (KK
�r  h
�CP� c�H�?K�R.ݽ?��1C:�?\��1H��?���ǲ?�b�1���?�$i;�?,_��7a�?.튘U��?��=�C�?r  tr  bubh.Nh�Kh�h�h�h�hh
C<�Pt��b?r  �r  Rr  h�]r	  h�Kh/h#h$K �r
  h&�r  Rr  (KK
K�r  h
�CP� c�H�?K�R.ݽ?��1C:�?\��1H��?���ǲ?�b�1���?�$i;�?,_��7a�?.튘U��?��=�C�?r  tr  bh�X   cmler  ubh4j�  h;j�  h�K h�h�)�r  (h�h#h$K �r  h&�r  Rr  (KK	�r  h
�CH���cO�?^�KO�
�?F�nf#��?64�	��?\��a�?�j�����?uݙ��?�ay��M�?P����?r  tr  bj  h#h$K �r  h&�r  Rr  (KK	�r  h
�CH��|��a?���|!���X��,�x�?�z�B
#���Ț`���?��ܧ��_?@��x�c?0]��֍�?(�J5�F�?r  tr  bu}r  h�}r  sbh,]r   h�Kj  Kj  h#h$K �r!  h&�r"  Rr#  (KK�r$  h
�CqaKf��?�nӾ�<�?r%  tr&  bj  h#h$K �r'  h&�r(  Rr)  (KKK�r*  h
�C ZJ�����?��M:�����M:�����̤��=@r+  tr,  bh�Kh"j�  ububj  hh
C��'�-��?r-  �r.  Rr/  j"  G?� �'�9uuX   Utilsr0  }r1  (h}r2  (hhh
C�,��jx�?r3  �r4  Rr5  hh)�r6  }r7  (hhhh)�r8  }r9  (hK
hK	hKhK hh)�r:  }r;  (h"h#h$K �r<  h&�r=  Rr>  (KK	K�r?  h
�CH�A��8�ٿ�կ�[)ѿv�R����j^n��_�����\��oV�e�b�������F�Re����������r@  trA  bhK	hKhK h,]rB  (h.h/h0h1h2h3eh4h#h$K �rC  h&�rD  RrE  (KK	K�rF  h
�C�      �?�.u<�d޿      �?�A��8�ٿ      �?�կ�[)ѿ      �?v�R����      �?j^n��_��      �?���\��      �?oV�e�b��      �?�����      �?F�Re����rG  trH  bh;h<)�rI  }rJ  (h?h@�  E�U7fNN�rK  RrL  hK hCh@�  �F�K�NN�rM  RrN  hFNhGhH)�rO  }rP  (hKhL)�rQ  (]rR  hOhP}rS  (h;h#h$K �rT  h&�rU  RrV  (KK
�rW  hX�]rX  (h\h]h^h_h`hahbhchdheetrY  bhgNu�rZ  Rr[  a]r\  h#h$K �r]  h&�r^  Rr_  (KK
�r`  h
�CP�.u<�d޿�A��8�ٿ�կ�[)ѿv�R����j^n��_�����\��oV�e�b�������F�Re����������ra  trb  ba]rc  hOhP}rd  (h;h#h$K �re  h&�rf  Rrg  (KK
�rh  hX�]ri  (h\h]h^h_h`hahbhchdheetrj  bhgNu�rk  Rrl  a}rm  h|}rn  (h~]ro  }rp  (h�j_  h�h�K K
K�rq  Rrr  uah�jR  ustrs  bh�h�h�h�hgh�ubh�X   AS-MARrt  h�h�)�ru  (h�h�h�j[  h�]rv  (h�X   L1.valuerw  eu}rx  h�}ry  sbh.Nh�h�h�}rz  (h�Nh�h�)�r{  }r|  (h�h�)�r}  }r~  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP�.u<�d޿�A��8�ٿ�կ�[)ѿv�R����j^n��_�����\��oV�e�b�������F�Re����������r�  tr�  bubh.Nh�Kh�h�h�h�hh
C�����T?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CP�.u<�d޿�A��8�ٿ�կ�[)ѿv�R����j^n��_�����\��oV�e�b�������F�Re����������r�  tr�  bh�X   cmler�  ubh4jE  h;jI  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CHaKF�%Sֿ-���ӿ�j'_-�ɿ��.���J�X;���4�����?��͹��~ޒB���e%�1���r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH����x������?@B��hH�?��)�Rr?L#Ո�C���5�$�`���@"�#��?�/�x'�� x��8�>r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�C`h ����O��D��?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C ӥFz��?�e�Ir1�?�e�Ir1�?E[;�@r�  tr�  bh�Kh"j>  ububj  hh
Cc: �Yk�?r�  �r�  Rr�  j"  G���A�!l�uj#  }r�  (hhh
C�{�"<��?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CH̄�6T�?'�LM�t�?6���`�?�-x�z�?��f==��?�b�h�?"@/��5�?\-��H�?j�m���?r�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?f���]�?      �?̄�6T�?      �?'�LM�t�?      �?6���`�?      �?�-x�z�?      �?��f==��?      �?�b�h�?      �?"@/��5�?      �?\-��H�?r�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r   Rr  (KK
�r  h
�CPf���]�?̄�6T�?'�LM�t�?6���`�?�-x�z�?��f==��?�b�h�?"@/��5�?\-��H�?j�m���?r  tr  ba]r  hOhP}r  (h;h#h$K �r  h&�r  Rr	  (KK
�r
  hX�]r  (h\h]h^h_h`hahbhchdheetr  bhgNu�r  Rr  a}r  h|}r  (h~]r  }r  (h�j  h�h�K K
K�r  Rr  uah�j�  ustr  bh�h�h�h�hgh�ubh�X   AS-MARr  h�h�)�r  (h�h�h�j�  h�]r  (h�X   L1.valuer  eu}r  h�}r  sbh.Nh�h�h�}r  (h�Nh�h�)�r  }r  (h�h�)�r  }r   (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r!  h�Ksubh;h�h�}r"  (h�Nh�Nh;h#h$K �r#  h&�r$  Rr%  (KK	�r&  hX   M8r'  K K�r(  Rr)  (KhNNNJ����J����K }r*  (Cnsr+  KKKtr,  �r-  tr.  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr/  tr0  bhgNu�r1  Rr2  hgNu�r3  Rr4  h�Nh�h�h�}r5  (h�Nh�Nh;h#h$K �r6  h&�r7  Rr8  (KK
�r9  hX   M8r:  K K�r;  Rr<  (KhNNNJ����J����K }r=  (Cnsr>  KKKtr?  �r@  trA  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7frB  trC  bhgNu�rD  RrE  h/h#h$K �rF  h&�rG  RrH  (KK
�rI  h
�CPf���]�?̄�6T�?'�LM�t�?6���`�?�-x�z�?��f==��?�b�h�?"@/��5�?\-��H�?j�m���?rJ  trK  bubh.Nh�Kh�h�h�h�hh
Ce*��ŰS?rL  �rM  RrN  h�]rO  h�Kh/h#h$K �rP  h&�rQ  RrR  (KK
K�rS  h
�CPf���]�?̄�6T�?'�LM�t�?6���`�?�-x�z�?��f==��?�b�h�?"@/��5�?\-��H�?j�m���?rT  trU  bh�X   cmlerV  ubh4j�  h;j�  h�K h�h�)�rW  (h�h#h$K �rX  h&�rY  RrZ  (KK	�r[  h
�CH��m�f��?�Uª�V�?n_"����?r��U�?�k��u��?���!�?`G"���?,�0�@��?�*-3��?r\  tr]  bj  h#h$K �r^  h&�r_  Rr`  (KK	�ra  h
�CH�<k �? ?Z���m?0E�U�� ����� 2^��Û�`��;	������D�? Ʀ*'�? �b�.י?rb  trc  bu}rd  h�}re  sbh,]rf  h�Kj  Kj  h#h$K �rg  h&�rh  Rri  (KK�rj  h
�C�E@7��?(>����?rk  trl  bj  h#h$K �rm  h&�rn  Rro  (KKK�rp  h
�C �S�&|�#@��@�u�2���@�u�2��
��>9B@rq  trr  bh�Kh"j�  ububj  hh
C�^�Ŧ?rs  �rt  Rru  j"  G?�����uj�  }rv  (hhh
C�X�(��?rw  �rx  Rry  hh)�rz  }r{  (hhhh)�r|  }r}  (hK
hK	hKhK hh)�r~  }r  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CH��w�a�?>��2�?wv"~��?f�z��C�?���A��?�i;��?8��� ��?��?74?�?o1�T)��?r�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?f�� ���?      �?��w�a�?      �?>��2�?      �?wv"~��?      �?f�z��C�?      �?���A��?      �?�i;��?      �?8��� ��?      �?��?74?�?r�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CPf�� ���?��w�a�?>��2�?wv"~��?f�z��C�?���A��?�i;��?8��� ��?��?74?�?o1�T)��?r�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�j�  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j�  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CPf�� ���?��w�a�?>��2�?wv"~��?f�z��C�?���A��?�i;��?8��� ��?��?74?�?o1�T)��?r�  tr�  bubh.Nh�Kh�h�h�h�hh
C �i]n?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CPf�� ���?��w�a�?>��2�?wv"~��?f�z��C�?���A��?�i;��?8��� ��?��?74?�?o1�T)��?r�  tr�  bh�X   cmler�  ubh4j�  h;j�  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH�ioN��?��#�j�?�xS�n�?qwk	���?���ƫ?����?�?�H��&'�?�<ϲn��?x�gࣣ?r�  tr�  bj  h#h$K �r   h&�r  Rr  (KK	�r  h
�CH�K'�޲?�+F��?`�;���?���ME������?�x��4�������3���6_/�Ԕ��3��.w��r  tr  bu}r  h�}r  sbh,]r  h�Kj  Kj  h#h$K �r	  h&�r
  Rr  (KK�r  h
�C�Ų��	�?���o�?r  tr  bj  h#h$K �r  h&�r  Rr  (KKK�r  h
�C Y�t����?�� ,^���� ,^��	O�$� 0@r  tr  bh�Kh"j�  ububj  hh
C��[��ʲ?r  �r  Rr  j"  G?�ra�6Xuj�  }r  (hhh
C�<��^�?r  �r  Rr  hh)�r  }r  (hhhh)�r  }r  (hK
hK	hKhK hh)�r   }r!  (h"h#h$K �r"  h&�r#  Rr$  (KK	K�r%  h
�CH�u�RPcտ�6��=ο�D�&٦?8&Hc�k�?	���s�?�-;�,����S��G��\8�ʶF�����>�*��r&  tr'  bhK	hKhK h,]r(  (h.h/h0h1h2h3eh4h#h$K �r)  h&�r*  Rr+  (KK	K�r,  h
�C�      �?W*�C7п      �?�u�RPcտ      �?�6��=ο      �?�D�&٦?      �?8&Hc�k�?      �?	���s�?      �?�-;�,��      �?��S��G��      �?\8�ʶF��r-  tr.  bh;h<)�r/  }r0  (h?h@�  E�U7fNN�r1  Rr2  hK hCh@�  �F�K�NN�r3  Rr4  hFNhGhH)�r5  }r6  (hKhL)�r7  (]r8  hOhP}r9  (h;h#h$K �r:  h&�r;  Rr<  (KK
�r=  hX�]r>  (h\h]h^h_h`hahbhchdheetr?  bhgNu�r@  RrA  a]rB  h#h$K �rC  h&�rD  RrE  (KK
�rF  h
�CPW*�C7п�u�RPcտ�6��=ο�D�&٦?8&Hc�k�?	���s�?�-;�,����S��G��\8�ʶF�����>�*��rG  trH  ba]rI  hOhP}rJ  (h;h#h$K �rK  h&�rL  RrM  (KK
�rN  hX�]rO  (h\h]h^h_h`hahbhchdheetrP  bhgNu�rQ  RrR  a}rS  h|}rT  (h~]rU  }rV  (h�jE  h�h�K K
K�rW  RrX  uah�j8  ustrY  bh�h�h�h�hgh�ubh�X   AS-MARrZ  h�h�)�r[  (h�h�h�jA  h�]r\  (h�X   L1.valuer]  eu}r^  h�}r_  sbh.Nh�h�h�}r`  (h�Nh�h�)�ra  }rb  (h�h�)�rc  }rd  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}re  h�Ksubh;h�h�}rf  (h�Nh�Nh;h#h$K �rg  h&�rh  Rri  (KK	�rj  hX   M8rk  K K�rl  Rrm  (KhNNNJ����J����K }rn  (Cnsro  KKKtrp  �rq  trr  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7frs  trt  bhgNu�ru  Rrv  hgNu�rw  Rrx  h�Nh�h�h�}ry  (h�Nh�Nh;h#h$K �rz  h&�r{  Rr|  (KK
�r}  hX   M8r~  K K�r  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CPW*�C7п�u�RPcտ�6��=ο�D�&٦?8&Hc�k�?	���s�?�-;�,����S��G��\8�ʶF�����>�*��r�  tr�  bubh.Nh�Kh�h�h�h�hh
C�5� �ڀ?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CPW*�C7п�u�RPcտ�6��=ο�D�&٦?8&Hc�k�?	���s�?�-;�,����S��G��\8�ʶF�����>�*��r�  tr�  bh�X   cmler�  ubh4j+  h;j/  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH��E�ƿ�s̿B��o�Ŀ"���c��?��z{
�?4�	����^$%1�Q��XQ^:찿[�b�c��r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CHM�`�Ŀ�^�aʤ��d?c|�?0��,m�?�{�B�iY���a�������)>��@Ђ�Ƨu��l���<?r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�CX+��I ��W��rʙ�?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C ~8I�P�?�Wh��?�Wh��?�O�� @r�  tr�  bh�Kh"j$  ububj  hh
C�/�O�?r�  �r�  Rr�  j"  G��:�B��uji  }r�  (hhh
C�N�E��?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CH�?�d���?��䭠��?���$��?��Xl��?�oTꡦ�?nhx ���?^ӎ$�r�?@4ԯ8�?��/��I�?r�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?�l���?      �?�?�d���?      �?��䭠��?      �?���$��?      �?��Xl��?      �?�oTꡦ�?      �?nhx ���?      �?^ӎ$�r�?      �?@4ԯ8�?r�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP�l���?�?�d���?��䭠��?���$��?��Xl��?�oTꡦ�?nhx ���?^ӎ$�r�?@4ԯ8�?��/��I�?r�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�j�  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j�  h�]r�  (h�X   L1.valuer�  eu}r   h�}r  sbh.Nh�h�h�}r  (h�Nh�h�)�r  }r  (h�h�)�r  }r  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r  h�Ksubh;h�h�}r  (h�Nh�Nh;h#h$K �r	  h&�r
  Rr  (KK	�r  hX   M8r  K K�r  Rr  (KhNNNJ����J����K }r  (Cnsr  KKKtr  �r  tr  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr  tr  bhgNu�r  Rr  hgNu�r  Rr  h�Nh�h�h�}r  (h�Nh�Nh;h#h$K �r  h&�r  Rr  (KK
�r  hX   M8r   K K�r!  Rr"  (KhNNNJ����J����K }r#  (Cnsr$  KKKtr%  �r&  tr'  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr(  tr)  bhgNu�r*  Rr+  h/h#h$K �r,  h&�r-  Rr.  (KK
�r/  h
�CP�l���?�?�d���?��䭠��?���$��?��Xl��?�oTꡦ�?nhx ���?^ӎ$�r�?@4ԯ8�?��/��I�?r0  tr1  bubh.Nh�Kh�h�h�h�hh
C� -3{?r2  �r3  Rr4  h�]r5  h�Kh/h#h$K �r6  h&�r7  Rr8  (KK
K�r9  h
�CP�l���?�?�d���?��䭠��?���$��?��Xl��?�oTꡦ�?nhx ���?^ӎ$�r�?@4ԯ8�?��/��I�?r:  tr;  bh�X   cmler<  ubh4j�  h;j�  h�K h�h�)�r=  (h�h#h$K �r>  h&�r?  Rr@  (KK	�rA  h
�CH�@�*���?�w,����?�/�gf�?�ۿ�St�?�j�����?pʶhV�?Y����?B�s���?|?�g���?rB  trC  bj  h#h$K �rD  h&�rE  RrF  (KK	�rG  h
�CH�A�A4����|t����(����?�^ȷ�f�?P)�Dp&�?`=��}>�� �CuPj�?@@�ӆ���@<c$�3��rH  trI  bu}rJ  h�}rK  sbh,]rL  h�Kj  Kj  h#h$K �rM  h&�rN  RrO  (KK�rP  h
�C�U��?ň�]��?rQ  trR  bj  h#h$K �rS  h&�rT  RrU  (KKK�rV  h
�C ة����?5���
���5���
���^��z	@rW  trX  bh�Kh"j�  ububj  hh
C=LUSx^�?rY  �rZ  Rr[  j"  G?�ҿ� TuuX   Durblr\  }r]  (h}r^  (hhh
C���_��?r_  �r`  Rra  hh)�rb  }rc  (hhhh)�rd  }re  (hK
hK	hKhK hh)�rf  }rg  (h"h#h$K �rh  h&�ri  Rrj  (KK	K�rk  h
�CH�\!~2�?!D":��?~"Z{V��?�FLMg��?����?5�/�t��?.����?��ȝ��?�{�Zg�?rl  trm  bhK	hKhK h,]rn  (h.h/h0h1h2h3eh4h#h$K �ro  h&�rp  Rrq  (KK	K�rr  h
�C�      �?,c����?      �?�\!~2�?      �?!D":��?      �?~"Z{V��?      �?�FLMg��?      �?����?      �?5�/�t��?      �?.����?      �?��ȝ��?rs  trt  bh;h<)�ru  }rv  (h?h@�  E�U7fNN�rw  Rrx  hK hCh@�  �F�K�NN�ry  Rrz  hFNhGhH)�r{  }r|  (hKhL)�r}  (]r~  hOhP}r  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP,c����?�\!~2�?!D":��?~"Z{V��?�FLMg��?����?5�/�t��?.����?��ȝ��?�{�Zg�?r�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�j~  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j�  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP,c����?�\!~2�?!D":��?~"Z{V��?�FLMg��?����?5�/�t��?.����?��ȝ��?�{�Zg�?r�  tr�  bubh.Nh�Kh�h�h�h�hh
C�x)��\f?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CP,c����?�\!~2�?!D":��?~"Z{V��?�FLMg��?����?5�/�t��?.����?��ȝ��?�{�Zg�?r�  tr�  bh�X   cmler�  ubh4jq  h;ju  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH�z��:��?v_��mj�?S�E`�?9��j= �?"BSd��?Tl�Y���?�O�ua�?nz_�0�?s	�y���?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CHx���Ͱ?X�-a�?���-y���_�'춿fYg�?���[dcU�?��l��̰?@�uh����X�	�=�?r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�C@�)�U��?�+|���?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C �%r�$�?��J�����J������TN#@r�  tr�  bh�Kh"jj  ububj  hh
CTeK"P��?r�  �r�  Rr�  j"  G?�~ 9;�uj#  }r   (hhh
CK�3�K�?r  �r  Rr  hh)�r  }r  (hhhh)�r  }r  (hK
hK	hKhK hh)�r  }r	  (h"h#h$K �r
  h&�r  Rr  (KK	K�r  h
�CH�o�Qjp�?SHR<Y�?�Ўm�?�E��?z�j=m��?����^��?���J+�?�w7��?v%�� �?r  tr  bhK	hKhK h,]r  (h.h/h0h1h2h3eh4h#h$K �r  h&�r  Rr  (KK	K�r  h
�C�      �?jL
����?      �?�o�Qjp�?      �?SHR<Y�?      �?�Ўm�?      �?�E��?      �?z�j=m��?      �?����^��?      �?���J+�?      �?�w7��?r  tr  bh;h<)�r  }r  (h?h@�  E�U7fNN�r  Rr  hK hCh@�  �F�K�NN�r  Rr  hFNhGhH)�r  }r  (hKhL)�r  (]r   hOhP}r!  (h;h#h$K �r"  h&�r#  Rr$  (KK
�r%  hX�]r&  (h\h]h^h_h`hahbhchdheetr'  bhgNu�r(  Rr)  a]r*  h#h$K �r+  h&�r,  Rr-  (KK
�r.  h
�CPjL
����?�o�Qjp�?SHR<Y�?�Ўm�?�E��?z�j=m��?����^��?���J+�?�w7��?v%�� �?r/  tr0  ba]r1  hOhP}r2  (h;h#h$K �r3  h&�r4  Rr5  (KK
�r6  hX�]r7  (h\h]h^h_h`hahbhchdheetr8  bhgNu�r9  Rr:  a}r;  h|}r<  (h~]r=  }r>  (h�j-  h�h�K K
K�r?  Rr@  uah�j   ustrA  bh�h�h�h�hgh�ubh�X   AS-MARrB  h�h�)�rC  (h�h�h�j)  h�]rD  (h�X   L1.valuerE  eu}rF  h�}rG  sbh.Nh�h�h�}rH  (h�Nh�h�)�rI  }rJ  (h�h�)�rK  }rL  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}rM  h�Ksubh;h�h�}rN  (h�Nh�Nh;h#h$K �rO  h&�rP  RrQ  (KK	�rR  hX   M8rS  K K�rT  RrU  (KhNNNJ����J����K }rV  (CnsrW  KKKtrX  �rY  trZ  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr[  tr\  bhgNu�r]  Rr^  hgNu�r_  Rr`  h�Nh�h�h�}ra  (h�Nh�Nh;h#h$K �rb  h&�rc  Rrd  (KK
�re  hX   M8rf  K K�rg  Rrh  (KhNNNJ����J����K }ri  (Cnsrj  KKKtrk  �rl  trm  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7frn  tro  bhgNu�rp  Rrq  h/h#h$K �rr  h&�rs  Rrt  (KK
�ru  h
�CPjL
����?�o�Qjp�?SHR<Y�?�Ўm�?�E��?z�j=m��?����^��?���J+�?�w7��?v%�� �?rv  trw  bubh.Nh�Kh�h�h�h�hh
C�oe@�.?rx  �ry  Rrz  h�]r{  h�Kh/h#h$K �r|  h&�r}  Rr~  (KK
K�r  h
�CPjL
����?�o�Qjp�?SHR<Y�?�Ўm�?�E��?z�j=m��?����^��?���J+�?�w7��?v%�� �?r�  tr�  bh�X   cmler�  ubh4j  h;j  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH�Q����?�y�b�?B;���U�?��Xa�?z7�#��?��F/���?�0Vz��?n[	��<�?PPuF 4�?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH �v�}� 
�V��b� =�)�w? �'mБ? ����$�?�C*f�?�y
����q}V��� m�����r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�CP�V��?��*�{��?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C ��nH�@���`R����`R��V*:�{@r�  tr�  bh�Kh"j  ububj  hh
C4b�y��?r�  �r�  Rr�  j"  G?�Qڰ��uj�  }r�  (hhh
C��%Uw��?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CHCu^ߑѿ�X�*�пyfk�U�ʿ� ǆ�]пJL�d2�Կ���ӿ`�H�u�ѿ��"�+ѿbf��N�ѿr�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?�� <�п      �?Cu^ߑѿ      �?�X�*�п      �?yfk�U�ʿ      �?� ǆ�]п      �?JL�d2�Կ      �?���ӿ      �?`�H�u�ѿ      �?��"�+ѿr�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP�� <�пCu^ߑѿ�X�*�пyfk�U�ʿ� ǆ�]пJL�d2�Կ���ӿ`�H�u�ѿ��"�+ѿbf��N�ѿr�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�j�  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j�  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr   hgNu�r  Rr  h�Nh�h�h�}r  (h�Nh�Nh;h#h$K �r  h&�r  Rr  (KK
�r  hX   M8r  K K�r	  Rr
  (KhNNNJ����J����K }r  (Cnsr  KKKtr  �r  tr  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr  tr  bhgNu�r  Rr  h/h#h$K �r  h&�r  Rr  (KK
�r  h
�CP�� <�пCu^ߑѿ�X�*�пyfk�U�ʿ� ǆ�]пJL�d2�Կ���ӿ`�H�u�ѿ��"�+ѿbf��N�ѿr  tr  bubh.Nh�Kh�h�h�h�hh
C	�;�*K?r  �r  Rr  h�]r  h�Kh/h#h$K �r  h&�r  Rr   (KK
K�r!  h
�CP�� <�пCu^ߑѿ�X�*�пyfk�U�ʿ� ǆ�]пJL�d2�Կ���ӿ`�H�u�ѿ��"�+ѿbf��N�ѿr"  tr#  bh�X   cmler$  ubh4j�  h;j�  h�K h�h�)�r%  (h�h#h$K �r&  h&�r'  Rr(  (KK	�r)  h
�CHTǓ�+-ѿ�1 q~ѿp�Ŷ�%ѿ�=�p@п�j8�+ѿ�����ҿ~LU'ҿ̓:Τ}ѿ��
�E\ѿr*  tr+  bj  h#h$K �r,  h&�r-  Rr.  (KK	�r/  h
�CH��P��,y����T3ގ?�9��ͮ?@����`r��
?:4���0������c��Ԃ?@?��*�t? ���U�z�r0  tr1  bu}r2  h�}r3  sbh,]r4  h�Kj  Kj  h#h$K �r5  h&�r6  Rr7  (KK�r8  h
�C`�� �[ǿ�iR�,�?r9  tr:  bj  h#h$K �r;  h&�r<  Rr=  (KKK�r>  h
�C �s1�=j!@��gYC�?@��gYC�?@����ڊ]@r?  tr@  bh�Kh"j�  ububj  hh
CŚZ�<�?rA  �rB  RrC  j"  G��tW2z�uj�  }rD  (hhh
C���T!��?rE  �rF  RrG  hh)�rH  }rI  (hhhh)�rJ  }rK  (hK
hK	hKhK hh)�rL  }rM  (h"h#h$K �rN  h&�rO  RrP  (KK	K�rQ  h
�CH\�D��п?���ҿ�[��ӿ�Y�U���*4�C��ɿ3枙����ܩ
Y"�����?{�� A���܁�rR  trS  bhK	hKhK h,]rT  (h.h/h0h1h2h3eh4h#h$K �rU  h&�rV  RrW  (KK	K�rX  h
�C�      �?��Hb��      �?\�D��п      �??���ҿ      �?�[��ӿ      �?�Y�U���      �?*4�C��ɿ      �?3枙���      �?�ܩ
Y"��      �?���?{��rY  trZ  bh;h<)�r[  }r\  (h?h@�  E�U7fNN�r]  Rr^  hK hCh@�  �F�K�NN�r_  Rr`  hFNhGhH)�ra  }rb  (hKhL)�rc  (]rd  hOhP}re  (h;h#h$K �rf  h&�rg  Rrh  (KK
�ri  hX�]rj  (h\h]h^h_h`hahbhchdheetrk  bhgNu�rl  Rrm  a]rn  h#h$K �ro  h&�rp  Rrq  (KK
�rr  h
�CP��Hb��\�D��п?���ҿ�[��ӿ�Y�U���*4�C��ɿ3枙����ܩ
Y"�����?{�� A���܁�rs  trt  ba]ru  hOhP}rv  (h;h#h$K �rw  h&�rx  Rry  (KK
�rz  hX�]r{  (h\h]h^h_h`hahbhchdheetr|  bhgNu�r}  Rr~  a}r  h|}r�  (h~]r�  }r�  (h�jq  h�h�K K
K�r�  Rr�  uah�jd  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�jm  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP��Hb��\�D��п?���ҿ�[��ӿ�Y�U���*4�C��ɿ3枙����ܩ
Y"�����?{�� A���܁�r�  tr�  bubh.Nh�Kh�h�h�h�hh
CB̳)��?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CP��Hb��\�D��п?���ҿ�[��ӿ�Y�U���*4�C��ɿ3枙����ܩ
Y"�����?{�� A���܁�r�  tr�  bh�X   cmler�  ubh4jW  h;j[  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CHm��hi���n�o�˿�k��^ο��,�&�ο�E\/@;����.�L�ƿVq��9���\*��鯿�Z$�6��r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH/��t_�¿f��e���tc�.G̮�<��{�?�"�Xڛ��u�w' [�?`��?��,�?i�o�~��?r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�CU�99fG��Α�B��?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C ���8	j�?}*��1@�?}*��1@�?�7�mu%@r�  tr�  bh�Kh"jP  ububj  hh
C�112A�?r�  �r�  Rr�  j"  G����U^�uji  }r�  (hhh
C��vi�s@r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CH�����?ǫ����?B�
�#�?җqzD�?`�"��?��G���?�Z��Q��?���ǔ�?��� P}�?r�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?=���:�?      �?�����?      �?ǫ����?      �?B�
�#�?      �?җqzD�?      �?`�"��?      �?��G���?      �?�Z��Q��?      �?���ǔ�?r�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr   hK hCh@�  �F�K�NN�r  Rr  hFNhGhH)�r  }r  (hKhL)�r  (]r  hOhP}r  (h;h#h$K �r  h&�r	  Rr
  (KK
�r  hX�]r  (h\h]h^h_h`hahbhchdheetr  bhgNu�r  Rr  a]r  h#h$K �r  h&�r  Rr  (KK
�r  h
�CP=���:�?�����?ǫ����?B�
�#�?җqzD�?`�"��?��G���?�Z��Q��?���ǔ�?��� P}�?r  tr  ba]r  hOhP}r  (h;h#h$K �r  h&�r  Rr  (KK
�r  hX�]r  (h\h]h^h_h`hahbhchdheetr  bhgNu�r  Rr   a}r!  h|}r"  (h~]r#  }r$  (h�j  h�h�K K
K�r%  Rr&  uah�j  ustr'  bh�h�h�h�hgh�ubh�X   AS-MARr(  h�h�)�r)  (h�h�h�j  h�]r*  (h�X   L1.valuer+  eu}r,  h�}r-  sbh.Nh�h�h�}r.  (h�Nh�h�)�r/  }r0  (h�h�)�r1  }r2  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r3  h�Ksubh;h�h�}r4  (h�Nh�Nh;h#h$K �r5  h&�r6  Rr7  (KK	�r8  hX   M8r9  K K�r:  Rr;  (KhNNNJ����J����K }r<  (Cnsr=  KKKtr>  �r?  tr@  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7frA  trB  bhgNu�rC  RrD  hgNu�rE  RrF  h�Nh�h�h�}rG  (h�Nh�Nh;h#h$K �rH  h&�rI  RrJ  (KK
�rK  hX   M8rL  K K�rM  RrN  (KhNNNJ����J����K }rO  (CnsrP  KKKtrQ  �rR  trS  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7frT  trU  bhgNu�rV  RrW  h/h#h$K �rX  h&�rY  RrZ  (KK
�r[  h
�CP=���:�?�����?ǫ����?B�
�#�?җqzD�?`�"��?��G���?�Z��Q��?���ǔ�?��� P}�?r\  tr]  bubh.Nh�Kh�h�h�h�hh
C{h�B?r^  �r_  Rr`  h�]ra  h�Kh/h#h$K �rb  h&�rc  Rrd  (KK
K�re  h
�CP=���:�?�����?ǫ����?B�
�#�?җqzD�?`�"��?��G���?�Z��Q��?���ǔ�?��� P}�?rf  trg  bh�X   cmlerh  ubh4j�  h;j�  h�K h�h�)�ri  (h�h#h$K �rj  h&�rk  Rrl  (KK	�rm  h
�CH���v[�?����UI�?7�d(2I�?�3f#F�?B�3�J�?��<�P�?�4��yM�?6���M�?�YG��K�?rn  tro  bj  h#h$K �rp  h&�rq  Rrr  (KK	�rs  h
�CH@@J����L�=����P��e�X�� @����*����>!�?�wRak�? �����? ����x?�Ll�Й�rt  tru  bu}rv  h�}rw  sbh,]rx  h�Kj  Kj  h#h$K �ry  h&�rz  Rr{  (KK�r|  h
�C$З7��? ��!��?r}  tr~  bj  h#h$K �r  h&�r�  Rr�  (KKK�r�  h
�C :$��A@ٷ�9��F�ٷ�9��F�>�xM@r�  tr�  bh�Kh"j�  ububj  hh
Cln��A�?r�  �r�  Rr�  j"  G?�J�f��uuX   Enrgyr�  }r�  (j#  }r�  (hhh
C�;���?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CH��5�?:�"_��?K�}���?V�A��N�?�J�CH�?1�bv���?h���`�?��;h�I�?���|��?r�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?j8>���?      �?��5�?      �?:�"_��?      �?K�}���?      �?V�A��N�?      �?�J�CH�?      �?1�bv���?      �?h���`�?      �?��;h�I�?r�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CPj8>���?��5�?:�"_��?K�}���?V�A��N�?�J�CH�?1�bv���?h���`�?��;h�I�?���|��?r�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�j�  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j�  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CPj8>���?��5�?:�"_��?K�}���?V�A��N�?�J�CH�?1�bv���?h���`�?��;h�I�?���|��?r   tr  bubh.Nh�Kh�h�h�h�hh
C���'8?r  �r  Rr  h�]r  h�Kh/h#h$K �r  h&�r  Rr  (KK
K�r	  h
�CPj8>���?��5�?:�"_��?K�}���?V�A��N�?�J�CH�?1�bv���?h���`�?��;h�I�?���|��?r
  tr  bh�X   cmler  ubh4j�  h;j�  h�K h�h�)�r  (h�h#h$K �r  h&�r  Rr  (KK	�r  h
�CH�g�;'�?��Qะ�?u���"c�?Ǎ ���?L�<��O�?�r��e��?�#�?��?�9Y�?�X
�M�?r  tr  bj  h#h$K �r  h&�r  Rr  (KK	�r  h
�CH <�J�X�@�Mٛ��� ����v?�c7=�?�Ti��?`�Y�&Y��@���!��? pC�~^� ����?r  tr  bu}r  h�}r  sbh,]r  h�Kj  Kj  h#h$K �r  h&�r  Rr  (KK�r   h
�Cn��ȅ�?|K~���?r!  tr"  bj  h#h$K �r#  h&�r$  Rr%  (KKK�r&  h
�C ��ɎO@[`���V�[`���V�0�Q��`@r'  tr(  bh�Kh"j�  ububj  hh
C�}��C]�?r)  �r*  Rr+  j"  G?�QH��/uji  }r,  (hhh
C�Kd�!��?r-  �r.  Rr/  hh)�r0  }r1  (hhhh)�r2  }r3  (hK
hK	hKhK hh)�r4  }r5  (h"h#h$K �r6  h&�r7  Rr8  (KK	K�r9  h
�CH��P�J�?�R$��?p����?zJ��?��M8�5�?���}V��?��aaJ��?�[[��Q�?�b ��?r:  tr;  bhK	hKhK h,]r<  (h.h/h0h1h2h3eh4h#h$K �r=  h&�r>  Rr?  (KK	K�r@  h
�C�      �?��8c]O�?      �?��P�J�?      �?�R$��?      �?p����?      �?zJ��?      �?��M8�5�?      �?���}V��?      �?��aaJ��?      �?�[[��Q�?rA  trB  bh;h<)�rC  }rD  (h?h@�  E�U7fNN�rE  RrF  hK hCh@�  �F�K�NN�rG  RrH  hFNhGhH)�rI  }rJ  (hKhL)�rK  (]rL  hOhP}rM  (h;h#h$K �rN  h&�rO  RrP  (KK
�rQ  hX�]rR  (h\h]h^h_h`hahbhchdheetrS  bhgNu�rT  RrU  a]rV  h#h$K �rW  h&�rX  RrY  (KK
�rZ  h
�CP��8c]O�?��P�J�?�R$��?p����?zJ��?��M8�5�?���}V��?��aaJ��?�[[��Q�?�b ��?r[  tr\  ba]r]  hOhP}r^  (h;h#h$K �r_  h&�r`  Rra  (KK
�rb  hX�]rc  (h\h]h^h_h`hahbhchdheetrd  bhgNu�re  Rrf  a}rg  h|}rh  (h~]ri  }rj  (h�jY  h�h�K K
K�rk  Rrl  uah�jL  ustrm  bh�h�h�h�hgh�ubh�X   AS-MARrn  h�h�)�ro  (h�h�h�jU  h�]rp  (h�X   L1.valuerq  eu}rr  h�}rs  sbh.Nh�h�h�}rt  (h�Nh�h�)�ru  }rv  (h�h�)�rw  }rx  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}ry  h�Ksubh;h�h�}rz  (h�Nh�Nh;h#h$K �r{  h&�r|  Rr}  (KK	�r~  hX   M8r  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP��8c]O�?��P�J�?�R$��?p����?zJ��?��M8�5�?���}V��?��aaJ��?�[[��Q�?�b ��?r�  tr�  bubh.Nh�Kh�h�h�h�hh
C��)Ud?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CP��8c]O�?��P�J�?�R$��?p����?zJ��?��M8�5�?���}V��?��aaJ��?�[[��Q�?�b ��?r�  tr�  bh�X   cmler�  ubh4j?  h;jC  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH��gD�M�?Ǭ���?[��%��?͍��-S�?%!ҽ&��?Ǆ�*)��?ь0m}�?�&/v��?O�TV��?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH�4;�k��� k%��`�؟���Њ(f��?�%��6�?��;�*�����B5L�?`����Ä? C"�Mf�?r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�C�:�Q��? S�?�R�?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C 	�T� @���_}l2����_}l2���v���D@r�  tr�  bh�Kh"j8  ububj  hh
C펫��4�?r�  �r�  Rr�  j"  G?ܚb��uuX   Telcmr�  }r�  (j#  }r�  (hhh
C��%��^�?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CH�Hb;��?�5c���?A.M�?fޞ�n��?f���<��?h���,�?���=m�?��3Kf��?ȱ�+��?r�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?54xQ2�?      �?�Hb;��?      �?�5c���?      �?A.M�?      �?fޞ�n��?      �?f���<��?      �?h���,�?      �?���=m�?      �?��3Kf��?r�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP54xQ2�?�Hb;��?�5c���?A.M�?fޞ�n��?f���<��?h���,�?���=m�?��3Kf��?ȱ�+��?r�  tr   ba]r  hOhP}r  (h;h#h$K �r  h&�r  Rr  (KK
�r  hX�]r  (h\h]h^h_h`hahbhchdheetr  bhgNu�r	  Rr
  a}r  h|}r  (h~]r  }r  (h�j�  h�h�K K
K�r  Rr  uah�j�  ustr  bh�h�h�h�hgh�ubh�X   AS-MARr  h�h�)�r  (h�h�h�j�  h�]r  (h�X   L1.valuer  eu}r  h�}r  sbh.Nh�h�h�}r  (h�Nh�h�)�r  }r  (h�h�)�r  }r  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r  h�Ksubh;h�h�}r  (h�Nh�Nh;h#h$K �r  h&�r   Rr!  (KK	�r"  hX   M8r#  K K�r$  Rr%  (KhNNNJ����J����K }r&  (Cnsr'  KKKtr(  �r)  tr*  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr+  tr,  bhgNu�r-  Rr.  hgNu�r/  Rr0  h�Nh�h�h�}r1  (h�Nh�Nh;h#h$K �r2  h&�r3  Rr4  (KK
�r5  hX   M8r6  K K�r7  Rr8  (KhNNNJ����J����K }r9  (Cnsr:  KKKtr;  �r<  tr=  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr>  tr?  bhgNu�r@  RrA  h/h#h$K �rB  h&�rC  RrD  (KK
�rE  h
�CP54xQ2�?�Hb;��?�5c���?A.M�?fޞ�n��?f���<��?h���,�?���=m�?��3Kf��?ȱ�+��?rF  trG  bubh.Nh�Kh�h�h�h�hh
C�M{;B*d?rH  �rI  RrJ  h�]rK  h�Kh/h#h$K �rL  h&�rM  RrN  (KK
K�rO  h
�CP54xQ2�?�Hb;��?�5c���?A.M�?fޞ�n��?f���<��?h���,�?���=m�?��3Kf��?ȱ�+��?rP  trQ  bh�X   cmlerR  ubh4j�  h;j�  h�K h�h�)�rS  (h�h#h$K �rT  h&�rU  RrV  (KK	�rW  h
�CH���v{�?��_�7<�?O�6���?{��E*��?�����u�?�0��4��?&:�}��?��u��8�?d��εd�?rX  trY  bj  h#h$K �rZ  h&�r[  Rr\  (KK	�r]  h
�CH���|������ET�� @>�S�?P��n���P'ZK��?�"H"�٨��
�o,�? ��/�ٛ? 2�h���?r^  tr_  bu}r`  h�}ra  sbh,]rb  h�Kj  Kj  h#h$K �rc  h&�rd  Rre  (KK�rf  h
�C���>�W�?h���?rg  trh  bj  h#h$K �ri  h&�rj  Rrk  (KKK�rl  h
�C �4���=@��Ƥ?���Ƥ?��ǹ-��@@rm  trn  bh�Kh"j�  ububj  hh
C�1��!T�?ro  �rp  Rrq  j"  G?�Jh//�uh}rr  (hhh
C(}�3���?rs  �rt  Rru  hh)�rv  }rw  (hhhh)�rx  }ry  (hK
hK	hKhK hh)�rz  }r{  (h"h#h$K �r|  h&�r}  Rr~  (KK	K�r  h
�CH�-�Z�Ͽ,�h��ɿ���,$,ѿ�h�Y�5ʿpҶ�5��R�T���ƿ+@6}}ο�Vv��Ͽ{ߞi�#пr�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?�ߢ1\$׿      �?�-�Z�Ͽ      �?,�h��ɿ      �?���,$,ѿ      �?�h�Y�5ʿ      �?pҶ�5��      �?R�T���ƿ      �?+@6}}ο      �?�Vv��Ͽr�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP�ߢ1\$׿�-�Z�Ͽ,�h��ɿ���,$,ѿ�h�Y�5ʿpҶ�5��R�T���ƿ+@6}}ο�Vv��Ͽ{ߞi�#пr�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�j�  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j�  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP�ߢ1\$׿�-�Z�Ͽ,�h��ɿ���,$,ѿ�h�Y�5ʿpҶ�5��R�T���ƿ+@6}}ο�Vv��Ͽ{ߞi�#пr�  tr�  bubh.Nh�Kh�h�h�h�hh
CƮ�;A�[?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CP�ߢ1\$׿�-�Z�Ͽ,�h��ɿ���,$,ѿ�h�Y�5ʿpҶ�5��R�T���ƿ+@6}}ο�Vv��Ͽ{ߞi�#пr�  tr�  bh�X   cmler�  ubh4j�  h;j�  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CHP�f�Ͽ*�_⮂̿)·˶˿�eͿo#��	(˿�>�'�ȿ0cE�_ʿױ�E�-̿���Wiz̿r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH be�B@?�WC�{G�?� 8F���p��[��?nt��R�?�K���(�?t���w��((-�a����҆��i��r   tr  bu}r  h�}r  sbh,]r  h�Kj  Kj  h#h$K �r  h&�r  Rr  (KK�r  h
�C�����Ŀ���qċ�?r	  tr
  bj  h#h$K �r  h&�r  Rr  (KKK�r  h
�C L����?ފ��q3@ފ��q3@��&&�l<@r  tr  bh�Kh"j~  ububj  hh
C�a�gJ�?r  �r  Rr  j"  G��s�af��uuX   Moneyr  }r  (j�  }r  (hhh
C|���W�?r  �r  Rr  hh)�r  }r  (hhhh)�r  }r  (hK
hK	hKhK hh)�r  }r  (h"h#h$K �r   h&�r!  Rr"  (KK	K�r#  h
�CHQ��o���,um��l�����u`{[l����ь�%����[�㋿py�oAq�����n��� ��|�5��r$  tr%  bhK	hKhK h,]r&  (h.h/h0h1h2h3eh4h#h$K �r'  h&�r(  Rr)  (KK	K�r*  h
�C�      �?\�е��      �?Q��o��      �?�,um��      �?l�����      �?u`{[l���      �?�ь�%���      �?�[�㋿      �?py�oAq�      �?����n���r+  tr,  bh;h<)�r-  }r.  (h?h@�  E�U7fNN�r/  Rr0  hK hCh@�  �F�K�NN�r1  Rr2  hFNhGhH)�r3  }r4  (hKhL)�r5  (]r6  hOhP}r7  (h;h#h$K �r8  h&�r9  Rr:  (KK
�r;  hX�]r<  (h\h]h^h_h`hahbhchdheetr=  bhgNu�r>  Rr?  a]r@  h#h$K �rA  h&�rB  RrC  (KK
�rD  h
�CP\�е��Q��o���,um��l�����u`{[l����ь�%����[�㋿py�oAq�����n��� ��|�5��rE  trF  ba]rG  hOhP}rH  (h;h#h$K �rI  h&�rJ  RrK  (KK
�rL  hX�]rM  (h\h]h^h_h`hahbhchdheetrN  bhgNu�rO  RrP  a}rQ  h|}rR  (h~]rS  }rT  (h�jC  h�h�K K
K�rU  RrV  uah�j6  ustrW  bh�h�h�h�hgh�ubh�X   AS-MARrX  h�h�)�rY  (h�h�h�j?  h�]rZ  (h�X   L1.valuer[  eu}r\  h�}r]  sbh.Nh�h�h�}r^  (h�Nh�h�)�r_  }r`  (h�h�)�ra  }rb  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}rc  h�Ksubh;h�h�}rd  (h�Nh�Nh;h#h$K �re  h&�rf  Rrg  (KK	�rh  hX   M8ri  K K�rj  Rrk  (KhNNNJ����J����K }rl  (Cnsrm  KKKtrn  �ro  trp  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7frq  trr  bhgNu�rs  Rrt  hgNu�ru  Rrv  h�Nh�h�h�}rw  (h�Nh�Nh;h#h$K �rx  h&�ry  Rrz  (KK
�r{  hX   M8r|  K K�r}  Rr~  (KhNNNJ����J����K }r  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP\�е��Q��o���,um��l�����u`{[l����ь�%����[�㋿py�oAq�����n��� ��|�5��r�  tr�  bubh.Nh�Kh�h�h�h�hh
C.3�p��S?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CP\�е��Q��o���,um��l�����u`{[l����ь�%����[�㋿py�oAq�����n��� ��|�5��r�  tr�  bh�X   cmler�  ubh4j)  h;j-  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH�2��g��4�e�K<��)Q�K�g���[�J�c��Vp�8&������ď��\®5����8C��&������
=��r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CHT�ǒ�z?d,]���?"��QĲ��	�!�����PI�>�?��׷�-�?�{Q?3�?����޴�?@�]�x|?r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�CO��Ɠ��2�iCd��?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C ��Q���?�p�R��@�p�R��@7a���Q@r�  tr�  bh�Kh"j"  ububj  hh
Cq��kc>�?r�  �r�  Rr�  j"  G��zr�o��uj�  }r�  (hhh
C%{7��?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CHI����࿚�����ۿD�葏���b-��֭��D�����e�<���$)�V�謿�?��d}��@@��$|�r�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?�iV�޾�      �?I�����      �?������ۿ      �?D�葏��      �?�b-��֭�      �?�D����      �?�e�<���      �?$)�V�謿      �?�?��d}��r�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP�iV�޾�I����࿚�����ۿD�葏���b-��֭��D�����e�<���$)�V�謿�?��d}��@@��$|�r�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�j�  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j�  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r   (h�Nh�h�)�r  }r  (h�h�)�r  }r  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r  h�Ksubh;h�h�}r  (h�Nh�Nh;h#h$K �r  h&�r  Rr	  (KK	�r
  hX   M8r  K K�r  Rr  (KhNNNJ����J����K }r  (Cnsr  KKKtr  �r  tr  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr  tr  bhgNu�r  Rr  hgNu�r  Rr  h�Nh�h�h�}r  (h�Nh�Nh;h#h$K �r  h&�r  Rr  (KK
�r  hX   M8r  K K�r  Rr   (KhNNNJ����J����K }r!  (Cnsr"  KKKtr#  �r$  tr%  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr&  tr'  bhgNu�r(  Rr)  h/h#h$K �r*  h&�r+  Rr,  (KK
�r-  h
�CP�iV�޾�I����࿚�����ۿD�葏���b-��֭��D�����e�<���$)�V�謿�?��d}��@@��$|�r.  tr/  bubh.Nh�Kh�h�h�h�hh
C�Ce6F�{?r0  �r1  Rr2  h�]r3  h�Kh/h#h$K �r4  h&�r5  Rr6  (KK
K�r7  h
�CP�iV�޾�I����࿚�����ۿD�葏���b-��֭��D�����e�<���$)�V�謿�?��d}��@@��$|�r8  tr9  bh�X   cmler:  ubh4j�  h;j�  h�K h�h�)�r;  (h�h#h$K �r<  h&�r=  Rr>  (KK	�r?  h
�CH�����ܿhW�_O׿L���[ ӿ]�J���pP��ޞ����!��ݔ�5���ΰ�s(͋����܉<_���r@  trA  bj  h#h$K �rB  h&�rC  RrD  (KK	�rE  h
�CHp�9ںX���,�4C걿�HJ��x�?�K���([? 7i�@P?�����p���?�ӂ?ԩ�Md����81�?rF  trG  bu}rH  h�}rI  sbh,]rJ  h�Kj  Kj  h#h$K �rK  h&�rL  RrM  (KK�rN  h
�C��S3��q?�L��W�?rO  trP  bj  h#h$K �rQ  h&�rR  RrS  (KKK�rT  h
�C ���P5��?&�'t�?&�'t�?n�l[� @rU  trV  bh�Kh"j�  ububj  hh
C�
�H�?rW  �rX  RrY  j"  G?�Y�6Z�uji  }rZ  (hhh
C#V5
���?r[  �r\  Rr]  hh)�r^  }r_  (hhhh)�r`  }ra  (hK
hK	hKhK hh)�rb  }rc  (h"h#h$K �rd  h&�re  Rrf  (KK	K�rg  h
�CHd�#��?{�|��[�?q8�-\��?x��>|��?�(�E��?�\�>(�?5�%�x_�?�(�z��?�u;ϕ�?rh  tri  bhK	hKhK h,]rj  (h.h/h0h1h2h3eh4h#h$K �rk  h&�rl  Rrm  (KK	K�rn  h
�C�      �?@������?      �?d�#��?      �?{�|��[�?      �?q8�-\��?      �?x��>|��?      �?�(�E��?      �?�\�>(�?      �?5�%�x_�?      �?�(�z��?ro  trp  bh;h<)�rq  }rr  (h?h@�  E�U7fNN�rs  Rrt  hK hCh@�  �F�K�NN�ru  Rrv  hFNhGhH)�rw  }rx  (hKhL)�ry  (]rz  hOhP}r{  (h;h#h$K �r|  h&�r}  Rr~  (KK
�r  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP@������?d�#��?{�|��[�?q8�-\��?x��>|��?�(�E��?�\�>(�?5�%�x_�?�(�z��?�u;ϕ�?r�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�jz  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j�  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  h/h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CP@������?d�#��?{�|��[�?q8�-\��?x��>|��?�(�E��?�\�>(�?5�%�x_�?�(�z��?�u;ϕ�?r�  tr�  bubh.Nh�Kh�h�h�h�hh
C��P*�p?r�  �r�  Rr�  h�]r�  h�Kh/h#h$K �r�  h&�r�  Rr�  (KK
K�r�  h
�CP@������?d�#��?{�|��[�?q8�-\��?x��>|��?�(�E��?�\�>(�?5�%�x_�?�(�z��?�u;ϕ�?r�  tr�  bh�X   cmler�  ubh4jm  h;jq  h�K h�h�)�r�  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH���G�?`1Ψ�?��,Dk��?Z+�r��?
T����?�K�B��?h�{^E�?<��#{�?��ڌ��?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH��?�!�? �l	P_�?���x����x���}��H���_��? ��<�n?0%�Y^����\/U���ڻ��;��r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�C�e�r�?L�Chd��?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C X��&#@�5a��+��5a��+��@�^\v4@r�  tr�  bh�Kh"jf  ububj  hh
C4h��W��?r�  �r�  Rr�  j"  G?�*׵�$uj#  }r�  (hhh
C��\�.�?r�  �r�  Rr�  hh)�r   }r  (hhhh)�r  }r  (hK
hK	hKhK hh)�r  }r  (h"h#h$K �r  h&�r  Rr  (KK	K�r	  h
�CHVӗ�?�-V<��?|\a`ޮ�?]J����?���=7�?���A�?;9���?�w�%�j�?%j�H?F�?r
  tr  bhK	hKhK h,]r  (h.h/h0h1h2h3eh4h#h$K �r  h&�r  Rr  (KK	K�r  h
�C�      �?�+�����?      �?Vӗ�?      �?�-V<��?      �?|\a`ޮ�?      �?]J����?      �?���=7�?      �?���A�?      �?;9���?      �?�w�%�j�?r  tr  bh;h<)�r  }r  (h?h@�  E�U7fNN�r  Rr  hK hCh@�  �F�K�NN�r  Rr  hFNhGhH)�r  }r  (hKhL)�r  (]r  hOhP}r  (h;h#h$K �r  h&�r  Rr   (KK
�r!  hX�]r"  (h\h]h^h_h`hahbhchdheetr#  bhgNu�r$  Rr%  a]r&  h#h$K �r'  h&�r(  Rr)  (KK
�r*  h
�CP�+�����?Vӗ�?�-V<��?|\a`ޮ�?]J����?���=7�?���A�?;9���?�w�%�j�?%j�H?F�?r+  tr,  ba]r-  hOhP}r.  (h;h#h$K �r/  h&�r0  Rr1  (KK
�r2  hX�]r3  (h\h]h^h_h`hahbhchdheetr4  bhgNu�r5  Rr6  a}r7  h|}r8  (h~]r9  }r:  (h�j)  h�h�K K
K�r;  Rr<  uah�j  ustr=  bh�h�h�h�hgh�ubh�X   AS-MARr>  h�h�)�r?  (h�h�h�j%  h�]r@  (h�X   L1.valuerA  eu}rB  h�}rC  sbh.Nh�h�h�}rD  (h�Nh�h�)�rE  }rF  (h�h�)�rG  }rH  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}rI  h�Ksubh;h�h�}rJ  (h�Nh�Nh;h#h$K �rK  h&�rL  RrM  (KK	�rN  hX   M8rO  K K�rP  RrQ  (KhNNNJ����J����K }rR  (CnsrS  KKKtrT  �rU  trV  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7frW  trX  bhgNu�rY  RrZ  hgNu�r[  Rr\  h�Nh�h�h�}r]  (h�Nh�Nh;h#h$K �r^  h&�r_  Rr`  (KK
�ra  hX   M8rb  K K�rc  Rrd  (KhNNNJ����J����K }re  (Cnsrf  KKKtrg  �rh  tri  b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7frj  trk  bhgNu�rl  Rrm  h/h#h$K �rn  h&�ro  Rrp  (KK
�rq  h
�CP�+�����?Vӗ�?�-V<��?|\a`ޮ�?]J����?���=7�?���A�?;9���?�w�%�j�?%j�H?F�?rr  trs  bubh.Nh�Kh�h�h�h�hh
Cο��7*P?rt  �ru  Rrv  h�]rw  h�Kh/h#h$K �rx  h&�ry  Rrz  (KK
K�r{  h
�CP�+�����?Vӗ�?�-V<��?|\a`ޮ�?]J����?���=7�?���A�?;9���?�w�%�j�?%j�H?F�?r|  tr}  bh�X   cmler~  ubh4j  h;j  h�K h�h�)�r  (h�h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH4�����?h��5��?C/O�c��?z�zB�r�?<<kZ��?N9�
N��?�&t���?��v�ѹ�?�E�~>��?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KK	�r�  h
�CH "x±1{� �>�nx? �E[�?�c�3F�?@�c<�?@6ȸ�a�������ϙ�@D��Ó����g�?��r�  tr�  bu}r�  h�}r�  sbh,]r�  h�Kj  Kj  h#h$K �r�  h&�r�  Rr�  (KK�r�  h
�C�0�����?Ì�G�?r�  tr�  bj  h#h$K �r�  h&�r�  Rr�  (KKK�r�  h
�C ��&�>w]@$�ovW�$�ovW���6��R@r�  tr�  bh�Kh"j  ububj  hh
CM�`�s�?r�  �r�  Rr�  j"  G?��{��luj�  }r�  (hhh
CjB�B�a�?r�  �r�  Rr�  hh)�r�  }r�  (hhhh)�r�  }r�  (hK
hK	hKhK hh)�r�  }r�  (h"h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�CH���b@�?O�~:	�?�.(��4�?C�73Ƙ�?ؘ�P^�?:��F�?�Ȉ��?���Ho��?.�Jޖ��?r�  tr�  bhK	hKhK h,]r�  (h.h/h0h1h2h3eh4h#h$K �r�  h&�r�  Rr�  (KK	K�r�  h
�C�      �?b#2֯��      �?���b@�?      �?O�~:	�?      �?�.(��4�?      �?C�73Ƙ�?      �?ؘ�P^�?      �?:��F�?      �?�Ȉ��?      �?���Ho��?r�  tr�  bh;h<)�r�  }r�  (h?h@�  E�U7fNN�r�  Rr�  hK hCh@�  �F�K�NN�r�  Rr�  hFNhGhH)�r�  }r�  (hKhL)�r�  (]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a]r�  h#h$K �r�  h&�r�  Rr�  (KK
�r�  h
�CPb#2֯�����b@�?O�~:	�?�.(��4�?C�73Ƙ�?ؘ�P^�?:��F�?�Ȉ��?���Ho��?.�Jޖ��?r�  tr�  ba]r�  hOhP}r�  (h;h#h$K �r�  h&�r�  Rr�  (KK
�r�  hX�]r�  (h\h]h^h_h`hahbhchdheetr�  bhgNu�r�  Rr�  a}r�  h|}r�  (h~]r�  }r�  (h�j�  h�h�K K
K�r�  Rr�  uah�j�  ustr�  bh�h�h�h�hgh�ubh�X   AS-MARr�  h�h�)�r�  (h�h�h�j�  h�]r�  (h�X   L1.valuer�  eu}r�  h�}r�  sbh.Nh�h�h�}r�  (h�Nh�h�)�r�  }r�  (h�h�)�r�  }r�  (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�  h�Ksubh;h�h�}r�  (h�Nh�Nh;h#h$K �r�  h&�r�  Rr�  (KK	�r�  hX   M8r�  K K�r�  Rr�  (KhNNNJ����J����K }r�  (Cnsr�  KKKtr�  �r�  tr�  b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�  tr�  bhgNu�r�  Rr�  hgNu�r�  Rr�  h�Nh�h�h�}r�  (h�Nh�Nh;h#h$K �r    h&�r   Rr   (KK
�r   hX   M8r   K K�r   Rr   (KhNNNJ����J����K }r   (Cnsr   KKKtr	   �r
   tr   b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr   tr   bhgNu�r   Rr   h/h#h$K �r   h&�r   Rr   (KK
�r   h
�CPb#2֯�����b@�?O�~:	�?�.(��4�?C�73Ƙ�?ؘ�P^�?:��F�?�Ȉ��?���Ho��?.�Jޖ��?r   tr   bubh.Nh�Kh�h�h�h�hh
Cz��/��W?r   �r   Rr   h�]r   h�Kh/h#h$K �r   h&�r   Rr   (KK
K�r   h
�CPb#2֯�����b@�?O�~:	�?�.(��4�?C�73Ƙ�?ؘ�P^�?:��F�?�Ȉ��?���Ho��?.�Jޖ��?r   tr   bh�X   cmler    ubh4j�  h;j�  h�K h�h�)�r!   (h�h#h$K �r"   h&�r#   Rr$   (KK	�r%   h
�CH�,�ri��?ξ�60��?3b�a�?�/�o��?��,�8�?<.�����?FH 7�5�?��N�/�?wl�g�?r&   tr'   bj  h#h$K �r(   h&�r)   Rr*   (KK	�r+   h
�CH<�����?�~��1���0�?)��w?��@�Pu���u���r��/�����?("^�Y�?_AT�$�?���;�x?r,   tr-   bu}r.   h�}r/   sbh,]r0   h�Kj  Kj  h#h$K �r1   h&�r2   Rr3   (KK�r4   h
�C�}z�?��"����?r5   tr6   bj  h#h$K �r7   h&�r8   Rr9   (KKK�r:   h
�C _Ch#�?^�8h�2�^�8h�2�*h�+P$@r;   tr<   bh�Kh"j�  ububj  hh
C�X�L�۩?r=   �r>   Rr?   j"  G?�A����uh}r@   (hhh
C���Q�?rA   �rB   RrC   hh)�rD   }rE   (hhhh)�rF   }rG   (hK
hK	hKhK hh)�rH   }rI   (h"h#h$K �rJ   h&�rK   RrL   (KK	K�rM   h
�CH�[�J|�?�T��<pv?0���$��Y�i,X�������@��Pa�B���.�~�(��\ժ�-���t��*��rN   trO   bhK	hKhK h,]rP   (h.h/h0h1h2h3eh4h#h$K �rQ   h&�rR   RrS   (KK	K�rT   h
�C�      �?����ܳ?      �?�[�J|�?      �?�T��<pv?      �?0���$��      �?Y�i,X���      �?����@��      �?Pa�B���      �?.�~�(��      �?\ժ�-��rU   trV   bh;h<)�rW   }rX   (h?h@�  E�U7fNN�rY   RrZ   hK hCh@�  �F�K�NN�r[   Rr\   hFNhGhH)�r]   }r^   (hKhL)�r_   (]r`   hOhP}ra   (h;h#h$K �rb   h&�rc   Rrd   (KK
�re   hX�]rf   (h\h]h^h_h`hahbhchdheetrg   bhgNu�rh   Rri   a]rj   h#h$K �rk   h&�rl   Rrm   (KK
�rn   h
�CP����ܳ?�[�J|�?�T��<pv?0���$��Y�i,X�������@��Pa�B���.�~�(��\ժ�-���t��*��ro   trp   ba]rq   hOhP}rr   (h;h#h$K �rs   h&�rt   Rru   (KK
�rv   hX�]rw   (h\h]h^h_h`hahbhchdheetrx   bhgNu�ry   Rrz   a}r{   h|}r|   (h~]r}   }r~   (h�jm   h�h�K K
K�r   Rr�   uah�j`   ustr�   bh�h�h�h�hgh�ubh�X   AS-MARr�   h�h�)�r�   (h�h�h�ji   h�]r�   (h�X   L1.valuer�   eu}r�   h�}r�   sbh.Nh�h�h�}r�   (h�Nh�h�)�r�   }r�   (h�h�)�r�   }r�   (h�K h�K h�Nh�Nh�Nh�K h�Kh�K h�Nh�Nh�K h�K h�K h�Nh�Nh�K h�K ubh��h�Kh��h�Kh�}r�   h�Ksubh;h�h�}r�   (h�Nh�Nh;h#h$K �r�   h&�r�   Rr�   (KK	�r�   hX   M8r�   K K�r�   Rr�   (KhNNNJ����J����K }r�   (Cnsr�   KKKtr�   �r�   tr�   b�CH  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�   tr�   bhgNu�r�   Rr�   hgNu�r�   Rr�   h�Nh�h�h�}r�   (h�Nh�Nh;h#h$K �r�   h&�r�   Rr�   (KK
�r�   hX   M8r�   K K�r�   Rr�   (KhNNNJ����J����K }r�   (Cnsr�   KKKtr�   �r�   tr�   b�CP  ��Au  �F�K�  2tfUU  ա9_�  �`��5  j�t��  �G�  ��Յ  ���-�  E�U7fr�   tr�   bhgNu�r�   Rr�   h/h#h$K �r�   h&�r�   Rr�   (KK
�r�   h
�CP����ܳ?�[�J|�?�T��<pv?0���$��Y�i,X�������@��Pa�B���.�~�(��\ժ�-���t��*��r�   tr�   bubh.Nh�Kh�h�h�h�hh
CIS�t�R?r�   �r�   Rr�   h�]r�   h�Kh/h#h$K �r�   h&�r�   Rr�   (KK
K�r�   h
�CP����ܳ?�[�J|�?�T��<pv?0���$��Y�i,X�������@��Pa�B���.�~�(��\ժ�-���t��*��r�   tr�   bh�X   cmler�   ubh4jS   h;jW   h�K h�h�)�r�   (h�h#h$K �r�   h&�r�   Rr�   (KK	�r�   h
�CH�����ق?�3�X���T�}���vYd牤�k2��!������'����������'|���7i�g���r�   tr�   bj  h#h$K �r�   h&�r�   Rr�   (KK	�r�   h
�CH��n�O�?�,��g��?c}��(�?d����=��0X=ux?�B�,֏?���{��?�)_���t? �V@���r�   tr�   bu}r�   h�}r�   sbh,]r�   h�Kj  Kj  h#h$K �r�   h&�r�   Rr�   (KK�r�   h
�C�a�����4���?r�   tr�   bj  h#h$K �r�   h&�r�   Rr�   (KKK�r�   h
�C �{�g{�?����y�?����y�?&�����;@r�   tr�   bh�Kh"jL   ububj  hh
C��>�mL�?r�   �r�   Rr�   j"  G��M�*\uuu.