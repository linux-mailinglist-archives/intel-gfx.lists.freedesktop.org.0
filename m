Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACAC14F072
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 23:21:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D13DA6E92D;
	Fri, 21 Jun 2019 21:21:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 185EE6E929;
 Fri, 21 Jun 2019 21:21:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1120FA0119;
 Fri, 21 Jun 2019 21:21:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 21 Jun 2019 21:21:49 -0000
Message-ID: <20190621212149.9268.83763@emeril.freedesktop.org>
References: <20190621020132.1164-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190621020132.1164-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_EHL_?=
 =?utf-8?q?port_programming_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogRUhMIHBvcnQgcHJvZ3JhbW1pbmcgKHJldjIp
ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MjQ5Mi8K
U3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9t
IENJX0RSTV82MzIzX2Z1bGwgLT4gUGF0Y2h3b3JrXzEzMzg3X2Z1bGwKPT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgog
ICoqRkFJTFVSRSoqCgogIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNo
d29ya18xMzM4N19mdWxsIGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlmaWVkIG1hbnVhbGx5
LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8g
ZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEzMzg3X2Z1bGws
IHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCiAgdG8gZG9jdW1lbnQg
dGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMg
aW4gQ0kuCgogIAoKUG9zc2libGUgbmV3IGlzc3VlcwotLS0tLS0tLS0tLS0tLS0tLS0tCgogIEhl
cmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQg
aW4gUGF0Y2h3b3JrXzEzMzg3X2Z1bGw6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIFBvc3Np
YmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBpZ3RAcGVyZl9wbXVAYnVzeS1kb3VibGUtc3RhcnQt
dmVjczA6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzFdIC0+IFtETUVTRy1XQVJO
XVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzYzMjMvc2hhcmQtc2tsNy9pZ3RAcGVyZl9wbXVAYnVzeS1kb3VibGUtc3RhcnQtdmVjczAu
aHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzMzg3L3NoYXJkLXNrbDQvaWd0QHBlcmZfcG11QGJ1c3ktZG91YmxlLXN0YXJ0LXZl
Y3MwLmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNo
YW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzEzMzg3X2Z1bGwgdGhhdCBjb21lIGZyb20ga25vd24g
aXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBp
Z3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtc3VzcGVuZDoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBb
UEFTU11bM10gLT4gW0ZBSUxdWzRdIChbZmRvIzExMDY2N10pCiAgIFszXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMyMy9zaGFyZC1rYmw2L2lndEBn
ZW1fZWlvQGluLWZsaWdodC1zdXNwZW5kLmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM4Ny9zaGFyZC1rYmw2L2lndEBnZW1f
ZWlvQGluLWZsaWdodC1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2Nz
QGZvcmtlZC1pbnRlcnJ1cHRpYmxlLWZhdWx0aW5nLXJlbG9jLXRocmFzaGluZzoKICAgIC0gc2hh
cmQta2JsOiAgICAgICAgICBbUEFTU11bNV0gLT4gW0RNRVNHLVdBUk5dWzZdIChbZmRvIzExMDkx
MyBdKQogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzYzMjMvc2hhcmQta2JsMS9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRl
cnJ1cHRpYmxlLWZhdWx0aW5nLXJlbG9jLXRocmFzaGluZy5odG1sCiAgIFs2XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzODcvc2hhcmQta2Js
Mi9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRpYmxlLWZhdWx0aW5n
LXJlbG9jLXRocmFzaGluZy5odG1sCgogICogaWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhl
ZC1pbnZhbGlkYXRlLWJ1c3ktZ3VwOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVs3
XSAtPiBbRE1FU0ctV0FSTl1bOF0gKFtmZG8jMTEwOTEzIF0pICsyIHNpbWlsYXIgaXNzdWVzCiAg
IFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMy
My9zaGFyZC1hcGw4L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxpZGF0ZS1i
dXN5LWd1cC5odG1sCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTMzODcvc2hhcmQtYXBsNy9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAbWFw
LWZpeGVkLWludmFsaWRhdGUtYnVzeS1ndXAuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZz
LXN1c3BlbmQtaW50ZXJydXB0aWJsZToKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11b
OV0gLT4gW0RNRVNHLVdBUk5dWzEwXSAoW2ZkbyMxMDg1NjZdKQogICBbOV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMjMvc2hhcmQtYXBsMS9pZ3RA
a21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGlibGUuaHRtbAogICBbMTBdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM4Ny9zaGFy
ZC1hcGw2L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZS5odG1sCiAg
ICAtIHNoYXJkLXNuYjogICAgICAgICAgW1BBU1NdWzExXSAtPiBbSU5DT01QTEVURV1bMTJdIChb
ZmRvIzEwNTQxMV0pCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzYzMjMvc2hhcmQtc25iMS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5k
LWludGVycnVwdGlibGUuaHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM4Ny9zaGFyZC1zbmIxL2lndEBrbXNfZmxpcEBmbGlw
LXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90
cmFja2luZ0BmYmMtMnAtc2NuZHNjcm4tY3VyLWluZGZiLWRyYXctcHdyaXRlOgogICAgLSBzaGFy
ZC1oc3c6ICAgICAgICAgIFtQQVNTXVsxM10gLT4gW1NLSVBdWzE0XSAoW2ZkbyMxMDkyNzFdKSAr
MTUgc2ltaWxhciBpc3N1ZXMKICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjMyMy9zaGFyZC1oc3c4L2lndEBrbXNfZnJvbnRidWZmZXJfdHJh
Y2tpbmdAZmJjLTJwLXNjbmRzY3JuLWN1ci1pbmRmYi1kcmF3LXB3cml0ZS5odG1sCiAgIFsxNF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzg3
L3NoYXJkLWhzdzEvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMnAtc2NuZHNjcm4t
Y3VyLWluZGZiLWRyYXctcHdyaXRlLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNr
aW5nQGZiYy1iYWRzdHJpZGU6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzE1XSAt
PiBbRkFJTF1bMTZdIChbZmRvIzEwMzE2N10pICs1IHNpbWlsYXIgaXNzdWVzCiAgIFsxNV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMjMvc2hhcmQt
aWNsYjUvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtYmFkc3RyaWRlLmh0bWwKICAg
WzE2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTMzODcvc2hhcmQtaWNsYjQvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtYmFkc3Ry
aWRlLmh0bWwKCiAgKiBpZ3RAa21zX3BzckBwc3IyX2N1cnNvcl9yZW5kZXI6CiAgICAtIHNoYXJk
LWljbGI6ICAgICAgICAgW1BBU1NdWzE3XSAtPiBbU0tJUF1bMThdIChbZmRvIzEwOTQ0MV0pICsy
IHNpbWlsYXIgaXNzdWVzCiAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzYzMjMvc2hhcmQtaWNsYjIvaWd0QGttc19wc3JAcHNyMl9jdXJzb3Jf
cmVuZGVyLmh0bWwKICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTMzODcvc2hhcmQtaWNsYjEvaWd0QGttc19wc3JAcHNyMl9jdXJzb3Jf
cmVuZGVyLmh0bWwKCiAgKiBpZ3RAa21zX3N5c2ZzX2VkaWRfdGltaW5nOgogICAgLSBzaGFyZC1o
c3c6ICAgICAgICAgIFtQQVNTXVsxOV0gLT4gW0ZBSUxdWzIwXSAoW2ZkbyMxMDAwNDddKQogICBb
MTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzIz
L3NoYXJkLWhzdzgvaWd0QGttc19zeXNmc19lZGlkX3RpbWluZy5odG1sCiAgIFsyMF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzg3L3NoYXJk
LWhzdzEvaWd0QGttc19zeXNmc19lZGlkX3RpbWluZy5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZp
eGVzICMjIyMKCiAgKiBpZ3RAZ2VtX2Vpb0B1bndlZGdlLXN0cmVzczoKICAgIC0gc2hhcmQtc25i
OiAgICAgICAgICBbRkFJTF1bMjFdIChbZmRvIzEwOTY2MV0pIC0+IFtQQVNTXVsyMl0KICAgWzIx
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMyMy9z
aGFyZC1zbmI1L2lndEBnZW1fZWlvQHVud2VkZ2Utc3RyZXNzLmh0bWwKICAgWzIyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzODcvc2hhcmQt
c25iMS9pZ3RAZ2VtX2Vpb0B1bndlZGdlLXN0cmVzcy5odG1sCgogICogaWd0QGdlbV9wZXJzaXN0
ZW50X3JlbG9jc0Bmb3JrZWQtaW50ZXJydXB0aWJsZS1mYXVsdGluZy1yZWxvYy10aHJhc2hpbmc6
CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0RNRVNHLVdBUk5dWzIzXSAoW2ZkbyMxMTA5MTMg
XSkgLT4gW1BBU1NdWzI0XSArMiBzaW1pbGFyIGlzc3VlcwogICBbMjNdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzIzL3NoYXJkLWFwbDMvaWd0QGdl
bV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtaW50ZXJydXB0aWJsZS1mYXVsdGluZy1yZWxvYy10
aHJhc2hpbmcuaHRtbAogICBbMjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzM4Ny9zaGFyZC1hcGw0L2lndEBnZW1fcGVyc2lzdGVudF9yZWxv
Y3NAZm9ya2VkLWludGVycnVwdGlibGUtZmF1bHRpbmctcmVsb2MtdGhyYXNoaW5nLmh0bWwKCiAg
KiBpZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5vbi10aHJlYWRlZDoKICAgIC0gc2hhcmQtYXBsOiAg
ICAgICAgICBbRE1FU0ctV0FSTl1bMjVdIChbZmRvIzEwODY4Nl0pIC0+IFtQQVNTXVsyNl0KICAg
WzI1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMy
My9zaGFyZC1hcGwyL2lndEBnZW1fdGlsZWRfc3dhcHBpbmdAbm9uLXRocmVhZGVkLmh0bWwKICAg
WzI2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTMzODcvc2hhcmQtYXBsMS9pZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5vbi10aHJlYWRlZC5odG1s
CgogICogaWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlkYXRlLWJ1c3ktZ3Vw
OgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtETUVTRy1XQVJOXVsyN10gKFtmZG8jMTEwOTEz
IF0pIC0+IFtQQVNTXVsyOF0gKzEgc2ltaWxhciBpc3N1ZQogICBbMjddOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzIzL3NoYXJkLWtibDIvaWd0QGdl
bV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlkYXRlLWJ1c3ktZ3VwLmh0bWwKICAgWzI4
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMz
ODcvc2hhcmQta2JsNi9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVkLWludmFsaWRhdGUt
YnVzeS1ndXAuaHRtbAoKICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWN5Y2xl
czoKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbRE1FU0ctV0FSTl1bMjldIChbZmRvIzExMDkx
MyBdKSAtPiBbUEFTU11bMzBdCiAgIFsyOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzYzMjMvc2hhcmQtc25iMi9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNA
c3luYy11bm1hcC1jeWNsZXMuaHRtbAogICBbMzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM4Ny9zaGFyZC1zbmI0L2lndEBnZW1fdXNlcnB0
cl9ibGl0c0BzeW5jLXVubWFwLWN5Y2xlcy5odG1sCgogICogaWd0QGdlbV93b3JrYXJvdW5kc0Bz
dXNwZW5kLXJlc3VtZS1jb250ZXh0OgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtETUVTRy1X
QVJOXVszMV0gKFtmZG8jMTA4NTY2XSkgLT4gW1BBU1NdWzMyXSArMiBzaW1pbGFyIGlzc3Vlcwog
ICBbMzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
MzIzL3NoYXJkLWFwbDMvaWd0QGdlbV93b3JrYXJvdW5kc0BzdXNwZW5kLXJlc3VtZS1jb250ZXh0
Lmh0bWwKICAgWzMyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTMzODcvc2hhcmQtYXBsMS9pZ3RAZ2VtX3dvcmthcm91bmRzQHN1c3BlbmQtcmVz
dW1lLWNvbnRleHQuaHRtbAoKICAqIGlndEBrbXNfZmJjb25fZmJ0QGZiYy1zdXNwZW5kOgogICAg
LSBzaGFyZC1za2w6ICAgICAgICAgIFtJTkNPTVBMRVRFXVszM10gKFtmZG8jMTA0MTA4XSkgLT4g
W1BBU1NdWzM0XQogICBbMzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82MzIzL3NoYXJkLXNrbDIvaWd0QGttc19mYmNvbl9mYnRAZmJjLXN1c3BlbmQu
aHRtbAogICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzM4Ny9zaGFyZC1za2wxMC9pZ3RAa21zX2ZiY29uX2ZidEBmYmMtc3VzcGVuZC5o
dG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMnAtcHJpbXNjcm4tY3Vy
LWluZGZiLWRyYXctcHdyaXRlOgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtTS0lQXVszNV0g
KFtmZG8jMTA5MjcxXSkgLT4gW1BBU1NdWzM2XSArMTUgc2ltaWxhciBpc3N1ZXMKICAgWzM1XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMyMy9zaGFy
ZC1oc3cxL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTJwLXByaW1zY3JuLWN1ci1p
bmRmYi1kcmF3LXB3cml0ZS5odG1sCiAgIFszNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzg3L3NoYXJkLWhzdzQvaWd0QGttc19mcm9udGJ1
ZmZlcl90cmFja2luZ0BmYmMtMnAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctcHdyaXRlLmh0bWwK
CiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1yZ2I1NjUtZHJhdy1wd3JpdGU6
CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0ZBSUxdWzM3XSAoW2ZkbyMxMDMxNjddKSAtPiBb
UEFTU11bMzhdICs3IHNpbWlsYXIgaXNzdWVzCiAgIFszN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMjMvc2hhcmQtaWNsYjIvaWd0QGttc19mcm9u
dGJ1ZmZlcl90cmFja2luZ0BmYmMtcmdiNTY1LWRyYXctcHdyaXRlLmh0bWwKICAgWzM4XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzODcvc2hh
cmQtaWNsYjIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtcmdiNTY1LWRyYXctcHdy
aXRlLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYS1jb25zdGFudC1h
bHBoYS1taW46CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzM5XSAoW2ZkbyMxMDgx
NDVdKSAtPiBbUEFTU11bNDBdICsxIHNpbWlsYXIgaXNzdWUKICAgWzM5XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMyMy9zaGFyZC1za2wyL2lndEBr
bXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNvbnN0YW50LWFscGhhLW1pbi5odG1sCiAgIFs0
MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEz
Mzg3L3NoYXJkLXNrbDYvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWEtY29uc3RhbnQt
YWxwaGEtbWluLmh0bWwKCiAgKiBpZ3RAa21zX3BzckBwc3IyX2RwbXM6CiAgICAtIHNoYXJkLWlj
bGI6ICAgICAgICAgW1NLSVBdWzQxXSAoW2ZkbyMxMDk0NDFdKSAtPiBbUEFTU11bNDJdCiAgIFs0
MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMjMv
c2hhcmQtaWNsYjcvaWd0QGttc19wc3JAcHNyMl9kcG1zLmh0bWwKICAgWzQyXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzODcvc2hhcmQtaWNs
YjIvaWd0QGttc19wc3JAcHNyMl9kcG1zLmh0bWwKCiAgKiBpZ3RAcGVyZl9wbXVAcmM2OgogICAg
LSBzaGFyZC1rYmw6ICAgICAgICAgIFtTS0lQXVs0M10gKFtmZG8jMTA5MjcxXSkgLT4gW1BBU1Nd
WzQ0XQogICBbNDNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82MzIzL3NoYXJkLWtibDIvaWd0QHBlcmZfcG11QHJjNi5odG1sCiAgIFs0NF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzg3L3NoYXJk
LWtibDQvaWd0QHBlcmZfcG11QHJjNi5odG1sCgogIAojIyMjIFdhcm5pbmdzICMjIyMKCiAgKiBp
Z3RAa21zX2N1cnNvcl9sZWdhY3lAMngtY3Vyc29yLXZzLWZsaXAtbGVnYWN5OgogICAgLSBzaGFy
ZC1oc3c6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs0NV0gKFtmZG8jMTAzNTQwXSkgLT4gW1NLSVBd
WzQ2XSAoW2ZkbyMxMDkyNzFdKQogICBbNDVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82MzIzL3NoYXJkLWhzdzgvaWd0QGttc19jdXJzb3JfbGVnYWN5
QDJ4LWN1cnNvci12cy1mbGlwLWxlZ2FjeS5odG1sCiAgIFs0Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzg3L3NoYXJkLWhzdzEvaWd0QGtt
c19jdXJzb3JfbGVnYWN5QDJ4LWN1cnNvci12cy1mbGlwLWxlZ2FjeS5odG1sCgogIAogIFtmZG8j
MTAwMDQ3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAw
MDQ3CiAgW2ZkbyMxMDMxNjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDMxNjcKICBbZmRvIzEwMzU0MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwMzU0MAogIFtmZG8jMTA0MTA4XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA0MTA4CiAgW2ZkbyMxMDU0MTFdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDU0MTEKICBbZmRvIzEw
ODE0NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODE0
NQogIFtmZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA4NTY2CiAgW2ZkbyMxMDg2ODZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDg2ODYKICBbZmRvIzEwOTI3MV06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MQogIFtmZG8jMTA5NDQxXTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NDQxCiAgW2ZkbyMxMDk2
NjFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk2NjEK
ICBbZmRvIzExMDY2N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTExMDY2NwogIFtmZG8jMTEwOTEzIF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMDkxMyAKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICgxMCAtPiAxMCkK
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIE5vIGNoYW5nZXMgaW4gcGFydGljaXBh
dGluZyBob3N0cwoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIExpbnV4OiBDSV9E
Uk1fNjMyMyAtPiBQYXRjaHdvcmtfMTMzODcKCiAgQ0lfRFJNXzYzMjM6IGI0NDBhOGY5NzVhNWQ5
ZWE3ODA3NTE3ZTQyMjgwNzdiYzc5NWU5MWUgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9y
Zy9nZngtY2kvbGludXgKICBJR1RfNTA2NDogMjI4NTBjMTkwNjU1MGZiOTdiNDA1YzAxOTI3NWRj
ZmIzNGJlOGNmNyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVs
LWdwdS10b29scwogIFBhdGNod29ya18xMzM4NzogNGI5OTQ3N2YxOTE2NWI0ZDQ1NGJmOGZjMmFl
YjExMjQ0N2RjZWI5NSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51
eAogIHBpZ2xpdF80NTA5OiBmZGM1YTRjYTExMTI0YWI4NDEzYzc5ODg4OTZlZWM0Yzk3MzM2Njk0
IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvcGlnbGl0Cgo9PSBMb2dzID09CgpGb3Ig
bW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTMzODcvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
