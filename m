Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F9810CBA4
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 16:22:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7EDF6E846;
	Thu, 28 Nov 2019 15:22:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5C8C86E844;
 Thu, 28 Nov 2019 15:22:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5443BA0BC6;
 Thu, 28 Nov 2019 15:22:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 28 Nov 2019 15:22:04 -0000
Message-ID: <157495452431.21452.507692528519996437@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191127111742.3271036-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191127111742.3271036-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Copy_across_scheduler_behaviour_flags_across_submit_fen?=
 =?utf-8?q?ces?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IENvcHkgYWNyb3NzIHNjaGVk
dWxlciBiZWhhdmlvdXIgZmxhZ3MgYWNyb3NzIHN1Ym1pdCBmZW5jZXMKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzcwMTA3LwpTdGF0ZSA6IGZhaWx1cmUK
Cj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzc0MzFfZnVs
bCAtPiBQYXRjaHdvcmtfMTU0NjNfZnVsbAo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipGQUlMVVJFKioKCiAg
U2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE1NDYzX2Z1bGwg
YWJzb2x1dGVseSBuZWVkIHRvIGJlCiAgdmVyaWZpZWQgbWFudWFsbHkuCiAgCiAgSWYgeW91IHRo
aW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFu
Z2VzCiAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTU0NjNfZnVsbCwgcGxlYXNlIG5vdGlmeSB5
b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0KICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJl
IG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4KCiAgCgpQb3Nz
aWJsZSBuZXcgaXNzdWVzCi0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIHVua25v
d24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTU0
NjNfZnVsbDoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMg
IyMjIwoKICAqIGlndEBnZW1fZXhlY19yZXVzZUBiYWdnYWdlOgogICAgLSBzaGFyZC1pY2xiOiAg
ICAgICAgIE5PVFJVTiAtPiBbVElNRU9VVF1bMV0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ2My9zaGFyZC1pY2xiNy9pZ3RAZ2Vt
X2V4ZWNfcmV1c2VAYmFnZ2FnZS5odG1sCgogICogaWd0QGttc19iaWdfZmJAeS10aWxlZC04YnBw
LXJvdGF0ZS0wOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsyXSAtPiBbSU5DT01Q
TEVURV1bM10KICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83NDMxL3NoYXJkLXNrbDIvaWd0QGttc19iaWdfZmJAeS10aWxlZC04YnBwLXJvdGF0
ZS0wLmh0bWwKICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNTQ2My9zaGFyZC1za2w5L2lndEBrbXNfYmlnX2ZiQHktdGlsZWQtOGJwcC1y
b3RhdGUtMC5odG1sCgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRo
ZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xNTQ2M19mdWxsIHRoYXQgY29tZSBmcm9tIGtu
b3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgog
ICogaWd0QGdlbV9idXN5QGJ1c3ktdmNzMToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFT
U11bNF0gLT4gW1NLSVBdWzVdIChbZmRvIzExMjA4MF0pICszIHNpbWlsYXIgaXNzdWVzCiAgIFs0
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzMS9z
aGFyZC1pY2xiNC9pZ3RAZ2VtX2J1c3lAYnVzeS12Y3MxLmh0bWwKICAgWzVdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ2My9zaGFyZC1pY2xi
Ni9pZ3RAZ2VtX2J1c3lAYnVzeS12Y3MxLmh0bWwKCiAgKiBpZ3RAZ2VtX2Vpb0B1bndlZGdlLXN0
cmVzczoKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbUEFTU11bNl0gLT4gW0ZBSUxdWzddIChb
ZmRvIzEwOTY2MV0pCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzQzMS9zaGFyZC1zbmI3L2lndEBnZW1fZWlvQHVud2VkZ2Utc3RyZXNzLmh0
bWwKICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNTQ2My9zaGFyZC1zbmI2L2lndEBnZW1fZWlvQHVud2VkZ2Utc3RyZXNzLmh0bWwKCiAg
KiBpZ3RAZ2VtX2V4ZWNfcGFyYWxsZWxAZmRzOgogICAgLSBzaGFyZC10Z2xiOiAgICAgICAgIFtQ
QVNTXVs4XSAtPiBbSU5DT01QTEVURV1bOV0gKFtmZG8jMTExODY3XSkKICAgWzhdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJkLXRnbGI4
L2lndEBnZW1fZXhlY19wYXJhbGxlbEBmZHMuaHRtbAogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDYzL3NoYXJkLXRnbGIzL2lndEBn
ZW1fZXhlY19wYXJhbGxlbEBmZHMuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVl
bXB0LXF1ZXVlLWJzZDI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzEwXSAtPiBb
U0tJUF1bMTFdIChbZmRvIzEwOTI3Nl0pICs0IHNpbWlsYXIgaXNzdWVzCiAgIFsxMF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MzEvc2hhcmQtaWNs
YjQvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtcXVldWUtYnNkMi5odG1sCiAgIFsxMV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDYz
L3NoYXJkLWljbGI2L2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LXF1ZXVlLWJzZDIuaHRt
bAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUB3aWRlLWJzZDoKICAgIC0gc2hhcmQtaWNsYjog
ICAgICAgICBbUEFTU11bMTJdIC0+IFtTS0lQXVsxM10gKFtmZG8jMTEyMTQ2XSkgKzEgc2ltaWxh
ciBpc3N1ZQogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83NDMxL3NoYXJkLWljbGIzL2lndEBnZW1fZXhlY19zY2hlZHVsZUB3aWRlLWJzZC5o
dG1sCiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE1NDYzL3NoYXJkLWljbGIyL2lndEBnZW1fZXhlY19zY2hlZHVsZUB3aWRlLWJzZC5o
dG1sCgogICogaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtaW50ZXJydXB0aWJsZS1m
YXVsdGluZy1yZWxvYy10aHJhc2gtaW5hY3RpdmU6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAg
W1BBU1NdWzE0XSAtPiBbVElNRU9VVF1bMTVdIChbZmRvIzExMjA2OCBdKQogICBbMTRdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJkLWhz
dzEvaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtaW50ZXJydXB0aWJsZS1mYXVsdGlu
Zy1yZWxvYy10aHJhc2gtaW5hY3RpdmUuaHRtbAogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ2My9zaGFyZC1oc3c2L2lndEBnZW1f
cGVyc2lzdGVudF9yZWxvY3NAZm9ya2VkLWludGVycnVwdGlibGUtZmF1bHRpbmctcmVsb2MtdGhy
YXNoLWluYWN0aXZlLmh0bWwKCiAgKiBpZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1p
bnRlcnJ1cHRpYmxlLXRocmFzaGluZzoKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbUEFTU11b
MTZdIC0+IFtGQUlMXVsxN10gKFtmZG8jMTEyMDM3XSkKICAgWzE2XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzMS9zaGFyZC1oc3c3L2lndEBnZW1f
cGVyc2lzdGVudF9yZWxvY3NAZm9ya2VkLWludGVycnVwdGlibGUtdGhyYXNoaW5nLmh0bWwKICAg
WzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTU0NjMvc2hhcmQtaHN3NC9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1
cHRpYmxlLXRocmFzaGluZy5odG1sCgogICogaWd0QGdlbV9wcGd0dEBmbGluay1hbmQtY2xvc2Ut
dm1hLWxlYWs6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW1BBU1NdWzE4XSAtPiBbRkFJTF1b
MTldIChbZmRvIzExMjM5Ml0pCiAgIFsxOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzc0MzEvc2hhcmQtZ2xrNS9pZ3RAZ2VtX3BwZ3R0QGZsaW5rLWFu
ZC1jbG9zZS12bWEtbGVhay5odG1sCiAgIFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDYzL3NoYXJkLWdsazYvaWd0QGdlbV9wcGd0dEBm
bGluay1hbmQtY2xvc2Utdm1hLWxlYWsuaHRtbAoKICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0Bz
eW5jLXVubWFwOgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtQQVNTXVsyMF0gLT4gW0RNRVNH
LVdBUk5dWzIxXSAoW2ZkbyMxMTE4NzBdKQogICBbMjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJkLXNuYjEvaWd0QGdlbV91c2VycHRy
X2JsaXRzQHN5bmMtdW5tYXAuaHRtbAogICBbMjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ2My9zaGFyZC1zbmIyL2lndEBnZW1fdXNlcnB0
cl9ibGl0c0BzeW5jLXVubWFwLmh0bWwKCiAgKiBpZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3luYy11
bm1hcC1hZnRlci1jbG9zZToKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bMjJdIC0+
IFtJTkNPTVBMRVRFXVsyM10gKFtmZG8jMTAzOTI3XSkKICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzMS9zaGFyZC1hcGw0L2lndEBnZW1f
dXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWFmdGVyLWNsb3NlLmh0bWwKICAgWzIzXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0NjMvc2hhcmQt
YXBsMi9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3luYy11bm1hcC1hZnRlci1jbG9zZS5odG1sCgog
ICogaWd0QGk5MTVfcG1fZGNAZGM1LWRwbXM6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BB
U1NdWzI0XSAtPiBbRkFJTF1bMjVdIChbZmRvIzExMTc5NSBdKQogICBbMjRdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJkLWljbGI2L2ln
dEBpOTE1X3BtX2RjQGRjNS1kcG1zLmh0bWwKICAgWzI1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0NjMvc2hhcmQtaWNsYjMvaWd0QGk5MTVf
cG1fZGNAZGM1LWRwbXMuaHRtbAoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNr
OgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtQQVNTXVsyNl0gLT4gW0lOQ09NUExFVEVdWzI3
XSAoW2ZkbyMxMDU0MTFdKQogICBbMjZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJkLXNuYjIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9o
YW5nY2hlY2suaHRtbAogICBbMjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTQ2My9zaGFyZC1zbmI1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVf
aGFuZ2NoZWNrLmh0bWwKCiAgKiBpZ3RAa21zX2JpZ19mYkB5LXRpbGVkLThicHAtcm90YXRlLTE4
MDoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMjhdIC0+IFtJTkNPTVBMRVRFXVsy
OV0gKFtmZG8jMTEyMzQ3XSkKICAgWzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzQzMS9zaGFyZC1za2wxMC9pZ3RAa21zX2JpZ19mYkB5LXRpbGVk
LThicHAtcm90YXRlLTE4MC5odG1sCiAgIFsyOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDYzL3NoYXJkLXNrbDgvaWd0QGttc19iaWdfZmJA
eS10aWxlZC04YnBwLXJvdGF0ZS0xODAuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2xlZ2FjeUAy
eC1sb25nLWZsaXAtdnMtY3Vyc29yLWF0b21pYzoKICAgIC0gc2hhcmQtZ2xrOiAgICAgICAgICBb
UEFTU11bMzBdIC0+IFtGQUlMXVszMV0gKFtmZG8jMTA0ODczXSkKICAgWzMwXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzMS9zaGFyZC1nbGs2L2ln
dEBrbXNfY3Vyc29yX2xlZ2FjeUAyeC1sb25nLWZsaXAtdnMtY3Vyc29yLWF0b21pYy5odG1sCiAg
IFszMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE1NDYzL3NoYXJkLWdsazUvaWd0QGttc19jdXJzb3JfbGVnYWN5QDJ4LWxvbmctZmxpcC12cy1j
dXJzb3ItYXRvbWljLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVy
cnVwdGlibGU6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzMyXSAtPiBbSU5DT01Q
TEVURV1bMzNdIChbZmRvIzEwOTUwN10pCiAgIFszMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MzEvc2hhcmQtc2tsMTAvaWd0QGttc19mbGlwQGZs
aXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0NjMvc2hhcmQtc2tsOS9pZ3RA
a21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGlibGUuaHRtbAogICAgLSBzaGFyZC1o
c3c6ICAgICAgICAgIFtQQVNTXVszNF0gLT4gW0lOQ09NUExFVEVdWzM1XSAoW2ZkbyMxMDM1NDBd
KQogICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83NDMxL3NoYXJkLWhzdzYvaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRp
YmxlLmh0bWwKICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTU0NjMvc2hhcmQtaHN3MS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5k
LWludGVycnVwdGlibGUuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJj
LTFwLXByaW1zY3JuLWluZGZiLW1zZmxpcC1ibHQ6CiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAg
W1BBU1NdWzM2XSAtPiBbRkFJTF1bMzddIChbZmRvIzEwMzE2N10pICs2IHNpbWlsYXIgaXNzdWVz
CiAgIFszNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
Xzc0MzEvc2hhcmQtdGdsYjQvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJp
bXNjcm4taW5kZmItbXNmbGlwLWJsdC5odG1sCiAgIFszN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDYzL3NoYXJkLXRnbGIxL2lndEBrbXNf
ZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLWluZGZiLW1zZmxpcC1ibHQuaHRt
bAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLWluZGZiLXNjYWxlZHByaW1h
cnk6CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW1BBU1NdWzM4XSAtPiBbSU5DT01QTEVURV1b
MzldIChbZmRvIzEwMzY2NV0gLyBbZmRvIzExMjM1Nl0pCiAgIFszOF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MzEvc2hhcmQta2JsNC9pZ3RAa21z
X2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1pbmRmYi1zY2FsZWRwcmltYXJ5Lmh0bWwKICAgWzM5
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0
NjMvc2hhcmQta2JsNC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1pbmRmYi1zY2Fs
ZWRwcmltYXJ5Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1yZ2I1
NjUtZHJhdy1ibHQ6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzQwXSAtPiBbRkFJ
TF1bNDFdIChbZmRvIzEwMzE2N10pICszIHNpbWlsYXIgaXNzdWVzCiAgIFs0MF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MzEvc2hhcmQtaWNsYjMv
aWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtcmdiNTY1LWRyYXctYmx0Lmh0bWwKICAg
WzQxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTU0NjMvc2hhcmQtaWNsYjIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtcmdiNTY1
LWRyYXctYmx0Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQHBzci0xcC1w
cmltc2Nybi1pbmRmYi1wZ2ZsaXAtYmx0OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNT
XVs0Ml0gLT4gW0lOQ09NUExFVEVdWzQzXSAoW2ZkbyMxMDY5NzhdIC8gW2ZkbyMxMDc3MTNdKQog
ICBbNDJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
NDMxL3NoYXJkLWljbGI4L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAcHNyLTFwLXByaW1z
Y3JuLWluZGZiLXBnZmxpcC1ibHQuaHRtbAogICBbNDNdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ2My9zaGFyZC1pY2xiMi9pZ3RAa21zX2Zy
b250YnVmZmVyX3RyYWNraW5nQHBzci0xcC1wcmltc2Nybi1pbmRmYi1wZ2ZsaXAtYmx0Lmh0bWwK
CiAgKiBpZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHN1c3BlbmQtcmVhZC1jcmMtcGlwZS1hOgogICAg
LSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVs0NF0gLT4gW0RNRVNHLVdBUk5dWzQ1XSAoW2Zk
byMxMDg1NjZdKSArMyBzaW1pbGFyIGlzc3VlcwogICBbNDRdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJkLWtibDMvaWd0QGttc19waXBl
X2NyY19iYXNpY0BzdXNwZW5kLXJlYWQtY3JjLXBpcGUtYS5odG1sCiAgIFs0NV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDYzL3NoYXJkLWti
bDYvaWd0QGttc19waXBlX2NyY19iYXNpY0BzdXNwZW5kLXJlYWQtY3JjLXBpcGUtYS5odG1sCgog
ICogaWd0QGttc19wbGFuZUBwaXhlbC1mb3JtYXQtcGlwZS1hLXBsYW5lcy1zb3VyY2UtY2xhbXBp
bmc6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzQ2XSAtPiBbSU5DT01QTEVURV1b
NDddIChbZmRvIzExMjM5N10pCiAgIFs0Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzc0MzEvc2hhcmQtc2tsNS9pZ3RAa21zX3BsYW5lQHBpeGVsLWZv
cm1hdC1waXBlLWEtcGxhbmVzLXNvdXJjZS1jbGFtcGluZy5odG1sCiAgIFs0N106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDYzL3NoYXJkLXNr
bDQvaWd0QGttc19wbGFuZUBwaXhlbC1mb3JtYXQtcGlwZS1hLXBsYW5lcy1zb3VyY2UtY2xhbXBp
bmcuaHRtbAoKICAqIGlndEBrbXNfc2V0bW9kZUBiYXNpYzoKICAgIC0gc2hhcmQtYXBsOiAgICAg
ICAgICBbUEFTU11bNDhdIC0+IFtGQUlMXVs0OV0gKFtmZG8jOTk5MTJdKQogICBbNDhdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJkLWFw
bDMvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKICAgWzQ5XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0NjMvc2hhcmQtYXBsMy9pZ3RAa21z
X3NldG1vZGVAYmFzaWMuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0
QGdlbV9jdHhfaXNvbGF0aW9uQHZlY3MwLXMzOgogICAgLSBzaGFyZC10Z2xiOiAgICAgICAgIFtJ
TkNPTVBMRVRFXVs1MF0gKFtmZG8jMTExODMyXSkgLT4gW1BBU1NdWzUxXQogICBbNTBdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJkLXRn
bGIxL2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2ZWNzMC1zMy5odG1sCiAgIFs1MV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDYzL3NoYXJkLXRn
bGI0L2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2ZWNzMC1zMy5odG1sCgogICogaWd0QGdlbV9jdHhf
cGVyc2lzdGVuY2VAc21va2V0ZXN0OgogICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtUSU1FT1VU
XVs1Ml0gKFtmZG8jMTEyNDA0XSkgLT4gW1BBU1NdWzUzXQogICBbNTJdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJkLWdsazcvaWd0QGdl
bV9jdHhfcGVyc2lzdGVuY2VAc21va2V0ZXN0Lmh0bWwKICAgWzUzXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0NjMvc2hhcmQtZ2xrMy9pZ3RA
Z2VtX2N0eF9wZXJzaXN0ZW5jZUBzbW9rZXRlc3QuaHRtbAoKICAqIGlndEBnZW1fY3R4X3BlcnNp
c3RlbmNlQHZjczEtbWl4ZWQtcHJvY2VzczoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJ
UF1bNTRdIChbZmRvIzEwOTI3Nl0gLyBbZmRvIzExMjA4MF0pIC0+IFtQQVNTXVs1NV0gKzEgc2lt
aWxhciBpc3N1ZQogICBbNTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV83NDMxL3NoYXJkLWljbGI4L2lndEBnZW1fY3R4X3BlcnNpc3RlbmNlQHZjczEt
bWl4ZWQtcHJvY2Vzcy5odG1sCiAgIFs1NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDYzL3NoYXJkLWljbGIyL2lndEBnZW1fY3R4X3BlcnNp
c3RlbmNlQHZjczEtbWl4ZWQtcHJvY2Vzcy5odG1sCgogICogaWd0QGdlbV9jdHhfc3dpdGNoQGxl
Z2FjeS1kZWZhdWx0OgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs1Nl0g
KFtmZG8jMTAzNTQwXSkgLT4gW1BBU1NdWzU3XQogICBbNTZdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJkLWhzdzcvaWd0QGdlbV9jdHhf
c3dpdGNoQGxlZ2FjeS1kZWZhdWx0Lmh0bWwKICAgWzU3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0NjMvc2hhcmQtaHN3OC9pZ3RAZ2VtX2N0
eF9zd2l0Y2hAbGVnYWN5LWRlZmF1bHQuaHRtbAoKICAqIGlndEBnZW1fZXhlY19jcmVhdGVAZm9y
a2VkOgogICAgLSBzaGFyZC10Z2xiOiAgICAgICAgIFtJTkNPTVBMRVRFXVs1OF0gKFtmZG8jMTA4
ODM4XSAvIFtmZG8jMTExNzQ3XSkgLT4gW1BBU1NdWzU5XQogICBbNThdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJkLXRnbGI2L2lndEBn
ZW1fZXhlY19jcmVhdGVAZm9ya2VkLmh0bWwKICAgWzU5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0NjMvc2hhcmQtdGdsYjUvaWd0QGdlbV9l
eGVjX2NyZWF0ZUBmb3JrZWQuaHRtbAoKICAqIGlndEBnZW1fZXhlY19yZWxvY0BiYXNpYy13Yy1j
cHUtYWN0aXZlOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtETUVTRy1XQVJOXVs2MF0gKFtm
ZG8jMTA2MTA3XSkgLT4gW1BBU1NdWzYxXQogICBbNjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJkLXNrbDkvaWd0QGdlbV9leGVjX3Jl
bG9jQGJhc2ljLXdjLWNwdS1hY3RpdmUuaHRtbAogICBbNjFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ2My9zaGFyZC1za2w4L2lndEBnZW1f
ZXhlY19yZWxvY0BiYXNpYy13Yy1jcHUtYWN0aXZlLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2No
ZWR1bGVAcHJlZW1wdC1vdGhlci1jaGFpbi1ic2Q6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAg
W1NLSVBdWzYyXSAoW2ZkbyMxMTIxNDZdKSAtPiBbUEFTU11bNjNdCiAgIFs2Ml06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MzEvc2hhcmQtaWNsYjQv
aWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtb3RoZXItY2hhaW4tYnNkLmh0bWwKICAgWzYz
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0
NjMvc2hhcmQtaWNsYjYvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtb3RoZXItY2hhaW4t
YnNkLmh0bWwKCiAgKiBpZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRp
YmxlLXRocmFzaGluZzoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbRkFJTF1bNjRdIChbZmRv
IzExMjAzN10pIC0+IFtQQVNTXVs2NV0KICAgWzY0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzMS9zaGFyZC1rYmwxL2lndEBnZW1fcGVyc2lzdGVu
dF9yZWxvY3NAZm9ya2VkLWludGVycnVwdGlibGUtdGhyYXNoaW5nLmh0bWwKICAgWzY1XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0NjMvc2hh
cmQta2JsMi9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRpYmxlLXRo
cmFzaGluZy5odG1sCgogICogaWd0QGdlbV9wcGd0dEBmbGluay1hbmQtY2xvc2Utdm1hLWxlYWs6
CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW0ZBSUxdWzY2XSAoW2ZkbyMxMTIzOTJdKSAtPiBb
UEFTU11bNjddCiAgIFs2Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzc0MzEvc2hhcmQta2JsMi9pZ3RAZ2VtX3BwZ3R0QGZsaW5rLWFuZC1jbG9zZS12
bWEtbGVhay5odG1sCiAgIFs2N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE1NDYzL3NoYXJkLWtibDIvaWd0QGdlbV9wcGd0dEBmbGluay1hbmQt
Y2xvc2Utdm1hLWxlYWsuaHRtbAoKICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0BkbWFidWYtdW5z
eW5jOgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtETUVTRy1XQVJOXVs2OF0gKFtmZG8jMTEx
ODcwXSkgLT4gW1BBU1NdWzY5XQogICBbNjhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJkLXNuYjQvaWd0QGdlbV91c2VycHRyX2JsaXRz
QGRtYWJ1Zi11bnN5bmMuaHRtbAogICBbNjldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ2My9zaGFyZC1zbmIyL2lndEBnZW1fdXNlcnB0cl9i
bGl0c0BkbWFidWYtdW5zeW5jLmh0bWwKCiAgKiBpZ3RAaTkxNV9zdXNwZW5kQGZlbmNlLXJlc3Rv
cmUtdGlsZWQydW50aWxlZDoKICAgIC0gc2hhcmQtdGdsYjogICAgICAgICBbSU5DT01QTEVURV1b
NzBdIChbZmRvIzExMTgzMl0gLyBbZmRvIzExMTg1MF0pIC0+IFtQQVNTXVs3MV0gKzMgc2ltaWxh
ciBpc3N1ZXMKICAgWzcwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzQzMS9zaGFyZC10Z2xiNC9pZ3RAaTkxNV9zdXNwZW5kQGZlbmNlLXJlc3RvcmUt
dGlsZWQydW50aWxlZC5odG1sCiAgIFs3MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDYzL3NoYXJkLXRnbGIyL2lndEBpOTE1X3N1c3BlbmRA
ZmVuY2UtcmVzdG9yZS10aWxlZDJ1bnRpbGVkLmh0bWwKCiAgKiBpZ3RAaTkxNV9zdXNwZW5kQHN5
c2ZzLXJlYWRlcjoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bNzJdIChb
ZmRvIzEwODU2Nl0pIC0+IFtQQVNTXVs3M10gKzMgc2ltaWxhciBpc3N1ZXMKICAgWzcyXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzMS9zaGFyZC1h
cGw0L2lndEBpOTE1X3N1c3BlbmRAc3lzZnMtcmVhZGVyLmh0bWwKICAgWzczXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0NjMvc2hhcmQtYXBs
My9pZ3RAaTkxNV9zdXNwZW5kQHN5c2ZzLXJlYWRlci5odG1sCgogICogaWd0QGttc19kcmF3X2Ny
Y0BkcmF3LW1ldGhvZC14cmdiODg4OC1yZW5kZXIteXRpbGVkOgogICAgLSBzaGFyZC1rYmw6ICAg
ICAgICAgIFtJTkNPTVBMRVRFXVs3NF0gKFtmZG8jMTAzNjY1XSkgLT4gW1BBU1NdWzc1XQogICBb
NzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDMx
L3NoYXJkLWtibDYvaWd0QGttc19kcmF3X2NyY0BkcmF3LW1ldGhvZC14cmdiODg4OC1yZW5kZXIt
eXRpbGVkLmh0bWwKICAgWzc1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTU0NjMvc2hhcmQta2JsNy9pZ3RAa21zX2RyYXdfY3JjQGRyYXctbWV0
aG9kLXhyZ2I4ODg4LXJlbmRlci15dGlsZWQuaHRtbAoKICAqIGlndEBrbXNfZmJjb25fZmJ0QGZi
Yy1zdXNwZW5kOgogICAgLSBzaGFyZC10Z2xiOiAgICAgICAgIFtJTkNPTVBMRVRFXVs3Nl0gKFtm
ZG8jMTExNzQ3XSAvIFtmZG8jMTExODMyXSAvIFtmZG8jMTExODUwXSkgLT4gW1BBU1NdWzc3XQog
ICBbNzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
NDMxL3NoYXJkLXRnbGI3L2lndEBrbXNfZmJjb25fZmJ0QGZiYy1zdXNwZW5kLmh0bWwKICAgWzc3
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0
NjMvc2hhcmQtdGdsYjEvaWd0QGttc19mYmNvbl9mYnRAZmJjLXN1c3BlbmQuaHRtbAoKICAqIGln
dEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVycnVwdGlibGU6CiAgICAtIHNo
YXJkLWFwbDogICAgICAgICAgW0ZBSUxdWzc4XSAoW2ZkbyMxMDUzNjNdKSAtPiBbUEFTU11bNzld
CiAgIFs3OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
Xzc0MzEvc2hhcmQtYXBsMi9pZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay1pbnRl
cnJ1cHRpYmxlLmh0bWwKICAgWzc5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTU0NjMvc2hhcmQtYXBsNC9pZ3RAa21zX2ZsaXBAZmxpcC12cy1l
eHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12
cy1zdXNwZW5kLWludGVycnVwdGlibGU6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW0lOQ09N
UExFVEVdWzgwXSAoW2ZkbyMxMDU0MTFdKSAtPiBbUEFTU11bODFdCiAgIFs4MF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MzEvc2hhcmQtc25iMS9p
Z3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGlibGUuaHRtbAogICBbODFdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ2My9z
aGFyZC1zbmI2L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZS5odG1s
CgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4taW5kZmIt
cGxmbGlwLWJsdDoKICAgIC0gc2hhcmQtdGdsYjogICAgICAgICBbRkFJTF1bODJdIChbZmRvIzEw
MzE2N10pIC0+IFtQQVNTXVs4M10gKzEgc2ltaWxhciBpc3N1ZQogICBbODJdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJkLXRnbGIxL2ln
dEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLWluZGZiLXBsZmxpcC1i
bHQuaHRtbAogICBbODNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNTQ2My9zaGFyZC10Z2xiMS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5n
QGZiYy0xcC1wcmltc2Nybi1pbmRmYi1wbGZsaXAtYmx0Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250
YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1zaHJmYi1wbGZsaXAtYmx0OgogICAgLSBz
aGFyZC1rYmw6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs4NF0gKFtmZG8jMTAzNjY1XSAvIFtmZG8j
MTEyMzU2XSkgLT4gW1BBU1NdWzg1XQogICBbODRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJkLWtibDEvaWd0QGttc19mcm9udGJ1ZmZl
cl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tc2hyZmItcGxmbGlwLWJsdC5odG1sCiAgIFs4NV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDYz
L3NoYXJkLWtibDIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4t
c2hyZmItcGxmbGlwLWJsdC5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bm
YmMtMXAtcHJpbXNjcm4tc3ByLWluZGZiLWRyYXctbW1hcC13YzoKICAgIC0gc2hhcmQtdGdsYjog
ICAgICAgICBbSU5DT01QTEVURV1bODZdIChbZmRvIzExMTg4NF0pIC0+IFtQQVNTXVs4N10KICAg
Wzg2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQz
MS9zaGFyZC10Z2xiMy9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Ny
bi1zcHItaW5kZmItZHJhdy1tbWFwLXdjLmh0bWwKICAgWzg3XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0NjMvc2hhcmQtdGdsYjkvaWd0QGtt
c19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tc3ByLWluZGZiLWRyYXctbW1h
cC13Yy5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtc3VzcGVuZDoK
ICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bODhdIChbZmRvIzEwODU2Nl0p
IC0+IFtQQVNTXVs4OV0gKzkgc2ltaWxhciBpc3N1ZXMKICAgWzg4XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzMS9zaGFyZC1rYmwyL2lndEBrbXNf
ZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQuaHRtbAogICBbODldOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ2My9zaGFyZC1rYmw0
L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQuaHRtbAogICAgLSBzaGFy
ZC1pY2xiOiAgICAgICAgIFtJTkNPTVBMRVRFXVs5MF0gKFtmZG8jMTA3NzEzXSkgLT4gW1BBU1Nd
WzkxXQogICBbOTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV83NDMxL3NoYXJkLWljbGI3L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1
c3BlbmQuaHRtbAogICBbOTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNTQ2My9zaGFyZC1pY2xiOC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNr
aW5nQGZiYy1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2xlYXNlQGxlYXNlX3VubGVhc2VkX2Nv
bm5lY3RvcjoKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbU0tJUF1bOTJdIChbZmRvIzEwOTI3
MV0pIC0+IFtQQVNTXVs5M10KICAgWzkyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzQzMS9zaGFyZC1zbmIyL2lndEBrbXNfbGVhc2VAbGVhc2VfdW5s
ZWFzZWRfY29ubmVjdG9yLmh0bWwKICAgWzkzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0NjMvc2hhcmQtc25iNi9pZ3RAa21zX2xlYXNlQGxl
YXNlX3VubGVhc2VkX2Nvbm5lY3Rvci5odG1sCgogICogaWd0QGttc19wbGFuZV9hbHBoYV9ibGVu
ZEBwaXBlLWEtY292ZXJhZ2UtN2VmYzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJTF1b
OTRdIChbZmRvIzEwODE0NV0pIC0+IFtQQVNTXVs5NV0KICAgWzk0XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzMS9zaGFyZC1za2w2L2lndEBrbXNf
cGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNvdmVyYWdlLTdlZmMuaHRtbAogICBbOTVdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ2My9zaGFy
ZC1za2w5L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNvdmVyYWdlLTdlZmMuaHRt
bAoKICAqIGlndEBrbXNfcHNyQHBzcjJfc3ByaXRlX2JsdDoKICAgIC0gc2hhcmQtaWNsYjogICAg
ICAgICBbU0tJUF1bOTZdIChbZmRvIzEwOTQ0MV0pIC0+IFtQQVNTXVs5N10gKzEgc2ltaWxhciBp
c3N1ZQogICBbOTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV83NDMxL3NoYXJkLWljbGIzL2lndEBrbXNfcHNyQHBzcjJfc3ByaXRlX2JsdC5odG1sCiAg
IFs5N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE1NDYzL3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfc3ByaXRlX2JsdC5odG1sCgogICog
aWd0QGttc19wc3JAcHNyMl9zdXNwZW5kOgogICAgLSBzaGFyZC10Z2xiOiAgICAgICAgIFtETUVT
Ry1XQVJOXVs5OF0gKFtmZG8jMTExNjAwXSkgLT4gW1BBU1NdWzk5XQogICBbOThdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJkLXRnbGI1
L2lndEBrbXNfcHNyQHBzcjJfc3VzcGVuZC5odG1sCiAgIFs5OV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDYzL3NoYXJkLXRnbGI5L2lndEBr
bXNfcHNyQHBzcjJfc3VzcGVuZC5odG1sCgogICogaWd0QHBlcmZfcG11QGluaXQtYnVzeS12Y3Mx
OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVsxMDBdIChbZmRvIzExMjA4MF0pIC0+
IFtQQVNTXVsxMDFdICs5IHNpbWlsYXIgaXNzdWVzCiAgIFsxMDBdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJkLWljbGI1L2lndEBwZXJm
X3BtdUBpbml0LWJ1c3ktdmNzMS5odG1sCiAgIFsxMDFdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ2My9zaGFyZC1pY2xiMS9pZ3RAcGVyZl9w
bXVAaW5pdC1idXN5LXZjczEuaHRtbAoKICAqIGlndEBwcmltZV92Z2VtQGZlbmNlLXdhaXQtYnNk
MjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bMTAyXSAoW2ZkbyMxMDkyNzZdKSAt
PiBbUEFTU11bMTAzXSArNSBzaW1pbGFyIGlzc3VlcwogICBbMTAyXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzMS9zaGFyZC1pY2xiMy9pZ3RAcHJp
bWVfdmdlbUBmZW5jZS13YWl0LWJzZDIuaHRtbAogICBbMTAzXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0NjMvc2hhcmQtaWNsYjIvaWd0QHBy
aW1lX3ZnZW1AZmVuY2Utd2FpdC1ic2QyLmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAq
IGlndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLW5vbnByaXY6CiAgICAtIHNoYXJkLWljbGI6ICAg
ICAgICAgW0ZBSUxdWzEwNF0gKFtmZG8jMTExMzI5XSkgLT4gW1NLSVBdWzEwNV0gKFtmZG8jMTA5
Mjc2XSAvIFtmZG8jMTEyMDgwXSkKICAgWzEwNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MzEvc2hhcmQtaWNsYjQvaWd0QGdlbV9jdHhfaXNvbGF0
aW9uQHZjczEtbm9ucHJpdi5odG1sCiAgIFsxMDVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ2My9zaGFyZC1pY2xiNi9pZ3RAZ2VtX2N0eF9p
c29sYXRpb25AdmNzMS1ub25wcml2Lmh0bWwKCiAgKiBpZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmNz
Mi1kaXJ0eS1jcmVhdGU6CiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW1NLSVBdWzEwNl0gKFtm
ZG8jMTEyMDgwXSkgLT4gW1NLSVBdWzEwN10gKFtmZG8jMTExOTEyXSAvIFtmZG8jMTEyMDgwXSkK
ICAgWzEwNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
Xzc0MzEvc2hhcmQtdGdsYjkvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczItZGlydHktY3JlYXRl
Lmh0bWwKICAgWzEwN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE1NDYzL3NoYXJkLXRnbGI3L2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MyLWRp
cnR5LWNyZWF0ZS5odG1sCgogICogaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczItZGlydHktc3dp
dGNoOgogICAgLSBzaGFyZC10Z2xiOiAgICAgICAgIFtTS0lQXVsxMDhdIChbZmRvIzExMTkxMl0g
LyBbZmRvIzExMjA4MF0pIC0+IFtTS0lQXVsxMDldIChbZmRvIzExMjA4MF0pCiAgIFsxMDhdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJk
LXRnbGI1L2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MyLWRpcnR5LXN3aXRjaC5odG1sCiAgIFsx
MDldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NTQ2My9zaGFyZC10Z2xiOS9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmNzMi1kaXJ0eS1zd2l0Y2gu
aHRtbAoKICAqIGlndEBnZW1fZWlvQGttczoKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbSU5D
T01QTEVURV1bMTEwXSAoW2ZkbyMxMDU0MTFdKSAtPiBbRE1FU0ctV0FSTl1bMTExXSAoW2ZkbyMg
MTEyMDAwIF0gLyBbZmRvIzExMTc4MV0gLyBbZmRvIzExMjAwMV0pCiAgIFsxMTBdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDMxL3NoYXJkLXNuYjYv
aWd0QGdlbV9laW9Aa21zLmh0bWwKICAgWzExMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDYzL3NoYXJkLXNuYjEvaWd0QGdlbV9laW9Aa21z
Lmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAZGVlcC1yZW5kZXI6CiAgICAtIHNoYXJk
LXRnbGI6ICAgICAgICAgW0lOQ09NUExFVEVdWzExMl0gKFtmZG8jMTExNjcxXSkgLT4gW0ZBSUxd
WzExM10gKFtmZG8jMTExNjQ2XSkKICAgWzExMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MzEvc2hhcmQtdGdsYjcvaWd0QGdlbV9leGVjX3NjaGVk
dWxlQGRlZXAtcmVuZGVyLmh0bWwKICAgWzExM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDYzL3NoYXJkLXRnbGIzL2lndEBnZW1fZXhlY19z
Y2hlZHVsZUBkZWVwLXJlbmRlci5odG1sCgogICogaWd0QGdlbV91c2VycHRyX2JsaXRzQHN5bmMt
dW5tYXAtYWZ0ZXItY2xvc2U6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW0RNRVNHLVdBUk5d
WzExNF0gKFtmZG8jMTEwNzg5XSAvIFtmZG8jMTExODcwXSkgLT4gW0RNRVNHLVdBUk5dWzExNV0g
KFtmZG8jMTExODcwXSkKICAgWzExNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzc0MzEvc2hhcmQtc25iNi9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3lu
Yy11bm1hcC1hZnRlci1jbG9zZS5odG1sCiAgIFsxMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ2My9zaGFyZC1zbmI3L2lndEBnZW1fdXNl
cnB0cl9ibGl0c0BzeW5jLXVubWFwLWFmdGVyLWNsb3NlLmh0bWwKCiAgCiAge25hbWV9OiBUaGlz
IGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4gY29t
cHV0aW5nCiAgICAgICAgICB0aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBX
QVJOSU5HLCBvciBGQUlMVVJFKS4KCiAgW2ZkbyMgMTEyMDAwIF06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPSAxMTIwMDAgCiAgW2ZkbyMxMDMxNjddOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxNjcKICBbZmRvIzEw
MzU0MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzU0
MAogIFtmZG8jMTAzNjY1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTAzNjY1CiAgW2ZkbyMxMDM5MjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDM5MjcKICBbZmRvIzEwNDg3M106IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNDg3MwogIFtmZG8jMTA1MzYzXTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1MzYzCiAgW2ZkbyMxMDU0
MTFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDU0MTEK
ICBbZmRvIzEwNjEwN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwNjEwNwogIFtmZG8jMTA2OTc4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTA2OTc4CiAgW2ZkbyMxMDc3MTNdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTMKICBbZmRvIzEwODE0NV06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODE0NQogIFtmZG8jMTA4NTY2
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NTY2CiAg
W2ZkbyMxMDg4MzhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDg4MzgKICBbZmRvIzEwOTI3MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwOTI3MQogIFtmZG8jMTA5Mjc2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5Mjc2CiAgW2ZkbyMxMDk0NDFdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk0NDEKICBbZmRvIzEwOTUwN106
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTUwNwogIFtm
ZG8jMTA5NjYxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA5NjYxCiAgW2ZkbyMxMTA3ODldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMTA3ODkKICBbZmRvIzExMTMyOV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTMyOQogIFtmZG8jMTExNjAwXTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNjAwCiAgW2ZkbyMxMTE2NDZdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE2NDYKICBbZmRv
IzExMTY3MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MTY3MQogIFtmZG8jMTExNzQ3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTExNzQ3CiAgW2ZkbyMxMTE3ODFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE3ODEKICBbZmRvIzExMTc5NSBdOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE3OTUgCiAgW2ZkbyMxMTE4MzJdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE4MzIKICBbZmRv
IzExMTg1MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MTg1MAogIFtmZG8jMTExODY3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTExODY3CiAgW2ZkbyMxMTE4NzBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE4NzAKICBbZmRvIzExMTg4NF06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTg4NAogIFtmZG8jMTExOTEyXTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExOTEyCiAgW2ZkbyMx
MTIwMDFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIw
MDEKICBbZmRvIzExMjAzN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMjAzNwogIFtmZG8jMTEyMDY4IF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTExMjA2OCAKICBbZmRvIzExMjA4MF06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjA4MAogIFtmZG8jMTEyMTQ2XTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMTQ2CiAgW2ZkbyMx
MTIzNDddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIz
NDcKICBbZmRvIzExMjM1Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMjM1NgogIFtmZG8jMTEyMzkyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMzkyCiAgW2ZkbyMxMTIzOTddOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIzOTcKICBbZmRvIzExMjQwNF06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjQwNAogIFtmZG8jOTk5
MTJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD05OTkxMgoK
ClBhcnRpY2lwYXRpbmcgaG9zdHMgKDExIC0+IDExKQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KCiAgTm8gY2hhbmdlcyBpbiBwYXJ0aWNpcGF0aW5nIGhvc3RzCgoKQnVpbGQgY2hhbmdl
cwotLS0tLS0tLS0tLS0tCgogICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBD
SV9EUk1fNzQzMSAtPiBQYXRjaHdvcmtfMTU0NjMKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAg
Q0lfRFJNXzc0MzE6IDFlMjMzOWVkOTBkNTU4YzRiYjFkMTU0YjBlYTJhNTFlMTFkYTgxOTYgQCBn
aXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTMxMDogZDFl
YTYyYjNmNzU5ZjEwZmY2ODYwNTYxYmE4MmU1YzQ5MDI1MTFkMyBAIGdpdDovL2Fub25naXQuZnJl
ZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xNTQ2Mzog
MzhkMzVkOTk1YjcyZGJhZjg2ODJkZTUwMTYyZDE5ZjFjYzdmYjNkYyBAIGdpdDovL2Fub25naXQu
ZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIHBpZ2xpdF80NTA5OiBmZGM1YTRjYTExMTI0
YWI4NDEzYzc5ODg4OTZlZWM0Yzk3MzM2Njk0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5v
cmcvcGlnbGl0Cgo9PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0NjMvaW5kZXguaHRtbApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
