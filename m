Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2BF1040DB
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 17:34:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2510D6E89A;
	Wed, 20 Nov 2019 16:34:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 45AC26E89A;
 Wed, 20 Nov 2019 16:34:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3CB0FA00E7;
 Wed, 20 Nov 2019 16:34:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 20 Nov 2019 16:34:02 -0000
Message-ID: <157426764221.19984.13262071551018524706@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191120000425.31588-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20191120000425.31588-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915/selftests=3A_re-init_the_GT_in_live=5Fgt=5Fpm?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiByZS1pbml0
IHRoZSBHVCBpbiBsaXZlX2d0X3BtClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy82OTcxMC8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBC
dWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83MzgwX2Z1bGwgLT4gUGF0Y2h3b3JrXzE1MzM3
X2Z1bGwKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PQoKU3VtbWFyeQotLS0tLS0tCgogICoqRkFJTFVSRSoqCgogIFNlcmlvdXMgdW5rbm93biBjaGFu
Z2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNTMzN19mdWxsIGFic29sdXRlbHkgbmVlZCB0byBi
ZQogIHZlcmlmaWVkIG1hbnVhbGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hh
bmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4g
UGF0Y2h3b3JrXzE1MzM3X2Z1bGwsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxv
dyB0aGVtCiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJl
ZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgogIAoKUG9zc2libGUgbmV3IGlzc3VlcwotLS0t
LS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkg
aGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE1MzM3X2Z1bGw6CgojIyMgSUdUIGNo
YW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBpZ3RAZ2VtX3Nv
ZnRwaW5Abm9yZWxvYzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMV0gLT4gW0lO
Q09NUExFVEVdWzJdCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzM4MC9zaGFyZC1za2wyL2lndEBnZW1fc29mdHBpbkBub3JlbG9jLmh0bWwK
ICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTMzNy9zaGFyZC1za2wxL2lndEBnZW1fc29mdHBpbkBub3JlbG9jLmh0bWwKCiAgKiBpZ3RA
Z2VtX3VzZXJwdHJfYmxpdHNAc3RyZXNzLXB1cmdlOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAg
IFtQQVNTXVszXSAtPiBbQ1JBU0hdWzRdCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM4MC9zaGFyZC1pY2xiMS9pZ3RAZ2VtX3VzZXJwdHJf
YmxpdHNAc3RyZXNzLXB1cmdlLmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTMzNy9zaGFyZC1pY2xiNy9pZ3RAZ2VtX3VzZXJw
dHJfYmxpdHNAc3RyZXNzLXB1cmdlLmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0K
CiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE1MzM3X2Z1bGwgdGhh
dCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1
ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmNzMC1zMzoKICAgIC0gc2hh
cmQtdGdsYjogICAgICAgICBbUEFTU11bNV0gLT4gW0lOQ09NUExFVEVdWzZdIChbZmRvIzExMTgz
Ml0pCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNzM4MC9zaGFyZC10Z2xiMi9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmNzMC1zMy5odG1sCiAg
IFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTUzMzcvc2hhcmQtdGdsYjgvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczAtczMuaHRtbAoKICAq
IGlndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLWRpcnR5LWNyZWF0ZToKICAgIC0gc2hhcmQtaWNs
YjogICAgICAgICBbUEFTU11bN10gLT4gW1NLSVBdWzhdIChbZmRvIzEwOTI3Nl0gLyBbZmRvIzEx
MjA4MF0pICs0IHNpbWlsYXIgaXNzdWVzCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM4MC9zaGFyZC1pY2xiMS9pZ3RAZ2VtX2N0eF9pc29s
YXRpb25AdmNzMS1kaXJ0eS1jcmVhdGUuaHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzM3L3NoYXJkLWljbGIzL2lndEBnZW1f
Y3R4X2lzb2xhdGlvbkB2Y3MxLWRpcnR5LWNyZWF0ZS5odG1sCgogICogaWd0QGdlbV9jdHhfc2hh
cmVkQGV4ZWMtc2luZ2xlLXRpbWVsaW5lLWJzZDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBb
UEFTU11bOV0gLT4gW1NLSVBdWzEwXSAoW2ZkbyMxMTA4NDFdKQogICBbOV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczODAvc2hhcmQtaWNsYjUvaWd0
QGdlbV9jdHhfc2hhcmVkQGV4ZWMtc2luZ2xlLXRpbWVsaW5lLWJzZC5odG1sCiAgIFsxMF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzM3L3No
YXJkLWljbGIyL2lndEBnZW1fY3R4X3NoYXJlZEBleGVjLXNpbmdsZS10aW1lbGluZS1ic2QuaHRt
bAoKICAqIGlndEBnZW1fZWlvQGluLWZsaWdodC1zdXNwZW5kOgogICAgLSBzaGFyZC10Z2xiOiAg
ICAgICAgIFtQQVNTXVsxMV0gLT4gW0lOQ09NUExFVEVdWzEyXSAoW2ZkbyMxMTE4MzJdIC8gW2Zk
byMxMTE4NTBdIC8gW2ZkbyMxMTIwODFdKQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzgwL3NoYXJkLXRnbGI2L2lndEBnZW1fZWlvQGlu
LWZsaWdodC1zdXNwZW5kLmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzMzcvc2hhcmQtdGdsYjIvaWd0QGdlbV9laW9AaW4t
ZmxpZ2h0LXN1c3BlbmQuaHRtbAoKICAqIGlndEBnZW1fZXhlY19iYWxhbmNlckBzbW9rZToKICAg
IC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMTNdIC0+IFtTS0lQXVsxNF0gKFtmZG8jMTEw
ODU0XSkKICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNzM4MC9zaGFyZC1pY2xiMi9pZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAc21va2UuaHRtbAog
ICBbMTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTMzNy9zaGFyZC1pY2xiNi9pZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAc21va2UuaHRtbAoKICAq
IGlndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LXF1ZXVlLWJzZDE6CiAgICAtIHNoYXJkLWlj
bGI6ICAgICAgICAgW1BBU1NdWzE1XSAtPiBbU0tJUF1bMTZdIChbZmRvIzEwOTI3Nl0pICs5IHNp
bWlsYXIgaXNzdWVzCiAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzczODAvc2hhcmQtaWNsYjQvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVt
cHQtcXVldWUtYnNkMS5odG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzM3L3NoYXJkLWljbGIzL2lndEBnZW1fZXhlY19zY2hl
ZHVsZUBwcmVlbXB0LXF1ZXVlLWJzZDEuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUBw
cmVlbXB0LXNlbGYtYnNkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsxN10gLT4g
W1NLSVBdWzE4XSAoW2ZkbyMxMTIxNDZdKSArMyBzaW1pbGFyIGlzc3VlcwogICBbMTddOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzgwL3NoYXJkLWlj
bGI4L2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LXNlbGYtYnNkLmh0bWwKICAgWzE4XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzMzcv
c2hhcmQtaWNsYjIvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtc2VsZi1ic2QuaHRtbAoK
ICAqIGlndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMzLWRldmljZXM6CiAgICAtIHNoYXJkLXRn
bGI6ICAgICAgICAgW1BBU1NdWzE5XSAtPiBbSU5DT01QTEVURV1bMjBdIChbZmRvIzExMTgzMl0g
LyBbZmRvIzExMTg1MF0pCiAgIFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzczODAvc2hhcmQtdGdsYjIvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFz
aWMtczMtZGV2aWNlcy5odG1sCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzM3L3NoYXJkLXRnbGI4L2lndEBnZW1fZXhlY19zdXNw
ZW5kQGJhc2ljLXMzLWRldmljZXMuaHRtbAoKICAqIGlndEBnZW1fcGVyc2lzdGVudF9yZWxvY3NA
Zm9ya2VkLXRocmFzaC1pbmFjdGl2ZToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11b
MjFdIC0+IFtJTkNPTVBMRVRFXVsyMl0gKFtmZG8jMTA3NzEzXSAvIFtmZG8jMTEyMDY4IF0pCiAg
IFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcz
ODAvc2hhcmQtaWNsYjIvaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtdGhyYXNoLWlu
YWN0aXZlLmh0bWwKICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTUzMzcvc2hhcmQtaWNsYjQvaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9j
c0Bmb3JrZWQtdGhyYXNoLWluYWN0aXZlLmh0bWwKCiAgKiBpZ3RAZ2VtX3N5bmNAYmFzaWMtbWFu
eS1lYWNoOgogICAgLSBzaGFyZC10Z2xiOiAgICAgICAgIFtQQVNTXVsyM10gLT4gW0lOQ09NUExF
VEVdWzI0XSAoW2ZkbyMxMTE4ODBdIC8gW2ZkbyMxMTE5OThdKQogICBbMjNdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzgwL3NoYXJkLXRnbGI5L2ln
dEBnZW1fc3luY0BiYXNpYy1tYW55LWVhY2guaHRtbAogICBbMjRdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTMzNy9zaGFyZC10Z2xiNi9pZ3RA
Z2VtX3N5bmNAYmFzaWMtbWFueS1lYWNoLmh0bWwKCiAgKiBpZ3RAZ2VtX3VzZXJwdHJfYmxpdHNA
c3luYy11bm1hcDoKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbUEFTU11bMjVdIC0+IFtETUVT
Ry1XQVJOXVsyNl0gKFtmZG8jMTExODcwXSkKICAgWzI1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM4MC9zaGFyZC1zbmI1L2lndEBnZW1fdXNlcnB0
cl9ibGl0c0BzeW5jLXVubWFwLmh0bWwKICAgWzI2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzMzcvc2hhcmQtc25iMi9pZ3RAZ2VtX3VzZXJw
dHJfYmxpdHNAc3luYy11bm1hcC5odG1sCiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW1BBU1Nd
WzI3XSAtPiBbRE1FU0ctV0FSTl1bMjhdIChbZmRvIzExMTg3MF0pICsxIHNpbWlsYXIgaXNzdWUK
ICAgWzI3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NzM4MC9zaGFyZC1oc3cyL2lndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLmh0bWwKICAg
WzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTUzMzcvc2hhcmQtaHN3Ni9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3luYy11bm1hcC5odG1sCgog
ICogaWd0QGk5MTVfcG1fZGNAZGM2LXBzcjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFT
U11bMjldIC0+IFtGQUlMXVszMF0gKFtmZG8jMTExODMwIF0pCiAgIFsyOV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczODAvc2hhcmQtaWNsYjYvaWd0
QGk5MTVfcG1fZGNAZGM2LXBzci5odG1sCiAgIFszMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzM3L3NoYXJkLWljbGI2L2lndEBpOTE1X3Bt
X2RjQGRjNi1wc3IuaHRtbAoKICAqIGlndEBrbXNfY29sb3JAcGlwZS1hLWN0bS1ncmVlbi10by1y
ZWQ6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzMxXSAtPiBbRE1FU0ctV0FSTl1b
MzJdIChbZmRvIzEwNjEwN10pCiAgIFszMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzczODAvc2hhcmQtc2tsNy9pZ3RAa21zX2NvbG9yQHBpcGUtYS1j
dG0tZ3JlZW4tdG8tcmVkLmh0bWwKICAgWzMyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzMzcvc2hhcmQtc2tsOC9pZ3RAa21zX2NvbG9yQHBp
cGUtYS1jdG0tZ3JlZW4tdG8tcmVkLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNw
ZW5kOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVszM10gLT4gW0RNRVNHLVdBUk5d
WzM0XSAoW2ZkbyMxMDg1NjZdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFszM106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczODAvc2hhcmQtYXBsMi9pZ3RA
a21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLmh0bWwKICAgWzM0XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzMzcvc2hhcmQtYXBsMS9pZ3RAa21z
X2ZsaXBAZmxpcC12cy1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNr
aW5nQGZiYy0xcC1pbmRmYi1mbGlwdHJhY2s6CiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW1BB
U1NdWzM1XSAtPiBbRkFJTF1bMzZdIChbZmRvIzEwMzE2N10pICs0IHNpbWlsYXIgaXNzdWVzCiAg
IFszNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcz
ODAvc2hhcmQtdGdsYjQvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtaW5kZmIt
ZmxpcHRyYWNrLmh0bWwKICAgWzM2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTUzMzcvc2hhcmQtdGdsYjcvaWd0QGttc19mcm9udGJ1ZmZlcl90
cmFja2luZ0BmYmMtMXAtaW5kZmItZmxpcHRyYWNrLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVm
ZmVyX3RyYWNraW5nQGZiYy1zdXNwZW5kOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNT
XVszN10gLT4gW0RNRVNHLVdBUk5dWzM4XSAoW2ZkbyMxMDg1NjZdKSArMiBzaW1pbGFyIGlzc3Vl
cwogICBbMzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83MzgwL3NoYXJkLWtibDIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtc3VzcGVu
ZC5odG1sCiAgIFszOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE1MzM3L3NoYXJkLWtibDcvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bm
YmMtc3VzcGVuZC5odG1sCiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW1BBU1NdWzM5XSAtPiBb
SU5DT01QTEVURV1bNDBdIChbZmRvIzExMTgzMl0gLyBbZmRvIzExMTg1MF0gLyBbZmRvIzExMTg4
NF0pCiAgIFszOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzczODAvc2hhcmQtdGdsYjEvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtc3Vz
cGVuZC5odG1sCiAgIFs0MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE1MzM3L3NoYXJkLXRnbGIzL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tp
bmdAZmJjLXN1c3BlbmQuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJj
cHNyLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LXJlbmRlcjoKICAgIC0gc2hhcmQtaWNsYjog
ICAgICAgICBbUEFTU11bNDFdIC0+IFtGQUlMXVs0Ml0gKFtmZG8jMTAzMTY3XSkgKzUgc2ltaWxh
ciBpc3N1ZXMKICAgWzQxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzM4MC9zaGFyZC1pY2xiNS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZi
Y3Bzci0xcC1wcmltc2Nybi1jdXItaW5kZmItZHJhdy1yZW5kZXIuaHRtbAogICBbNDJdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTMzNy9zaGFy
ZC1pY2xiOC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1j
dXItaW5kZmItZHJhdy1yZW5kZXIuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRA
cGlwZS1hLWNvdmVyYWdlLTdlZmM6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzQz
XSAtPiBbRkFJTF1bNDRdIChbZmRvIzEwODE0NV0pICsxIHNpbWlsYXIgaXNzdWUKICAgWzQzXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM4MC9zaGFy
ZC1za2wyL2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNvdmVyYWdlLTdlZmMuaHRt
bAogICBbNDRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNTMzNy9zaGFyZC1za2wxL2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNv
dmVyYWdlLTdlZmMuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNv
dmVyYWdlLTdlZmM6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzQ1XSAtPiBbRkFJ
TF1bNDZdIChbZmRvIzEwODE0NV0gLyBbZmRvIzExMDQwM10pCiAgIFs0NV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczODAvc2hhcmQtc2tsMTAvaWd0
QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY292ZXJhZ2UtN2VmYy5odG1sCiAgIFs0Nl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzM3
L3NoYXJkLXNrbDcvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY292ZXJhZ2UtN2Vm
Yy5odG1sCgogICogaWd0QGttc19wc3JAcHNyMl9zcHJpdGVfYmx0OgogICAgLSBzaGFyZC1pY2xi
OiAgICAgICAgIFtQQVNTXVs0N10gLT4gW1NLSVBdWzQ4XSAoW2ZkbyMxMDk0NDFdKSArMiBzaW1p
bGFyIGlzc3VlcwogICBbNDddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV83MzgwL3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfc3ByaXRlX2JsdC5o
dG1sCiAgIFs0OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE1MzM3L3NoYXJkLWljbGI1L2lndEBrbXNfcHNyQHBzcjJfc3ByaXRlX2JsdC5odG1s
CgogICogaWd0QGttc19zZXRtb2RlQGJhc2ljOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQ
QVNTXVs0OV0gLT4gW0ZBSUxdWzUwXSAoW2ZkbyM5OTkxMl0pCiAgIFs0OV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczODAvc2hhcmQtYXBsNy9pZ3RA
a21zX3NldG1vZGVAYmFzaWMuaHRtbAogICBbNTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTMzNy9zaGFyZC1hcGw0L2lndEBrbXNfc2V0bW9k
ZUBiYXNpYy5odG1sCgogICogaWd0QHBlcmZfcG11QGJ1c3ktYWNjdXJhY3ktOTgtdmNzMToKICAg
IC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bNTFdIC0+IFtTS0lQXVs1Ml0gKFtmZG8jMTEy
MDgwXSkgKzEyIHNpbWlsYXIgaXNzdWVzCiAgIFs1MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczODAvc2hhcmQtaWNsYjQvaWd0QHBlcmZfcG11QGJ1
c3ktYWNjdXJhY3ktOTgtdmNzMS5odG1sCiAgIFs1Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzM3L3NoYXJkLWljbGIzL2lndEBwZXJmX3Bt
dUBidXN5LWFjY3VyYWN5LTk4LXZjczEuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMj
CgogICogaWd0QGdlbV9idXN5QGJ1c3ktdmNzMToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBb
U0tJUF1bNTNdIChbZmRvIzExMjA4MF0pIC0+IFtQQVNTXVs1NF0gKzggc2ltaWxhciBpc3N1ZXMK
ICAgWzUzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NzM4MC9zaGFyZC1pY2xiNi9pZ3RAZ2VtX2J1c3lAYnVzeS12Y3MxLmh0bWwKICAgWzU0XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzMzcvc2hh
cmQtaWNsYjIvaWd0QGdlbV9idXN5QGJ1c3ktdmNzMS5odG1sCgogICogaWd0QGdlbV9jdHhfcGVy
c2lzdGVuY2VAdmNzMS1ob3N0aWxlLXByZWVtcHQ6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAg
W1NLSVBdWzU1XSAoW2ZkbyMxMDkyNzZdIC8gW2ZkbyMxMTIwODBdKSAtPiBbUEFTU11bNTZdICsx
IHNpbWlsYXIgaXNzdWUKICAgWzU1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzM4MC9zaGFyZC1pY2xiNS9pZ3RAZ2VtX2N0eF9wZXJzaXN0ZW5jZUB2
Y3MxLWhvc3RpbGUtcHJlZW1wdC5odG1sCiAgIFs1Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzM3L3NoYXJkLWljbGIyL2lndEBnZW1fY3R4
X3BlcnNpc3RlbmNlQHZjczEtaG9zdGlsZS1wcmVlbXB0Lmh0bWwKCiAgKiBpZ3RAZ2VtX2Vpb0Br
bXM6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW0lOQ09NUExFVEVdWzU3XSAoW2ZkbyMxMDU0
MTFdKSAtPiBbUEFTU11bNThdCiAgIFs1N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzczODAvc2hhcmQtc25iMi9pZ3RAZ2VtX2Vpb0BrbXMuaHRtbAog
ICBbNThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTMzNy9zaGFyZC1zbmI2L2lndEBnZW1fZWlvQGttcy5odG1sCgogICogaWd0QGdlbV9laW9A
c3VzcGVuZDoKICAgIC0gc2hhcmQtdGdsYjogICAgICAgICBbSU5DT01QTEVURV1bNTldIChbZmRv
IzExMTg1MF0pIC0+IFtQQVNTXVs2MF0gKzIgc2ltaWxhciBpc3N1ZXMKICAgWzU5XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM4MC9zaGFyZC10Z2xi
My9pZ3RAZ2VtX2Vpb0BzdXNwZW5kLmh0bWwKICAgWzYwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzMzcvc2hhcmQtdGdsYjYvaWd0QGdlbV9l
aW9Ac3VzcGVuZC5odG1sCgogICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQGluZGVwZW5kZW50LWJz
ZDI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzYxXSAoW2ZkbyMxMDkyNzZdKSAt
PiBbUEFTU11bNjJdICsxMSBzaW1pbGFyIGlzc3VlcwogICBbNjFdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzgwL3NoYXJkLWljbGIzL2lndEBnZW1f
ZXhlY19zY2hlZHVsZUBpbmRlcGVuZGVudC1ic2QyLmh0bWwKICAgWzYyXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzMzcvc2hhcmQtaWNsYjEv
aWd0QGdlbV9leGVjX3NjaGVkdWxlQGluZGVwZW5kZW50LWJzZDIuaHRtbAoKICAqIGlndEBnZW1f
ZXhlY19zY2hlZHVsZUBwcmVlbXB0LW90aGVyLWNoYWluLWJzZDoKICAgIC0gc2hhcmQtaWNsYjog
ICAgICAgICBbU0tJUF1bNjNdIChbZmRvIzExMjE0Nl0pIC0+IFtQQVNTXVs2NF0gKzQgc2ltaWxh
ciBpc3N1ZXMKICAgWzYzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzM4MC9zaGFyZC1pY2xiMi9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1v
dGhlci1jaGFpbi1ic2QuaHRtbAogICBbNjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTMzNy9zaGFyZC1pY2xiNi9pZ3RAZ2VtX2V4ZWNfc2No
ZWR1bGVAcHJlZW1wdC1vdGhlci1jaGFpbi1ic2QuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zdXNw
ZW5kQGJhc2ljLXMzOgogICAgLSBzaGFyZC10Z2xiOiAgICAgICAgIFtJTkNPTVBMRVRFXVs2NV0g
KFtmZG8jMTExNzM2XSAvIFtmZG8jMTExODUwXSkgLT4gW1BBU1NdWzY2XQogICBbNjVdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzgwL3NoYXJkLXRn
bGI0L2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMzLmh0bWwKICAgWzY2XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzMzcvc2hhcmQtdGds
YjkvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczMuaHRtbAoKICAqIGlndEBnZW1fc29mdHBp
bkBldmljdC1hY3RpdmUtaW50ZXJydXB0aWJsZToKICAgIC0gc2hhcmQtdGdsYjogICAgICAgICBb
VElNRU9VVF1bNjddIChbZmRvIzExMjEyNl0pIC0+IFtQQVNTXVs2OF0KICAgWzY3XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM4MC9zaGFyZC10Z2xi
MS9pZ3RAZ2VtX3NvZnRwaW5AZXZpY3QtYWN0aXZlLWludGVycnVwdGlibGUuaHRtbAogICBbNjhd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTMz
Ny9zaGFyZC10Z2xiMy9pZ3RAZ2VtX3NvZnRwaW5AZXZpY3QtYWN0aXZlLWludGVycnVwdGlibGUu
aHRtbAoKICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0BkbWFidWYtdW5zeW5jOgogICAgLSBzaGFy
ZC1oc3c6ICAgICAgICAgIFtETUVTRy1XQVJOXVs2OV0gKFtmZG8jMTExODcwXSkgLT4gW1BBU1Nd
WzcwXQogICBbNjldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV83MzgwL3NoYXJkLWhzdzgvaWd0QGdlbV91c2VycHRyX2JsaXRzQGRtYWJ1Zi11bnN5bmMu
aHRtbAogICBbNzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNTMzNy9zaGFyZC1oc3cyL2lndEBnZW1fdXNlcnB0cl9ibGl0c0BkbWFidWYtdW5z
eW5jLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1hLWN1cnNvci1zdXNwZW5kOgog
ICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs3MV0gKFtmZG8jMTEwNzQxXSkg
LT4gW1BBU1NdWzcyXQogICBbNzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83MzgwL3NoYXJkLXNrbDEwL2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWEt
Y3Vyc29yLXN1c3BlbmQuaHRtbAogICBbNzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTMzNy9zaGFyZC1za2w2L2lndEBrbXNfY3Vyc29yX2Ny
Y0BwaXBlLWEtY3Vyc29yLXN1c3BlbmQuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2NyY0BwaXBl
LWItY3Vyc29yLXN1c3BlbmQ6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0RNRVNHLVdBUk5d
WzczXSAoW2ZkbyMxMDg1NjZdKSAtPiBbUEFTU11bNzRdICs0IHNpbWlsYXIgaXNzdWVzCiAgIFs3
M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczODAv
c2hhcmQtYXBsNi9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNvci1zdXNwZW5kLmh0bWwK
ICAgWzc0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTUzMzcvc2hhcmQtYXBsNC9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNvci1zdXNw
ZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1jLWN1cnNvci1zdXNwZW5kOgog
ICAgLSBzaGFyZC10Z2xiOiAgICAgICAgIFtJTkNPTVBMRVRFXVs3NV0gKFtmZG8jMTExODMyXSAv
IFtmZG8jMTExODUwXSkgLT4gW1BBU1NdWzc2XQogICBbNzVdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzgwL3NoYXJkLXRnbGIxL2lndEBrbXNfY3Vy
c29yX2NyY0BwaXBlLWMtY3Vyc29yLXN1c3BlbmQuaHRtbAogICBbNzZdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTMzNy9zaGFyZC10Z2xiOS9p
Z3RAa21zX2N1cnNvcl9jcmNAcGlwZS1jLWN1cnNvci1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21z
X2N1cnNvcl9lZGdlX3dhbGtAcGlwZS1hLTEyOHgxMjgtcmlnaHQtZWRnZToKICAgIC0gc2hhcmQt
dGdsYjogICAgICAgICBbSU5DT01QTEVURV1bNzddIC0+IFtQQVNTXVs3OF0KICAgWzc3XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM4MC9zaGFyZC10
Z2xiMS9pZ3RAa21zX2N1cnNvcl9lZGdlX3dhbGtAcGlwZS1hLTEyOHgxMjgtcmlnaHQtZWRnZS5o
dG1sCiAgIFs3OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE1MzM3L3NoYXJkLXRnbGIzL2lndEBrbXNfY3Vyc29yX2VkZ2Vfd2Fsa0BwaXBlLWEt
MTI4eDEyOC1yaWdodC1lZGdlLmh0bWwKCiAgKiBpZ3RAa21zX2ZiY29uX2ZidEBwc3I6CiAgICAt
IHNoYXJkLXNrbDogICAgICAgICAgW0RNRVNHLVdBUk5dWzc5XSAoW2ZkbyMxMDYxMDddKSAtPiBb
UEFTU11bODBdICsxIHNpbWlsYXIgaXNzdWUKICAgWzc5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM4MC9zaGFyZC1za2w2L2lndEBrbXNfZmJjb25f
ZmJ0QHBzci5odG1sCiAgIFs4MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE1MzM3L3NoYXJkLXNrbDkvaWd0QGttc19mYmNvbl9mYnRAcHNyLmh0
bWwKCiAgKiBpZ3RAa21zX2ZsaXBAMngtZmxpcC12cy1zdXNwZW5kOgogICAgLSBzaGFyZC1oc3c6
ICAgICAgICAgIFtJTkNPTVBMRVRFXVs4MV0gKFtmZG8jMTAzNTQwXSkgLT4gW1BBU1NdWzgyXSAr
MSBzaW1pbGFyIGlzc3VlCiAgIFs4MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzczODAvc2hhcmQtaHN3OC9pZ3RAa21zX2ZsaXBAMngtZmxpcC12cy1z
dXNwZW5kLmh0bWwKICAgWzgyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTUzMzcvc2hhcmQtaHN3NC9pZ3RAa21zX2ZsaXBAMngtZmxpcC12cy1z
dXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuazoKICAg
IC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJTF1bODNdIChbZmRvIzEwNTM2M10pIC0+IFtQQVNT
XVs4NF0KICAgWzgzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNzM4MC9zaGFyZC1za2w2L2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5r
Lmh0bWwKICAgWzg0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTUzMzcvc2hhcmQtc2tsOS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZi
bGFuay5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtb2Zmc2Ny
ZW4tcHJpLWluZGZiLWRyYXctYmx0OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs4
NV0gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzg2XSArMiBzaW1pbGFyIGlzc3VlcwogICBbODVd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzgwL3No
YXJkLWljbGI0L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLW9mZnNjcmVuLXBy
aS1pbmRmYi1kcmF3LWJsdC5odG1sCiAgIFs4Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzM3L3NoYXJkLWljbGIzL2lndEBrbXNfZnJvbnRi
dWZmZXJfdHJhY2tpbmdAZmJjLTFwLW9mZnNjcmVuLXByaS1pbmRmYi1kcmF3LWJsdC5odG1sCgog
ICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtb2Zmc2NyZW4tcHJpLWlu
ZGZiLWRyYXctbW1hcC13YzoKICAgIC0gc2hhcmQtdGdsYjogICAgICAgICBbVElNRU9VVF1bODdd
IChbZmRvIzExMjE2OF0pIC0+IFtQQVNTXVs4OF0KICAgWzg3XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM4MC9zaGFyZC10Z2xiMS9pZ3RAa21zX2Zy
b250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1vZmZzY3Jlbi1wcmktaW5kZmItZHJhdy1tbWFw
LXdjLmh0bWwKICAgWzg4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTUzMzcvc2hhcmQtdGdsYjMvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2lu
Z0BmYmNwc3ItMXAtb2Zmc2NyZW4tcHJpLWluZGZiLWRyYXctbW1hcC13Yy5odG1sCgogICogaWd0
QGttc19wbGFuZV9sb3dyZXNAcGlwZS1hLXRpbGluZy14OgogICAgLSBzaGFyZC1pY2xiOiAgICAg
ICAgIFtGQUlMXVs4OV0gKFtmZG8jMTAzMTY2XSkgLT4gW1BBU1NdWzkwXQogICBbODldOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzgwL3NoYXJkLWlj
bGI3L2lndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxpbmcteC5odG1sCiAgIFs5MF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzM3L3No
YXJkLWljbGI4L2lndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxpbmcteC5odG1sCgogICog
aWd0QGttc19wc3JAcHNyMl9jdXJzb3JfcmVuZGVyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAg
IFtTS0lQXVs5MV0gKFtmZG8jMTA5NDQxXSkgLT4gW1BBU1NdWzkyXSArMyBzaW1pbGFyIGlzc3Vl
cwogICBbOTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83MzgwL3NoYXJkLWljbGI1L2lndEBrbXNfcHNyQHBzcjJfY3Vyc29yX3JlbmRlci5odG1sCiAg
IFs5Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE1MzM3L3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfY3Vyc29yX3JlbmRlci5odG1sCgog
ICogaWd0QGttc192YmxhbmtAcGlwZS1hLXRzLWNvbnRpbnVhdGlvbi1zdXNwZW5kOgogICAgLSBz
aGFyZC1rYmw6ICAgICAgICAgIFtETUVTRy1XQVJOXVs5M10gKFtmZG8jMTA4NTY2XSkgLT4gW1BB
U1NdWzk0XSArMyBzaW1pbGFyIGlzc3VlcwogICBbOTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzgwL3NoYXJkLWtibDQvaWd0QGttc192YmxhbmtA
cGlwZS1hLXRzLWNvbnRpbnVhdGlvbi1zdXNwZW5kLmh0bWwKICAgWzk0XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzMzcvc2hhcmQta2JsNy9p
Z3RAa21zX3ZibGFua0BwaXBlLWEtdHMtY29udGludWF0aW9uLXN1c3BlbmQuaHRtbAoKICAqIGln
dEBwZXJmQGdlbjgtdW5wcml2aWxlZ2VkLXNpbmdsZS1jdHgtY291bnRlcnM6CiAgICAtIHNoYXJk
LXNrbDogICAgICAgICAgW1RJTUVPVVRdWzk1XSAoW2ZkbyMxMTE3MzIgXSkgLT4gW1BBU1NdWzk2
XQogICBbOTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83MzgwL3NoYXJkLXNrbDUvaWd0QHBlcmZAZ2VuOC11bnByaXZpbGVnZWQtc2luZ2xlLWN0eC1j
b3VudGVycy5odG1sCiAgIFs5Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE1MzM3L3NoYXJkLXNrbDEwL2lndEBwZXJmQGdlbjgtdW5wcml2aWxl
Z2VkLXNpbmdsZS1jdHgtY291bnRlcnMuaHRtbAoKICAKIyMjIyBXYXJuaW5ncyAjIyMjCgogICog
aWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczItbm9ucHJpdi1zd2l0Y2g6CiAgICAtIHNoYXJkLXRn
bGI6ICAgICAgICAgW1NLSVBdWzk3XSAoW2ZkbyMxMTIwODBdKSAtPiBbU0tJUF1bOThdIChbZmRv
IzExMTkxMl0gLyBbZmRvIzExMjA4MF0pCiAgIFs5N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczODAvc2hhcmQtdGdsYjkvaWd0QGdlbV9jdHhfaXNv
bGF0aW9uQHZjczItbm9ucHJpdi1zd2l0Y2guaHRtbAogICBbOThdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTMzNy9zaGFyZC10Z2xiNC9pZ3RA
Z2VtX2N0eF9pc29sYXRpb25AdmNzMi1ub25wcml2LXN3aXRjaC5odG1sCgogIAogIFtmZG8jMTAz
MTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTY2
CiAgW2ZkbyMxMDMxNjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMDMxNjcKICBbZmRvIzEwMzU0MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTEwMzU0MAogIFtmZG8jMTA1MzYzXTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1MzYzCiAgW2ZkbyMxMDU0MTFdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDU0MTEKICBbZmRvIzEwNjEw
N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNjEwNwog
IFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTA3NzEzCiAgW2ZkbyMxMDgxNDVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDgxNDUKICBbZmRvIzEwODU2Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODU2NgogIFtmZG8jMTA5Mjc2XTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5Mjc2CiAgW2ZkbyMxMDk0NDFd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk0NDEKICBb
ZmRvIzExMDQwM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTExMDQwMwogIFtmZG8jMTEwNzQxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTEwNzQxCiAgW2ZkbyMxMTA4NDFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA4NDEKICBbZmRvIzExMDg1NF06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDg1NAogIFtmZG8jMTExNzMyIF06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTczMiAKICBb
ZmRvIzExMTczNl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTExMTczNgogIFtmZG8jMTExODMwIF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTExMTgzMCAKICBbZmRvIzExMTgzMl06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTgzMgogIFtmZG8jMTExODUwXTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExODUwCiAgW2ZkbyMxMTE4NzBd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE4NzAKICBb
ZmRvIzExMTg4MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvdwoKPT0gTG9ncyA9
PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE1MzM3L2luZGV4Lmh0bWwKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
