Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA5863FAE
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 05:44:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA895892DE;
	Wed, 10 Jul 2019 03:44:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1C76E892DB;
 Wed, 10 Jul 2019 03:44:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 10F5CA0071;
 Wed, 10 Jul 2019 03:44:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 10 Jul 2019 03:44:41 -0000
Message-ID: <20190710034441.4424.64945@emeril.freedesktop.org>
References: <20190709130303.27990-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190709130303.27990-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Lock_the_engine_while_dumping_the_active_request_=28rev?=
 =?utf-8?q?2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IExvY2sgdGhlIGVuZ2luZSB3
aGlsZSBkdW1waW5nIHRoZSBhY3RpdmUgcmVxdWVzdCAocmV2MikKVVJMICAgOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYzNDQyLwpTdGF0ZSA6IHN1Y2Nlc3MKCj09
IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzY0NDFfZnVsbCAt
PiBQYXRjaHdvcmtfMTM1ODNfZnVsbAo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipTVUNDRVNTKioKCiAgTm8g
cmVncmVzc2lvbnMgZm91bmQuCgogIAoKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJl
IGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTM1ODNfZnVsbCB0aGF0IGNvbWUg
ZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQg
IyMjIwoKICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkB2ZWNzMC1zMzoKICAgIC0gc2hhcmQtYXBs
OiAgICAgICAgICBbUEFTU11bMV0gLT4gW0RNRVNHLVdBUk5dWzJdIChbZmRvIzEwODU2Nl0pICsx
IHNpbWlsYXIgaXNzdWUKICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82NDQxL3NoYXJkLWFwbDIvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZlY3Mw
LXMzLmh0bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzU4My9zaGFyZC1hcGw0L2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2ZWNzMC1z
My5odG1sCgogICogaWd0QGttc19jb2xvckBwaXBlLWMtY3RtLWdyZWVuLXRvLXJlZDoKICAgIC0g
c2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bM10gLT4gW0ZBSUxdWzRdIChbZmRvIzEwNzIwMV0p
ICsxIHNpbWlsYXIgaXNzdWUKICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82NDQxL3NoYXJkLXNrbDIvaWd0QGttc19jb2xvckBwaXBlLWMtY3Rt
LWdyZWVuLXRvLXJlZC5odG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1ODMvc2hhcmQtc2tsNS9pZ3RAa21zX2NvbG9yQHBpcGUt
Yy1jdG0tZ3JlZW4tdG8tcmVkLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5n
QGZiYy0xcC1wcmltc2Nybi1jdXItaW5kZmItZHJhdy1yZW5kZXI6CiAgICAtIHNoYXJkLWljbGI6
ICAgICAgICAgW1BBU1NdWzVdIC0+IFtGQUlMXVs2XSAoW2ZkbyMxMDMxNjddKSArOCBzaW1pbGFy
IGlzc3VlcwogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY0NDEvc2hhcmQtaWNsYjEvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMt
MXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctcmVuZGVyLmh0bWwKICAgWzZdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzU4My9zaGFyZC1pY2xi
Mi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1jdXItaW5kZmIt
ZHJhdy1yZW5kZXIuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNv
bnN0YW50LWFscGhhLW1pbjoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bN10gLT4g
W0ZBSUxdWzhdIChbZmRvIzEwODE0NV0pCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQ0MS9zaGFyZC1za2wyL2lndEBrbXNfcGxhbmVfYWxw
aGFfYmxlbmRAcGlwZS1jLWNvbnN0YW50LWFscGhhLW1pbi5odG1sCiAgIFs4XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1ODMvc2hhcmQtc2ts
NS9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYy1jb25zdGFudC1hbHBoYS1taW4uaHRt
bAoKICAqIGlndEBrbXNfcHNyQHBzcjJfY3Vyc29yX2JsdDoKICAgIC0gc2hhcmQtaWNsYjogICAg
ICAgICBbUEFTU11bOV0gLT4gW1NLSVBdWzEwXSAoW2ZkbyMxMDk0NDFdKQogICBbOV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0NDEvc2hhcmQtaWNs
YjIvaWd0QGttc19wc3JAcHNyMl9jdXJzb3JfYmx0Lmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1ODMvc2hhcmQtaWNsYjgv
aWd0QGttc19wc3JAcHNyMl9jdXJzb3JfYmx0Lmh0bWwKCiAgKiBpZ3RAa21zX3ZibGFua0BwaXBl
LWEtd2FpdC1idXN5LWhhbmc6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzExXSAt
PiBbSU5DT01QTEVURV1bMTJdIChbZmRvIzEwNzcxM10pCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0NDEvc2hhcmQtaWNsYjUvaWd0QGtt
c192YmxhbmtAcGlwZS1hLXdhaXQtYnVzeS1oYW5nLmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1ODMvc2hhcmQtaWNsYjcv
aWd0QGttc192YmxhbmtAcGlwZS1hLXdhaXQtYnVzeS1oYW5nLmh0bWwKCiAgCiMjIyMgUG9zc2li
bGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fZXhlY19iYWxhbmNlckBzbW9rZToKICAgIC0gc2hh
cmQtaWNsYjogICAgICAgICBbU0tJUF1bMTNdIChbZmRvIzExMDg1NF0pIC0+IFtQQVNTXVsxNF0K
ICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjQ0MS9zaGFyZC1pY2xiNy9pZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAc21va2UuaHRtbAogICBbMTRd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzU4
My9zaGFyZC1pY2xiNC9pZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAc21va2UuaHRtbAoKICAqIGlndEBp
OTE1X3N1c3BlbmRAZmVuY2UtcmVzdG9yZS10aWxlZDJ1bnRpbGVkOgogICAgLSBzaGFyZC1hcGw6
ICAgICAgICAgIFtETUVTRy1XQVJOXVsxNV0gKFtmZG8jMTA4NTY2XSkgLT4gW1BBU1NdWzE2XSAr
NCBzaW1pbGFyIGlzc3VlcwogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82NDQxL3NoYXJkLWFwbDIvaWd0QGk5MTVfc3VzcGVuZEBmZW5jZS1y
ZXN0b3JlLXRpbGVkMnVudGlsZWQuaHRtbAogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzU4My9zaGFyZC1hcGwxL2lndEBpOTE1X3N1
c3BlbmRAZmVuY2UtcmVzdG9yZS10aWxlZDJ1bnRpbGVkLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNv
cl9jcmNAcGlwZS1jLWN1cnNvci0xMjh4NDItb25zY3JlZW46CiAgICAtIHNoYXJkLWljbGI6ICAg
ICAgICAgW0lOQ09NUExFVEVdWzE3XSAoW2ZkbyMxMDc3MTNdKSAtPiBbUEFTU11bMThdCiAgIFsx
N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0NDEv
c2hhcmQtaWNsYjEvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYy1jdXJzb3ItMTI4eDQyLW9uc2Ny
ZWVuLmh0bWwKICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTM1ODMvc2hhcmQtaWNsYjcvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYy1j
dXJzb3ItMTI4eDQyLW9uc2NyZWVuLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNr
aW5nQGZiYy1zdXNwZW5kOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtJTkNPTVBMRVRFXVsx
OV0gKFtmZG8jMTAzOTI3XSkgLT4gW1BBU1NdWzIwXQogICBbMTldOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDQxL3NoYXJkLWFwbDcvaWd0QGttc19m
cm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtc3VzcGVuZC5odG1sCiAgIFsyMF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNTgzL3NoYXJkLWFwbDcv
aWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtc3VzcGVuZC5odG1sCgogICogaWd0QGtt
c19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tc2hyZmItcGxmbGlwLWJs
dDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbRkFJTF1bMjFdIChbZmRvIzEwMzE2N10pIC0+
IFtQQVNTXVsyMl0gKzQgc2ltaWxhciBpc3N1ZXMKICAgWzIxXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQ0MS9zaGFyZC1pY2xiNC9pZ3RAa21zX2Zy
b250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1zaHJmYi1wbGZsaXAtYmx0Lmh0
bWwKICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTM1ODMvc2hhcmQtaWNsYjEvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNw
c3ItMXAtcHJpbXNjcm4tc2hyZmItcGxmbGlwLWJsdC5odG1sCgogICogaWd0QGttc19wbGFuZV9h
bHBoYV9ibGVuZEBwaXBlLWItY292ZXJhZ2UtN2VmYzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAg
ICBbRkFJTF1bMjNdIChbZmRvIzEwODE0NV0gLyBbZmRvIzExMDQwM10pIC0+IFtQQVNTXVsyNF0K
ICAgWzIzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjQ0MS9zaGFyZC1za2wxMC9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYi1jb3ZlcmFn
ZS03ZWZjLmh0bWwKICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTM1ODMvc2hhcmQtc2tsOS9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5k
QHBpcGUtYi1jb3ZlcmFnZS03ZWZjLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBl
LWEtdGlsaW5nLXg6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0ZBSUxdWzI1XSAoW2ZkbyMx
MDMxNjZdKSAtPiBbUEFTU11bMjZdCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzY0NDEvc2hhcmQtaWNsYjgvaWd0QGttc19wbGFuZV9sb3dy
ZXNAcGlwZS1hLXRpbGluZy14Lmh0bWwKICAgWzI2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1ODMvc2hhcmQtaWNsYjgvaWd0QGttc19wbGFu
ZV9sb3dyZXNAcGlwZS1hLXRpbGluZy14Lmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX211bHRpcGxl
QGF0b21pYy1waXBlLWItdGlsaW5nLXk6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0RNRVNH
LVdBUk5dWzI3XSAoW2ZkbyMxMDY4ODVdKSAtPiBbUEFTU11bMjhdCiAgIFsyN106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0NDEvc2hhcmQtc2tsMi9p
Z3RAa21zX3BsYW5lX211bHRpcGxlQGF0b21pYy1waXBlLWItdGlsaW5nLXkuaHRtbAogICBbMjhd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzU4
My9zaGFyZC1za2w1L2lndEBrbXNfcGxhbmVfbXVsdGlwbGVAYXRvbWljLXBpcGUtYi10aWxpbmct
eS5odG1sCgogICogaWd0QGttc19wc3IyX3N1QGZyb250YnVmZmVyOgogICAgLSBzaGFyZC1pY2xi
OiAgICAgICAgIFtTS0lQXVsyOV0gKFtmZG8jMTA5NjQyXSAvIFtmZG8jMTExMDY4XSkgLT4gW1BB
U1NdWzMwXQogICBbMjldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82NDQxL3NoYXJkLWljbGI4L2lndEBrbXNfcHNyMl9zdUBmcm9udGJ1ZmZlci5odG1s
CiAgIFszMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzNTgzL3NoYXJkLWljbGIyL2lndEBrbXNfcHNyMl9zdUBmcm9udGJ1ZmZlci5odG1sCgog
ICogaWd0QGttc19wc3JAcHNyMl9jdXJzb3JfcmVuZGVyOgogICAgLSBzaGFyZC1pY2xiOiAgICAg
ICAgIFtTS0lQXVszMV0gKFtmZG8jMTA5NDQxXSkgLT4gW1BBU1NdWzMyXSArMiBzaW1pbGFyIGlz
c3VlcwogICBbMzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82NDQxL3NoYXJkLWljbGI4L2lndEBrbXNfcHNyQHBzcjJfY3Vyc29yX3JlbmRlci5odG1s
CiAgIFszMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzNTgzL3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfY3Vyc29yX3JlbmRlci5odG1s
CgogICogaWd0QGttc19zZXRtb2RlQGJhc2ljOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtG
QUlMXVszM10gKFtmZG8jOTk5MTJdKSAtPiBbUEFTU11bMzRdCiAgIFszM106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0NDEvc2hhcmQtYXBsMy9pZ3RA
a21zX3NldG1vZGVAYmFzaWMuaHRtbAogICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzU4My9zaGFyZC1hcGw3L2lndEBrbXNfc2V0bW9k
ZUBiYXNpYy5odG1sCiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW0ZBSUxdWzM1XSAoW2ZkbyM5
OTkxMl0pIC0+IFtQQVNTXVszNl0KICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQ0MS9zaGFyZC1rYmw3L2lndEBrbXNfc2V0bW9kZUBiYXNp
Yy5odG1sCiAgIFszNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzNTgzL3NoYXJkLWtibDEvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKCiAg
KiBpZ3RAa21zX3ZibGFua0BwaXBlLWMtdHMtY29udGludWF0aW9uLXN1c3BlbmQ6CiAgICAtIHNo
YXJkLXNrbDogICAgICAgICAgW0lOQ09NUExFVEVdWzM3XSAoW2ZkbyMxMDQxMDhdKSAtPiBbUEFT
U11bMzhdCiAgIFszN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY0NDEvc2hhcmQtc2tsNS9pZ3RAa21zX3ZibGFua0BwaXBlLWMtdHMtY29udGludWF0
aW9uLXN1c3BlbmQuaHRtbAogICBbMzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMzU4My9zaGFyZC1za2w2L2lndEBrbXNfdmJsYW5rQHBpcGUt
Yy10cy1jb250aW51YXRpb24tc3VzcGVuZC5odG1sCgogIAojIyMjIFdhcm5pbmdzICMjIyMKCiAg
KiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1vZmZzY3Jlbi1wcmktaW5kZmIt
ZHJhdy1yZW5kZXI6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzM5XSAoW2ZkbyMx
MDMxNjddKSAtPiBbRkFJTF1bNDBdIChbZmRvIzEwODA0MF0pCiAgIFszOV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0NDEvc2hhcmQtc2tsMS9pZ3RA
a21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1vZmZzY3Jlbi1wcmktaW5kZmItZHJhdy1y
ZW5kZXIuaHRtbAogICBbNDBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzU4My9zaGFyZC1za2wyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tp
bmdAZmJjLTFwLW9mZnNjcmVuLXByaS1pbmRmYi1kcmF3LXJlbmRlci5odG1sCgogIAogIFtmZG8j
MTAzMTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAz
MTY2CiAgW2ZkbyMxMDMxNjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDMxNjcKICBbZmRvIzEwMzkyN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwMzkyNwogIFtmZG8jMTA0MTA4XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA0MTA4CiAgW2ZkbyMxMDY4ODVdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDY4ODUKICBbZmRvIzEw
NzIwMV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzIw
MQogIFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDgwNDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDgwNDAKICBbZmRvIzEwODE0NV06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODE0NQogIFtmZG8jMTA4NTY2XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NTY2CiAgW2ZkbyMxMDk0
NDFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk0NDEK
ICBbZmRvIzEwOTY0Ml06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwOTY0MgogIFtmZG8jMTEwNDAzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTEwNDAzCiAgW2ZkbyMxMTA4NTRdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA4NTQKICBbZmRvIzExMTA2OF06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTA2OAogIFtmZG8jOTk5MTJd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD05OTkxMgoKClBh
cnRpY2lwYXRpbmcgaG9zdHMgKDEwIC0+IDEwKQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KCiAgTm8gY2hhbmdlcyBpbiBwYXJ0aWNpcGF0aW5nIGhvc3RzCgoKQnVpbGQgY2hhbmdlcwot
LS0tLS0tLS0tLS0tCgogICogTGludXg6IENJX0RSTV82NDQxIC0+IFBhdGNod29ya18xMzU4MwoK
ICBDSV9EUk1fNjQ0MTogOWQzMWVkZWY0NDc3MzRhMWU1ZWNlMzk3MzY3ZGU2ZmEzY2ZkZTcxNCBA
IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MDkyOiAy
YTY2YWU2NjI2ZDU1ODMyNDA1MDlmODQxMTdkMTM0NWE3OTliNzVhIEAgZ2l0Oi8vYW5vbmdpdC5m
cmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzEzNTgz
OiAxYzQyOGM2MGVkNjZkNTU0NmFmZDRkODJlNjI5OTcyNjg4NTM3OGYzIEAgZ2l0Oi8vYW5vbmdp
dC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgcGlnbGl0XzQ1MDk6IGZkYzVhNGNhMTEx
MjRhYjg0MTNjNzk4ODg5NmVlYzRjOTczMzY2OTQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9w
Lm9yZy9waWdsaXQKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzU4My8KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
