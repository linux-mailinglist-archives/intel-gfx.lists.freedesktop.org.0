Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C749A1AF
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 23:09:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74B0A6EB32;
	Thu, 22 Aug 2019 21:09:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 370946EB18;
 Thu, 22 Aug 2019 21:09:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 30670A47DB;
 Thu, 22 Aug 2019 21:09:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 22 Aug 2019 21:09:25 -0000
Message-ID: <20190822210925.14425.53775@emeril.freedesktop.org>
References: <20190822060914.2671-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190822060914.2671-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5BCI=2C1/3=5D_drm/i915=3A_Track_ggtt_fence_re?=
 =?utf-8?q?servations_under_its_own_mutex_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
M10gZHJtL2k5MTU6IFRyYWNrIGdndHQgZmVuY2UgcmVzZXJ2YXRpb25zIHVuZGVyIGl0cyBvd24g
bXV0ZXggKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy82NTU5MS8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0g
Y2hhbmdlcyBmcm9tIENJX0RSTV82NzYwX2Z1bGwgLT4gUGF0Y2h3b3JrXzE0MTM1X2Z1bGwKPT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKU3VtbWFy
eQotLS0tLS0tCgogICoqRkFJTFVSRSoqCgogIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWlu
ZyB3aXRoIFBhdGNod29ya18xNDEzNV9mdWxsIGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlm
aWVkIG1hbnVhbGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZl
IG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3Jr
XzE0MTM1X2Z1bGwsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCiAg
dG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxz
ZSBwb3NpdGl2ZXMgaW4gQ0kuCgogIAoKUG9zc2libGUgbmV3IGlzc3VlcwotLS0tLS0tLS0tLS0t
LS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVu
IGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0MTM1X2Z1bGw6CgojIyMgSUdUIGNoYW5nZXMgIyMj
CgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBpZ3RAZ2VtX3NldF90aWxpbmdf
dnNfcHdyaXRlOgogICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtQQVNTXVsxXSAtPiBbRkFJTF1b
Ml0gKzEgc2ltaWxhciBpc3N1ZQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzY3NjAvc2hhcmQtZ2xrMi9pZ3RAZ2VtX3NldF90aWxpbmdfdnNf
cHdyaXRlLmh0bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDEzNS9zaGFyZC1nbGs0L2lndEBnZW1fc2V0X3RpbGluZ192c19wd3Jp
dGUuaHRtbAogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVszXSAtPiBbRkFJTF1bNF0K
ICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
NzYwL3NoYXJkLWFwbDMvaWd0QGdlbV9zZXRfdGlsaW5nX3ZzX3B3cml0ZS5odG1sCiAgIFs0XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMzUv
c2hhcmQtYXBsNi9pZ3RAZ2VtX3NldF90aWxpbmdfdnNfcHdyaXRlLmh0bWwKCiAgCktub3duIGlz
c3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3
b3JrXzE0MTM1X2Z1bGwgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFu
Z2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJA
c21va2U6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzVdIC0+IFtTS0lQXVs2XSAo
W2ZkbyMxMTA4NTRdKQogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY3NjAvc2hhcmQtaWNsYjQvaWd0QGdlbV9leGVjX2JhbGFuY2VyQHNtb2tl
Lmh0bWwKICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDEzNS9zaGFyZC1pY2xiNi9pZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAc21va2UuaHRt
bAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUBmaWZvLWJzZDoKICAgIC0gc2hhcmQtaWNsYjog
ICAgICAgICBbUEFTU11bN10gLT4gW1NLSVBdWzhdIChbZmRvIzExMTMyNV0pICsxIHNpbWlsYXIg
aXNzdWUKICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82NzYwL3NoYXJkLWljbGIzL2lndEBnZW1fZXhlY19zY2hlZHVsZUBmaWZvLWJzZC5odG1s
CiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQxMzUvc2hhcmQtaWNsYjEvaWd0QGdlbV9leGVjX3NjaGVkdWxlQGZpZm8tYnNkLmh0bWwK
CiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1xdWV1ZS1jaGFpbi1ic2QyOgogICAg
LSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVs5XSAtPiBbU0tJUF1bMTBdIChbZmRvIzEwOTI3
Nl0pICsxMiBzaW1pbGFyIGlzc3VlcwogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NjAvc2hhcmQtaWNsYjIvaWd0QGdlbV9leGVjX3NjaGVk
dWxlQHByZWVtcHQtcXVldWUtY2hhaW4tYnNkMi5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTM1L3NoYXJkLWljbGI2L2ln
dEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LXF1ZXVlLWNoYWluLWJzZDIuaHRtbAoKICAqIGln
dEBnZW1fc29mdHBpbkBub3JlbG9jLXMzOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNT
XVsxMV0gLT4gW0lOQ09NUExFVEVdWzEyXSAoW2ZkbyMxMDQxMDhdKQogICBbMTFdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzYwL3NoYXJkLXNrbDYv
aWd0QGdlbV9zb2Z0cGluQG5vcmVsb2MtczMuaHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEzNS9zaGFyZC1za2w2L2lndEBn
ZW1fc29mdHBpbkBub3JlbG9jLXMzLmh0bWwKCiAgKiBpZ3RAaTkxNV9zdXNwZW5kQHN5c2ZzLXJl
YWRlcjoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bMTNdIC0+IFtETUVTRy1XQVJO
XVsxNF0gKFtmZG8jMTA4NTY2XSkgKzUgc2ltaWxhciBpc3N1ZXMKICAgWzEzXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc2MC9zaGFyZC1hcGwyL2ln
dEBpOTE1X3N1c3BlbmRAc3lzZnMtcmVhZGVyLmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMzUvc2hhcmQtYXBsMi9pZ3RA
aTkxNV9zdXNwZW5kQHN5c2ZzLXJlYWRlci5odG1sCgogICogaWd0QGttc19jdXJzb3JfbGVnYWN5
QHBpcGUtYy1zaW5nbGUtbW92ZToKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bMTVd
IC0+IFtJTkNPTVBMRVRFXVsxNl0gKFtmZG8jMTAzOTI3XSkgKzIgc2ltaWxhciBpc3N1ZXMKICAg
WzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc2
MC9zaGFyZC1hcGw1L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBwaXBlLWMtc2luZ2xlLW1vdmUuaHRt
bAogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDEzNS9zaGFyZC1hcGw0L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBwaXBlLWMtc2luZ2xl
LW1vdmUuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLW9mZnNj
cmVuLXByaS1pbmRmYi1kcmF3LWJsdDoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11b
MTddIC0+IFtGQUlMXVsxOF0gKFtmZG8jMTA4MDQwXSkKICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc2MC9zaGFyZC1za2w0L2lndEBrbXNf
ZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLW9mZnNjcmVuLXByaS1pbmRmYi1kcmF3LWJsdC5o
dG1sCiAgIFsxOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0MTM1L3NoYXJkLXNrbDgvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMt
MXAtb2Zmc2NyZW4tcHJpLWluZGZiLWRyYXctYmx0Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVm
ZmVyX3RyYWNraW5nQGZiYy0xcC1vZmZzY3Jlbi1wcmktaW5kZmItZHJhdy1yZW5kZXI6CiAgICAt
IHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzE5XSAtPiBbRkFJTF1bMjBdIChbZmRvIzEwMzE2
N10pICsyIHNpbWlsYXIgaXNzdWVzCiAgIFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NjAvc2hhcmQtaWNsYjUvaWd0QGttc19mcm9udGJ1ZmZl
cl90cmFja2luZ0BmYmMtMXAtb2Zmc2NyZW4tcHJpLWluZGZiLWRyYXctcmVuZGVyLmh0bWwKICAg
WzIwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQxMzUvc2hhcmQtaWNsYjEvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtb2Zm
c2NyZW4tcHJpLWluZGZiLWRyYXctcmVuZGVyLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhh
X2JsZW5kQHBpcGUtYS1jb3ZlcmFnZS03ZWZjOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQ
QVNTXVsyMV0gLT4gW0ZBSUxdWzIyXSAoW2ZkbyMxMDgxNDVdKQogICBbMjFdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzYwL3NoYXJkLXNrbDQvaWd0
QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWEtY292ZXJhZ2UtN2VmYy5odG1sCiAgIFsyMl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTM1
L3NoYXJkLXNrbDgvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWEtY292ZXJhZ2UtN2Vm
Yy5odG1sCgogICogaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY292ZXJhZ2UtN2Vm
YzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMjNdIC0+IFtGQUlMXVsyNF0gKFtm
ZG8jMTA4MTQ1XSAvIFtmZG8jMTEwNDAzXSkgKzEgc2ltaWxhciBpc3N1ZQogICBbMjNdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzYwL3NoYXJkLXNr
bDQvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY292ZXJhZ2UtN2VmYy5odG1sCiAg
IFsyNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0MTM1L3NoYXJkLXNrbDkvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY292ZXJh
Z2UtN2VmYy5odG1sCgogICogaWd0QGttc19wbGFuZV9sb3dyZXNAcGlwZS1hLXRpbGluZy14Ogog
ICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsyNV0gLT4gW0ZBSUxdWzI2XSAoW2ZkbyMx
MDMxNjZdKQogICBbMjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82NzYwL3NoYXJkLWljbGI2L2lndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxp
bmcteC5odG1sCiAgIFsyNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0MTM1L3NoYXJkLWljbGI4L2lndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUt
YS10aWxpbmcteC5odG1sCgogICogaWd0QGttc19wc3JAcHNyMl9kcG1zOgogICAgLSBzaGFyZC1p
Y2xiOiAgICAgICAgIFtQQVNTXVsyN10gLT4gW1NLSVBdWzI4XSAoW2ZkbyMxMDk0NDFdKQogICBb
MjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzYw
L3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfZHBtcy5odG1sCiAgIFsyOF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTM1L3NoYXJkLWlj
bGI4L2lndEBrbXNfcHNyQHBzcjJfZHBtcy5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMj
IyMKCiAgKiBpZ3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtc3VzcGVuZDoKICAgIC0gc2hhcmQtc2tsOiAg
ICAgICAgICBbSU5DT01QTEVURV1bMjldIChbZmRvIzEwNDEwOF0pIC0+IFtQQVNTXVszMF0KICAg
WzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc2
MC9zaGFyZC1za2w5L2lndEBnZW1fZWlvQGluLWZsaWdodC1zdXNwZW5kLmh0bWwKICAgWzMwXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMzUv
c2hhcmQtc2tsOC9pZ3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtc3VzcGVuZC5odG1sCgogICogaWd0QGdl
bV9leGVjX3NjaGVkdWxlQHdpZGUtYnNkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQ
XVszMV0gKFtmZG8jMTExMzI1XSkgLT4gW1BBU1NdWzMyXSArNCBzaW1pbGFyIGlzc3VlcwogICBb
MzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzYw
L3NoYXJkLWljbGI0L2lndEBnZW1fZXhlY19zY2hlZHVsZUB3aWRlLWJzZC5odG1sCiAgIFszMl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTM1
L3NoYXJkLWljbGI3L2lndEBnZW1fZXhlY19zY2hlZHVsZUB3aWRlLWJzZC5odG1sCgogICogaWd0
QGdlbV90aWxlZF9zd2FwcGluZ0Bub24tdGhyZWFkZWQ6CiAgICAtIHNoYXJkLWhzdzogICAgICAg
ICAgW0RNRVNHLVdBUk5dWzMzXSAoW2ZkbyMxMDg2ODZdKSAtPiBbUEFTU11bMzRdCiAgIFszM106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NjAvc2hh
cmQtaHN3MS9pZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5vbi10aHJlYWRlZC5odG1sCiAgIFszNF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTM1
L3NoYXJkLWhzdzUvaWd0QGdlbV90aWxlZF9zd2FwcGluZ0Bub24tdGhyZWFkZWQuaHRtbAoKICAq
IGlndEBrbXNfY3Vyc29yX2xlZ2FjeUBsb25nLW5vbmJsb2NraW5nLW1vZGVzZXQtdnMtY3Vyc29y
LWF0b21pYzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bMzVdIChbZmRv
IzEwNTU0MV0pIC0+IFtQQVNTXVszNl0gKzEgc2ltaWxhciBpc3N1ZQogICBbMzVdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzYwL3NoYXJkLXNrbDkv
aWd0QGttc19jdXJzb3JfbGVnYWN5QGxvbmctbm9uYmxvY2tpbmctbW9kZXNldC12cy1jdXJzb3It
YXRvbWljLmh0bWwKICAgWzM2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQxMzUvc2hhcmQtc2tsMTAvaWd0QGttc19jdXJzb3JfbGVnYWN5QGxv
bmctbm9uYmxvY2tpbmctbW9kZXNldC12cy1jdXJzb3ItYXRvbWljLmh0bWwKCiAgKiBpZ3RAa21z
X2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlOgogICAgLSBzaGFyZC1z
a2w6ICAgICAgICAgIFtGQUlMXVszN10gKFtmZG8jMTA1MzYzXSkgLT4gW1BBU1NdWzM4XQogICBb
MzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzYw
L3NoYXJkLXNrbDIvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0
aWJsZS5odG1sCiAgIFszOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0MTM1L3NoYXJkLXNrbDUvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJl
ZC12YmxhbmstaW50ZXJydXB0aWJsZS5odG1sCgogICogaWd0QGttc19mbGlwQGZsaXAtdnMtc3Vz
cGVuZDoKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbSU5DT01QTEVURV1bMzldIChbZmRvIzEw
NTQxMV0pIC0+IFtQQVNTXVs0MF0KICAgWzM5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc2MC9zaGFyZC1zbmIxL2lndEBrbXNfZmxpcEBmbGlwLXZz
LXN1c3BlbmQuaHRtbAogICBbNDBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNDEzNS9zaGFyZC1zbmIyL2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1
c3BlbmQuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQ6
CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0RNRVNHLVdBUk5dWzQxXSAoW2ZkbyMxMDg1NjZd
KSAtPiBbUEFTU11bNDJdICszIHNpbWlsYXIgaXNzdWVzCiAgIFs0MV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NjAvc2hhcmQtYXBsOC9pZ3RAa21z
X2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1zdXNwZW5kLmh0bWwKICAgWzQyXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMzUvc2hhcmQtYXBs
NC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RA
a21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1wcmktaW5kZmItZHJh
dy1wd3JpdGU6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0ZBSUxdWzQzXSAoW2ZkbyMxMDMx
NjddKSAtPiBbUEFTU11bNDRdICs4IHNpbWlsYXIgaXNzdWVzCiAgIFs0M106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NjAvc2hhcmQtaWNsYjYvaWd0
QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tcHJpLWluZGZiLWRy
YXctcHdyaXRlLmh0bWwKICAgWzQ0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQxMzUvc2hhcmQtaWNsYjgvaWd0QGttc19mcm9udGJ1ZmZlcl90
cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tcHJpLWluZGZiLWRyYXctcHdyaXRlLmh0bWwKCiAg
KiBpZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYy1jb25zdGFudC1hbHBoYS1taW46CiAg
ICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzQ1XSAoW2ZkbyMxMDgxNDVdKSAtPiBbUEFT
U11bNDZdCiAgIFs0NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY3NjAvc2hhcmQtc2tsOS9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYy1j
b25zdGFudC1hbHBoYS1taW4uaHRtbAogICBbNDZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEzNS9zaGFyZC1za2wxMC9pZ3RAa21zX3BsYW5l
X2FscGhhX2JsZW5kQHBpcGUtYy1jb25zdGFudC1hbHBoYS1taW4uaHRtbAoKICAqIGlndEBrbXNf
cHNyQHBzcjJfcHJpbWFyeV9tbWFwX2NwdToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJ
UF1bNDddIChbZmRvIzEwOTQ0MV0pIC0+IFtQQVNTXVs0OF0gKzIgc2ltaWxhciBpc3N1ZXMKICAg
WzQ3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc2
MC9zaGFyZC1pY2xiMy9pZ3RAa21zX3BzckBwc3IyX3ByaW1hcnlfbW1hcF9jcHUuaHRtbAogICBb
NDhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDEzNS9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3IyX3ByaW1hcnlfbW1hcF9jcHUuaHRtbAoK
ICAqIGlndEBwZXJmQGJsb2NraW5nOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVs0
OV0gKFtmZG8jMTEwNzI4XSkgLT4gW1BBU1NdWzUwXSArMSBzaW1pbGFyIGlzc3VlCiAgIFs0OV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NjAvc2hh
cmQtc2tsMi9pZ3RAcGVyZkBibG9ja2luZy5odG1sCiAgIFs1MF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTM1L3NoYXJkLXNrbDEwL2lndEBw
ZXJmQGJsb2NraW5nLmh0bWwKCiAgKiBpZ3RAcHJpbWVfdmdlbUBmZW5jZS13YWl0LWJzZDI6CiAg
ICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzUxXSAoW2ZkbyMxMDkyNzZdKSAtPiBbUEFT
U11bNTJdICsxMiBzaW1pbGFyIGlzc3VlcwogICBbNTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzYwL3NoYXJkLWljbGIzL2lndEBwcmltZV92Z2Vt
QGZlbmNlLXdhaXQtYnNkMi5odG1sCiAgIFs1Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTM1L3NoYXJkLWljbGIxL2lndEBwcmltZV92Z2Vt
QGZlbmNlLXdhaXQtYnNkMi5odG1sCgogIAogIFtmZG8jMTAzMTY2XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTY2CiAgW2ZkbyMxMDMxNjddOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxNjcKICBbZmRvIzEw
MzkyN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzky
NwogIFtmZG8jMTA0MTA4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA0MTA4CiAgW2ZkbyMxMDUzNjNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDUzNjMKICBbZmRvIzEwNTQxMV06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTQxMQogIFtmZG8jMTA1NTQxXTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1NTQxCiAgW2ZkbyMxMDgw
NDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgwNDAK
ICBbZmRvIzEwODE0NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwODE0NQogIFtmZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTA4NTY2CiAgW2ZkbyMxMDg2ODZdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg2ODYKICBbZmRvIzEwOTI3Nl06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3NgogIFtmZG8jMTA5NDQx
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NDQxCiAg
W2ZkbyMxMTA0MDNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMTA0MDMKICBbZmRvIzExMDcyOF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTExMDcyOAogIFtmZG8jMTEwODU0XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwODU0CiAgW2ZkbyMxMTEzMjVdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzMjUKCgpQYXJ0aWNpcGF0aW5n
IGhvc3RzICg5IC0+IDkpCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBObyBjaGFu
Z2VzIGluIHBhcnRpY2lwYXRpbmcgaG9zdHMKCgpCdWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0K
CiAgKiBDSTogQ0ktMjAxOTA1MjkgLT4gTm9uZQogICogTGludXg6IENJX0RSTV82NzYwIC0+IFBh
dGNod29ya18xNDEzNQoKICBDSS0yMDE5MDUyOTogMjAxOTA1MjkKICBDSV9EUk1fNjc2MDogOTAw
NGVlYjQ4MzI5ZjY5YzQ5NGIzZDZlMzkzMjFmZDIzNjZmNzA3YiBAIGdpdDovL2Fub25naXQuZnJl
ZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MTQ2OiAzNTdkYmUxODY5ZDg4YTJmMDhi
Y2VlNGVlYmNlZmY0ZWU5MDE0NDI0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9y
Zy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzE0MTM1OiA4ODAwZjcxMWY5OWE1ZmY4
NWI2ZjI1YjMzZjVkNDZjMmRhMmI5ZDg4IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcv
Z2Z4LWNpL2xpbnV4CiAgcGlnbGl0XzQ1MDk6IGZkYzVhNGNhMTExMjRhYjg0MTNjNzk4ODg5NmVl
YzRjOTczMzY2OTQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9waWdsaXQKCj09IExv
Z3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEzNS8KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
