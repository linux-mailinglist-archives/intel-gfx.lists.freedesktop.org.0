Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D904EEA99
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 21:03:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96523891DD;
	Mon, 29 Apr 2019 19:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2D19C891DD;
 Mon, 29 Apr 2019 19:03:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25C7BA0091;
 Mon, 29 Apr 2019 19:03:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 29 Apr 2019 19:03:24 -0000
Message-ID: <20190429190324.31949.67805@emeril.freedesktop.org>
References: <20190429142253.15882-1-jani.nikula@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190429142253.15882-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915/csr=3A_alpha=5Fsupport_doesn=27t_depend_on_csr_or_vice_ver?=
 =?utf-8?q?sa?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvY3NyOiBhbHBoYV9zdXBwb3J0
IGRvZXNuJ3QgZGVwZW5kIG9uIGNzciBvciB2aWNlIHZlcnNhClVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MDA2Mi8KU3RhdGUgOiBmYWlsdXJlCgo9PSBT
dW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV82MDEyX2Z1bGwgLT4g
UGF0Y2h3b3JrXzEyODk2X2Z1bGwKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqRkFJTFVSRSoqCgogIFNlcmlv
dXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xMjg5Nl9mdWxsIGFic29s
dXRlbHkgbmVlZCB0byBiZQogIHZlcmlmaWVkIG1hbnVhbGx5LgogIAogIElmIHlvdSB0aGluayB0
aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcwog
IGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEyODk2X2Z1bGwsIHBsZWFzZSBub3RpZnkgeW91ciBi
dWcgdGVhbSB0byBhbGxvdyB0aGVtCiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2Rl
LCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgogIAoKUG9zc2libGUg
bmV3IGlzc3VlcwotLS0tLS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNo
YW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEyODk2X2Z1
bGw6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMK
CiAgKiBpZ3RAZ2VtX2N0eF9zd2l0Y2hAYmFzaWMtYWxsLWhlYXZ5OgogICAgLSBzaGFyZC1za2w6
ICAgICAgICAgIE5PVFJVTiAtPiBbSU5DT01QTEVURV1bMV0gKzEgc2ltaWxhciBpc3N1ZQogICBb
MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEy
ODk2L3NoYXJkLXNrbDgvaWd0QGdlbV9jdHhfc3dpdGNoQGJhc2ljLWFsbC1oZWF2eS5odG1sCgog
ICogaWd0QGdlbV9mZW5jZV90aHJhc2hAYm8td3JpdGUtdmVyaWZ5LXRocmVhZGVkLXk6CiAgICAt
IHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzJdIC0+IFtJTkNPTVBMRVRFXVszXSArNiBzaW1p
bGFyIGlzc3VlcwogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzYwMTIvc2hhcmQtc2tsOS9pZ3RAZ2VtX2ZlbmNlX3RocmFzaEBiby13cml0ZS12
ZXJpZnktdGhyZWFkZWQteS5odG1sCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4OTYvc2hhcmQtc2tsMi9pZ3RAZ2VtX2ZlbmNlX3Ro
cmFzaEBiby13cml0ZS12ZXJpZnktdGhyZWFkZWQteS5odG1sCgogIAojIyMjIFdhcm5pbmdzICMj
IyMKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1oYW5nLWJzZDE6CiAgICAtIHNo
YXJkLXNrbDogICAgICAgICAgW1NLSVBdWzRdIChbZmRvIzEwOTI3MV0pIC0+IFtJTkNPTVBMRVRF
XVs1XQogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzYwMTIvc2hhcmQtc2tsMy9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1oYW5nLWJz
ZDEuaHRtbAogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEyODk2L3NoYXJkLXNrbDMvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQt
aGFuZy1ic2QxLmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUg
dGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzEyODk2X2Z1bGwgdGhhdCBjb21lIGZyb20g
a25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMK
CiAgKiBpZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXNfZGlzcGxheV9vZmY6CiAgICAt
IHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzZdIC0+IFtJTkNPTVBMRVRFXVs3XSAoW2ZkbyMx
MDQxMDhdKQogICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzYwMTIvc2hhcmQtc2tsNy9pZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXNf
ZGlzcGxheV9vZmYuaHRtbAogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEyODk2L3NoYXJkLXNrbDUvaWd0QGRlYnVnZnNfdGVzdEByZWFk
X2FsbF9lbnRyaWVzX2Rpc3BsYXlfb2ZmLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfYXdhaXRAd2lk
ZS1hbGw6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzhdIC0+IFtJTkNPTVBMRVRF
XVs5XSAoW2ZkbyMxMDc3MTNdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFs4XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxMi9zaGFyZC1pY2xiMi9pZ3RA
Z2VtX2V4ZWNfYXdhaXRAd2lkZS1hbGwuaHRtbAogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODk2L3NoYXJkLWljbGIzL2lndEBnZW1f
ZXhlY19hd2FpdEB3aWRlLWFsbC5odG1sCgogICogaWd0QGdlbV9leGVjX2JsdEBjb2xkLW1pbjoK
ICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbUEFTU11bMTBdIC0+IFtJTkNPTVBMRVRFXVsxMV0g
KFtmZG8jMTA1NDExXSkKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjAxMi9zaGFyZC1zbmI1L2lndEBnZW1fZXhlY19ibHRAY29sZC1taW4u
aHRtbAogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMjg5Ni9zaGFyZC1zbmIxL2lndEBnZW1fZXhlY19ibHRAY29sZC1taW4uaHRtbAoK
ICAqIGlndEBpOTE1X3BtX3JwbUBpMmM6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1Nd
WzEyXSAtPiBbRE1FU0ctV0FSTl1bMTNdIChbZmRvIzEwOTk4Ml0pCiAgIFsxMl06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTIvc2hhcmQtaWNsYjUv
aWd0QGk5MTVfcG1fcnBtQGkyYy5odG1sCiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODk2L3NoYXJkLWljbGIyL2lndEBpOTE1X3Bt
X3JwbUBpMmMuaHRtbAoKICAqIGlndEBrbXNfZHJhd19jcmNAZHJhdy1tZXRob2QteHJnYjIxMDEw
MTAtbW1hcC13Yy15dGlsZWQ6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzE0XSAt
PiBbRkFJTF1bMTVdIChbZmRvIzEwMzE4NF0gLyBbZmRvIzEwMzIzMl0pCiAgIFsxNF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTIvc2hhcmQtc2ts
OC9pZ3RAa21zX2RyYXdfY3JjQGRyYXctbWV0aG9kLXhyZ2IyMTAxMDEwLW1tYXAtd2MteXRpbGVk
Lmh0bWwKICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTI4OTYvc2hhcmQtc2tsMTAvaWd0QGttc19kcmF3X2NyY0BkcmF3LW1ldGhvZC14
cmdiMjEwMTAxMC1tbWFwLXdjLXl0aWxlZC5odG1sCgogICogaWd0QGttc19mbGlwQGZsaXAtdnMt
bW9kZXNldC12cy1oYW5nLWludGVycnVwdGlibGU6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAg
W1BBU1NdWzE2XSAtPiBbSU5DT01QTEVURV1bMTddIChbZmRvIzEwMzM1OV0gLyBbay5vcmcjMTk4
MTMzXSkgKzEgc2ltaWxhciBpc3N1ZQogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLWdsazkvaWd0QGttc19mbGlwQGZsaXAt
dnMtbW9kZXNldC12cy1oYW5nLWludGVycnVwdGlibGUuaHRtbAogICBbMTddOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjg5Ni9zaGFyZC1nbGsx
L2lndEBrbXNfZmxpcEBmbGlwLXZzLW1vZGVzZXQtdnMtaGFuZy1pbnRlcnJ1cHRpYmxlLmh0bWwK
CiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGlibGU6CiAgICAtIHNo
YXJkLXNrbDogICAgICAgICAgW1BBU1NdWzE4XSAtPiBbSU5DT01QTEVURV1bMTldIChbZmRvIzEw
OTUwN10pCiAgIFsxOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzYwMTIvc2hhcmQtc2tsMS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVy
cnVwdGlibGUuaHRtbAogICBbMTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMjg5Ni9zaGFyZC1za2w0L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1
c3BlbmQtaW50ZXJydXB0aWJsZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2lu
Z0BmYmMtcmdiNTY1LWRyYXctcHdyaXRlOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNT
XVsyMF0gLT4gW0ZBSUxdWzIxXSAoW2ZkbyMxMDMxNjddKSArMiBzaW1pbGFyIGlzc3VlcwogICBb
MjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEy
L3NoYXJkLWljbGI4L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXJnYjU2NS1kcmF3
LXB3cml0ZS5odG1sCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEyODk2L3NoYXJkLWljbGI2L2lndEBrbXNfZnJvbnRidWZmZXJfdHJh
Y2tpbmdAZmJjLXJnYjU2NS1kcmF3LXB3cml0ZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZl
cl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4taW5kZmItbXNmbGlwLWJsdDoKICAgIC0gc2hh
cmQtc2tsOiAgICAgICAgICBbUEFTU11bMjJdIC0+IFtJTkNPTVBMRVRFXVsyM10gKFtmZG8jMTA2
OTc4XSkKICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjAxMi9zaGFyZC1za2w4L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNy
LTFwLXByaW1zY3JuLWluZGZiLW1zZmxpcC1ibHQuaHRtbAogICBbMjNdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjg5Ni9zaGFyZC1za2w2L2ln
dEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWluZGZiLW1zZmxp
cC1ibHQuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXBy
aW1zY3JuLXNwci1pbmRmYi1kcmF3LW1tYXAtY3B1OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAg
IFtQQVNTXVsyNF0gLT4gW0lOQ09NUExFVEVdWzI1XSAoW2ZkbyMxMDY5NzhdIC8gW2ZkbyMxMDc3
MTNdKQogICBbMjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82MDEyL3NoYXJkLWljbGIzL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNy
LTFwLXByaW1zY3JuLXNwci1pbmRmYi1kcmF3LW1tYXAtY3B1Lmh0bWwKICAgWzI1XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4OTYvc2hhcmQt
aWNsYjIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tc3By
LWluZGZiLWRyYXctbW1hcC1jcHUuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRA
cGlwZS1hLWNvbnN0YW50LWFscGhhLW1pbjoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFT
U11bMjZdIC0+IFtGQUlMXVsyN10gKFtmZG8jMTA4MTQ1XSkKICAgWzI2XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxMi9zaGFyZC1za2w1L2lndEBr
bXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNvbnN0YW50LWFscGhhLW1pbi5odG1sCiAgIFsy
N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEy
ODk2L3NoYXJkLXNrbDEwL2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNvbnN0YW50
LWFscGhhLW1pbi5odG1sCgogICogaWd0QGttc19wbGFuZV9jdXJzb3JAcGlwZS1hLXByaW1hcnkt
c2l6ZS0yNTY6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW1BBU1NdWzI4XSAtPiBbSU5DT01Q
TEVURV1bMjldIChbZmRvIzEwMzU0MF0pICszIHNpbWlsYXIgaXNzdWVzCiAgIFsyOF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTIvc2hhcmQtaHN3
NS9pZ3RAa21zX3BsYW5lX2N1cnNvckBwaXBlLWEtcHJpbWFyeS1zaXplLTI1Ni5odG1sCiAgIFsy
OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEy
ODk2L3NoYXJkLWhzdzEvaWd0QGttc19wbGFuZV9jdXJzb3JAcGlwZS1hLXByaW1hcnktc2l6ZS0y
NTYuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxpbmcteDoKICAgIC0g
c2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMzBdIC0+IFtGQUlMXVszMV0gKFtmZG8jMTAzMTY2
XSkKICAgWzMwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjAxMi9zaGFyZC1pY2xiOC9pZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBlLWEtdGlsaW5nLXgu
aHRtbAogICBbMzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMjg5Ni9zaGFyZC1pY2xiNS9pZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBlLWEtdGls
aW5nLXguaHRtbAoKICAqIGlndEBrbXNfcHNyQHBzcjJfY3Vyc29yX21tYXBfY3B1OgogICAgLSBz
aGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVszMl0gLT4gW1NLSVBdWzMzXSAoW2ZkbyMxMDk0NDFd
KSArMiBzaW1pbGFyIGlzc3VlcwogICBbMzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfY3Vy
c29yX21tYXBfY3B1Lmh0bWwKICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4OTYvc2hhcmQtaWNsYjcvaWd0QGttc19wc3JAcHNyMl9j
dXJzb3JfbW1hcF9jcHUuaHRtbAoKICAqIGlndEBrbXNfdmJsYW5rQHBpcGUtYy10cy1jb250aW51
YXRpb24tc3VzcGVuZDoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bMzRdIC0+IFtE
TUVTRy1XQVJOXVszNV0gKFtmZG8jMTA4NTY2XSkgKzUgc2ltaWxhciBpc3N1ZXMKICAgWzM0XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxMi9zaGFy
ZC1hcGw1L2lndEBrbXNfdmJsYW5rQHBpcGUtYy10cy1jb250aW51YXRpb24tc3VzcGVuZC5odG1s
CiAgIFszNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEyODk2L3NoYXJkLWFwbDEvaWd0QGttc192YmxhbmtAcGlwZS1jLXRzLWNvbnRpbnVhdGlv
bi1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAcGVyZl9wbXVAcmM2OgogICAgLSBzaGFyZC1rYmw6ICAg
ICAgICAgIFtQQVNTXVszNl0gLT4gW1NLSVBdWzM3XSAoW2ZkbyMxMDkyNzFdKQogICBbMzZdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJk
LWtibDMvaWd0QHBlcmZfcG11QHJjNi5odG1sCiAgIFszN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODk2L3NoYXJkLWtibDEvaWd0QHBlcmZf
cG11QHJjNi5odG1sCgogICogaWd0QHRvb2xzX3Rlc3RAc3lzZnNfbDNfcGFyaXR5OgogICAgLSBz
aGFyZC1oc3c6ICAgICAgICAgIFtQQVNTXVszOF0gLT4gW1NLSVBdWzM5XSAoW2ZkbyMxMDkyNzFd
KQogICBbMzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82MDEyL3NoYXJkLWhzdzEvaWd0QHRvb2xzX3Rlc3RAc3lzZnNfbDNfcGFyaXR5Lmh0bWwKICAg
WzM5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTI4OTYvc2hhcmQtaHN3NC9pZ3RAdG9vbHNfdGVzdEBzeXNmc19sM19wYXJpdHkuaHRtbAoKICAK
IyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGk5MTVfc3VzcGVuZEBkZWJ1Z2ZzLXJl
YWRlcjoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bNDBdIChbZmRvIzEw
ODU2Nl0pIC0+IFtQQVNTXVs0MV0gKzYgc2ltaWxhciBpc3N1ZXMKICAgWzQwXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxMi9zaGFyZC1hcGwzL2ln
dEBpOTE1X3N1c3BlbmRAZGVidWdmcy1yZWFkZXIuaHRtbAogICBbNDFdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjg5Ni9zaGFyZC1hcGwxL2ln
dEBpOTE1X3N1c3BlbmRAZGVidWdmcy1yZWFkZXIuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2xl
Z2FjeUAyeC1ub25ibG9ja2luZy1tb2Rlc2V0LXZzLWN1cnNvci1hdG9taWM6CiAgICAtIHNoYXJk
LWdsazogICAgICAgICAgW0ZBSUxdWzQyXSAoW2ZkbyMxMDY1MDldIC8gW2ZkbyMxMDc0MDldKSAt
PiBbUEFTU11bNDNdCiAgIFs0Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzYwMTIvc2hhcmQtZ2xrMi9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAMngtbm9u
YmxvY2tpbmctbW9kZXNldC12cy1jdXJzb3ItYXRvbWljLmh0bWwKICAgWzQzXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4OTYvc2hhcmQtZ2xr
OC9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAMngtbm9uYmxvY2tpbmctbW9kZXNldC12cy1jdXJzb3It
YXRvbWljLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAbW9kZXNldC12cy12YmxhbmstcmFjZToKICAg
IC0gc2hhcmQtZ2xrOiAgICAgICAgICBbRkFJTF1bNDRdIChbZmRvIzEwMzA2MF0pIC0+IFtQQVNT
XVs0NV0KICAgWzQ0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjAxMi9zaGFyZC1nbGs4L2lndEBrbXNfZmxpcEBtb2Rlc2V0LXZzLXZibGFuay1yYWNl
Lmh0bWwKICAgWzQ1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTI4OTYvc2hhcmQtZ2xrNS9pZ3RAa21zX2ZsaXBAbW9kZXNldC12cy12Ymxhbmst
cmFjZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtb2Zmc2Ny
ZW4tcHJpLXNocmZiLWRyYXctcmVuZGVyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlM
XVs0Nl0gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzQ3XSArMyBzaW1pbGFyIGlzc3VlcwogICBb
NDZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEy
L3NoYXJkLWljbGIxL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLW9mZnNjcmVu
LXByaS1zaHJmYi1kcmF3LXJlbmRlci5odG1sCiAgIFs0N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODk2L3NoYXJkLWljbGI0L2lndEBrbXNf
ZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLW9mZnNjcmVuLXByaS1zaHJmYi1kcmF3LXJlbmRl
ci5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtb2Zmc2Ny
ZW4tcHJpLXNocmZiLWRyYXctcHdyaXRlOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlM
XVs0OF0gKFtmZG8jMTA4MDQwXSkgLT4gW1BBU1NdWzQ5XQogICBbNDhdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLXNrbDEwL2lndEBr
bXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLW9mZnNjcmVuLXByaS1zaHJmYi1kcmF3
LXB3cml0ZS5odG1sCiAgIFs0OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEyODk2L3NoYXJkLXNrbDUvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFj
a2luZ0BmYmNwc3ItMXAtb2Zmc2NyZW4tcHJpLXNocmZiLWRyYXctcHdyaXRlLmh0bWwKCiAgKiBp
Z3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci1zdXNwZW5kOgogICAgLSBzaGFyZC1p
Y2xiOiAgICAgICAgIFtJTkNPTVBMRVRFXVs1MF0gKFtmZG8jMTA2OTc4XSAvIFtmZG8jMTA3NzEz
XSkgLT4gW1BBU1NdWzUxXQogICBbNTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLWljbGI0L2lndEBrbXNfZnJvbnRidWZmZXJfdHJh
Y2tpbmdAZmJjcHNyLXN1c3BlbmQuaHRtbAogICBbNTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjg5Ni9zaGFyZC1pY2xiMS9pZ3RAa21zX2Zy
b250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5l
QHBpeGVsLWZvcm1hdC1waXBlLWItcGxhbmVzLXNvdXJjZS1jbGFtcGluZzoKICAgIC0gc2hhcmQt
Z2xrOiAgICAgICAgICBbU0tJUF1bNTJdIChbZmRvIzEwOTI3MV0pIC0+IFtQQVNTXVs1M10gKzEg
c2ltaWxhciBpc3N1ZQogICBbNTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLWdsazIvaWd0QGttc19wbGFuZUBwaXhlbC1mb3JtYXQt
cGlwZS1iLXBsYW5lcy1zb3VyY2UtY2xhbXBpbmcuaHRtbAogICBbNTNdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjg5Ni9zaGFyZC1nbGs5L2ln
dEBrbXNfcGxhbmVAcGl4ZWwtZm9ybWF0LXBpcGUtYi1wbGFuZXMtc291cmNlLWNsYW1waW5nLmh0
bWwKCiAgKiBpZ3RAa21zX3BsYW5lX3NjYWxpbmdAcGlwZS1jLXNjYWxlci13aXRoLXJvdGF0aW9u
OgogICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtTS0lQXVs1NF0gKFtmZG8jMTA5MjcxXSAvIFtm
ZG8jMTA5Mjc4XSkgLT4gW1BBU1NdWzU1XSArMSBzaW1pbGFyIGlzc3VlCiAgIFs1NF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTIvc2hhcmQtZ2xr
Mi9pZ3RAa21zX3BsYW5lX3NjYWxpbmdAcGlwZS1jLXNjYWxlci13aXRoLXJvdGF0aW9uLmh0bWwK
ICAgWzU1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTI4OTYvc2hhcmQtZ2xrOS9pZ3RAa21zX3BsYW5lX3NjYWxpbmdAcGlwZS1jLXNjYWxlci13
aXRoLXJvdGF0aW9uLmh0bWwKCiAgKiBpZ3RAa21zX3BzcjJfc3VAcGFnZV9mbGlwOgogICAgLSBz
aGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs1Nl0gKFtmZG8jMTA5NjQyXSkgLT4gW1BBU1NdWzU3
XQogICBbNTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82MDEyL3NoYXJkLWljbGI4L2lndEBrbXNfcHNyMl9zdUBwYWdlX2ZsaXAuaHRtbAogICBbNTdd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjg5
Ni9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzcjJfc3VAcGFnZV9mbGlwLmh0bWwKCiAgKiBpZ3RAa21z
X3BzckBwc3IyX3Nwcml0ZV9wbGFuZV9tb3ZlOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtT
S0lQXVs1OF0gKFtmZG8jMTA5NDQxXSkgLT4gW1BBU1NdWzU5XSArMSBzaW1pbGFyIGlzc3VlCiAg
IFs1OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYw
MTIvc2hhcmQtaWNsYjEvaWd0QGttc19wc3JAcHNyMl9zcHJpdGVfcGxhbmVfbW92ZS5odG1sCiAg
IFs1OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEyODk2L3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfc3ByaXRlX3BsYW5lX21vdmUuaHRt
bAoKICAqIGlndEB0b29sc190ZXN0QHRvb2xzX3Rlc3Q6CiAgICAtIHNoYXJkLWljbGI6ICAgICAg
ICAgW1NLSVBdWzYwXSAoW2ZkbyMxMDkzNTJdKSAtPiBbUEFTU11bNjFdCiAgIFs2MF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTIvc2hhcmQtaWNs
YjgvaWd0QHRvb2xzX3Rlc3RAdG9vbHNfdGVzdC5odG1sCiAgIFs2MV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODk2L3NoYXJkLWljbGI2L2ln
dEB0b29sc190ZXN0QHRvb2xzX3Rlc3QuaHRtbAoKICAKIyMjIyBXYXJuaW5ncyAjIyMjCgogICog
aWd0QGttc19idXN5QGJhc2ljLWZsaXAtZjoKICAgIC0gc2hhcmQtZ2xrOiAgICAgICAgICBbU0tJ
UF1bNjJdIChbZmRvIzEwOTI3MV0gLyBbZmRvIzEwOTI3OF0pIC0+IFtJTkNPTVBMRVRFXVs2M10g
KFtmZG8jMTAzMzU5XSAvIFtrLm9yZyMxOTgxMzNdKQogICBbNjJdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLWdsazMvaWd0QGttc19i
dXN5QGJhc2ljLWZsaXAtZi5odG1sCiAgIFs2M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODk2L3NoYXJkLWdsazgvaWd0QGttc19idXN5QGJh
c2ljLWZsaXAtZi5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAt
cHJpbXNjcm4tc2hyZmItcGxmbGlwLWJsdDoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJ
TF1bNjRdIChbZmRvIzEwODA0MF0pIC0+IFtGQUlMXVs2NV0gKFtmZG8jMTAzMTY3XSkKICAgWzY0
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxMi9z
aGFyZC1za2w4L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLXNo
cmZiLXBsZmxpcC1ibHQuaHRtbAogICBbNjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjg5Ni9zaGFyZC1za2wxMC9pZ3RAa21zX2Zyb250YnVm
ZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1zaHJmYi1wbGZsaXAtYmx0Lmh0bWwKCiAgKiBp
Z3RAa21zX3BpcGVfY3JjX2Jhc2ljQHN1c3BlbmQtcmVhZC1jcmMtcGlwZS1hOgogICAgLSBzaGFy
ZC1za2w6ICAgICAgICAgIFtGQUlMXVs2Nl0gKFtmZG8jMTAzMTkxXSkgLT4gW0lOQ09NUExFVEVd
WzY3XSAoW2ZkbyMxMDQxMDhdKQogICBbNjZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLXNrbDEwL2lndEBrbXNfcGlwZV9jcmNfYmFz
aWNAc3VzcGVuZC1yZWFkLWNyYy1waXBlLWEuaHRtbAogICBbNjddOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjg5Ni9zaGFyZC1za2w1L2lndEBr
bXNfcGlwZV9jcmNfYmFzaWNAc3VzcGVuZC1yZWFkLWNyYy1waXBlLWEuaHRtbAoKICAKICBbZmRv
IzEwMzA2MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
MzA2MAogIFtmZG8jMTAzMTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTAzMTY2CiAgW2ZkbyMxMDMxNjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxNjcKICBbZmRvIzEwMzE4NF06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzE4NAogIFtmZG8jMTAzMTkxXTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTkxCiAgW2ZkbyMx
MDMyMzJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMy
MzIKICBbZmRvIzEwMzM1OV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwMzM1OQogIFtmZG8jMTAzNTQwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTAzNTQwCiAgW2ZkbyMxMDQxMDhdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDQxMDgKICBbZmRvIzEwNTQxMV06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTQxMQogIFtmZG8jMTA2
NTA5XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA2NTA5
CiAgW2ZkbyMxMDY5NzhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMDY5NzgKICBbZmRvIzEwNzQwOV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTEwNzQwOQogIFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDgwNDBdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgwNDAKICBbZmRvIzEwODE0
NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODE0NQog
IFtmZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTA4NTY2CiAgW2ZkbyMxMDkyNzFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDkyNzEKICBbZmRvIzEwOTI3OF06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3OAogIFtmZG8jMTA5MzUyXTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MzUyCiAgW2ZkbyMxMDk0NDFd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk0NDEKICBb
ZmRvIzEwOTUwN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTEwOTUwNwogIFtmZG8jMTA5NjQyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTA5NjQyCiAgW2ZkbyMxMDk5ODJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk5ODIKICBbay5vcmcjMTk4MTMzXTogaHR0cHM6Ly9i
dWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0xOTgxMzMKCgpQYXJ0aWNpcGF0aW5n
IGhvc3RzICgxMCAtPiAxMCkKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIE5vIGNo
YW5nZXMgaW4gcGFydGljaXBhdGluZyBob3N0cwoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0t
LQoKICAqIExpbnV4OiBDSV9EUk1fNjAxMiAtPiBQYXRjaHdvcmtfMTI4OTYKCiAgQ0lfRFJNXzYw
MTI6IGU0ODgyZjE5OTE1N2UzZmI3M2QxNzkxMzUyOTMxMDk2ZjZlY2ZjZmQgQCBnaXQ6Ly9hbm9u
Z2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNDk2ODogY2FlZDI1MTk5MGYz
NWJmZTQ1MzY4ZjgwMzk4MDA3MWE3M2UzNjMxNSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Au
b3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xMjg5NjogMmU4Mjc3ZTFl
ZTJjYjA5ZDBiODFiMzczZWYzYjhhMjYwY2JmZjQxNyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0
b3Aub3JnL2dmeC1jaS9saW51eAogIHBpZ2xpdF80NTA5OiBmZGM1YTRjYTExMTI0YWI4NDEzYzc5
ODg4OTZlZWM0Yzk3MzM2Njk0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvcGlnbGl0
Cgo9PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4OTYvCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
