Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D71063A3EF
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Jun 2019 07:01:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7388689271;
	Sun,  9 Jun 2019 05:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8A8EB89271;
 Sun,  9 Jun 2019 05:01:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61A13A0088;
 Sun,  9 Jun 2019 05:01:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Sun, 09 Jun 2019 05:01:19 -0000
Message-ID: <20190609050119.595.46554@emeril.freedesktop.org>
References: <20190606211544.5389-1-daniel.vetter@ffwll.ch>
X-Patchwork-Hint: ignore
In-Reply-To: <20190606211544.5389-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/?=
 =?utf-8?q?crc-debugfs=3A_Also_sprinkle_irqrestore_over_early_exits?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2NyYy1kZWJ1Z2ZzOiBBbHNvIHNwcmlu
a2xlIGlycXJlc3RvcmUgb3ZlciBlYXJseSBleGl0cwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjE3MzEvClN0YXRlIDogc3VjY2VzcwoKPT0gU3VtbWFy
eSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjIxMV9mdWxsIC0+IFBhdGNo
d29ya18xMzE5NV9mdWxsCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKlNVQ0NFU1MqKgoKICBObyByZWdyZXNz
aW9ucyBmb3VuZC4KCiAgCgpLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRo
ZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xMzE5NV9mdWxsIHRoYXQgY29tZSBmcm9tIGtu
b3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgog
ICogaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHJjczAtczM6CiAgICAtIHNoYXJkLWFwbDogICAgICAg
ICAgW1BBU1NdWzFdIC0+IFtETUVTRy1XQVJOXVsyXSAoW2ZkbyMxMDg1NjZdKSArNCBzaW1pbGFy
IGlzc3VlcwogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzYyMTEvc2hhcmQtYXBsMi9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AcmNzMC1zMy5odG1s
CiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTMxOTUvc2hhcmQtYXBsNy9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AcmNzMC1zMy5odG1sCgog
ICogaWd0QGttc19kcF9kc2NAYmFzaWMtZHNjLWVuYWJsZS1lZHA6CiAgICAtIHNoYXJkLWljbGI6
ICAgICAgICAgW1BBU1NdWzNdIC0+IFtTS0lQXVs0XSAoW2ZkbyMxMDkzNDldKQogICBbM106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyMTEvc2hhcmQt
aWNsYjIvaWd0QGttc19kcF9kc2NAYmFzaWMtZHNjLWVuYWJsZS1lZHAuaHRtbAogICBbNF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTk1L3No
YXJkLWljbGIxL2lndEBrbXNfZHBfZHNjQGJhc2ljLWRzYy1lbmFibGUtZWRwLmh0bWwKCiAgKiBp
Z3RAa21zX2RyYXdfY3JjQGRyYXctbWV0aG9kLXhyZ2IyMTAxMDEwLW1tYXAtZ3R0LXh0aWxlZDoK
ICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bNV0gLT4gW0ZBSUxdWzZdIChbZmRvIzEw
MzE4NF0gLyBbZmRvIzEwMzIzMl0pCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjIxMS9zaGFyZC1za2w1L2lndEBrbXNfZHJhd19jcmNAZHJh
dy1tZXRob2QteHJnYjIxMDEwMTAtbW1hcC1ndHQteHRpbGVkLmh0bWwKICAgWzZdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzE5NS9zaGFyZC1z
a2w3L2lndEBrbXNfZHJhd19jcmNAZHJhdy1tZXRob2QteHJnYjIxMDEwMTAtbW1hcC1ndHQteHRp
bGVkLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuazoKICAgIC0g
c2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bN10gLT4gW0ZBSUxdWzhdIChbZmRvIzEwNTM2M10p
CiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjIxMS9zaGFyZC1za2w3L2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLmh0bWwK
ICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMzE5NS9zaGFyZC1za2wxMC9pZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay5o
dG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtcmdiMTAxMDEwLWRyYXct
cHdyaXRlOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVs5XSAtPiBbRkFJTF1bMTBd
IChbZmRvIzEwMzE2N10gLyBbZmRvIzExMDM3OV0pCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjIxMS9zaGFyZC1za2w0L2lndEBrbXNfZnJv
bnRidWZmZXJfdHJhY2tpbmdAZmJjLXJnYjEwMTAxMC1kcmF3LXB3cml0ZS5odG1sCiAgIFsxMF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTk1
L3NoYXJkLXNrbDcvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtcmdiMTAxMDEwLWRy
YXctcHdyaXRlLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0x
cC1wcmltc2Nybi1wcmktc2hyZmItZHJhdy1yZW5kZXI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAg
ICAgW1BBU1NdWzExXSAtPiBbRkFJTF1bMTJdIChbZmRvIzEwMzE2N10pICs2IHNpbWlsYXIgaXNz
dWVzCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzYyMTEvc2hhcmQtaWNsYjIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3It
MXAtcHJpbXNjcm4tcHJpLXNocmZiLWRyYXctcmVuZGVyLmh0bWwKICAgWzEyXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxOTUvc2hhcmQtaWNs
YjIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tcHJpLXNo
cmZiLWRyYXctcmVuZGVyLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZi
Y3Bzci10aWxpbmdjaGFuZ2U6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzEzXSAt
PiBbRkFJTF1bMTRdIChbZmRvIzEwODA0MF0pCiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyMTEvc2hhcmQtc2tsOS9pZ3RAa21zX2Zyb250
YnVmZmVyX3RyYWNraW5nQGZiY3Bzci10aWxpbmdjaGFuZ2UuaHRtbAogICBbMTRdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzE5NS9zaGFyZC1z
a2wxMC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci10aWxpbmdjaGFuZ2UuaHRt
bAoKICAqIGlndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0b20tcmlnaHQtc3VzcGVuZC1w
aXBlLWItcGxhbmVzOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsxNV0gLT4gW0lO
Q09NUExFVEVdWzE2XSAoW2ZkbyMxMDQxMDhdKQogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjExL3NoYXJkLXNrbDgvaWd0QGttc19wbGFu
ZUBwbGFuZS1wYW5uaW5nLWJvdHRvbS1yaWdodC1zdXNwZW5kLXBpcGUtYi1wbGFuZXMuaHRtbAog
ICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMzE5NS9zaGFyZC1za2wxL2lndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0b20tcmln
aHQtc3VzcGVuZC1waXBlLWItcGxhbmVzLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhhX2Js
ZW5kQHBpcGUtYy1jb25zdGFudC1hbHBoYS1taW46CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAg
W1BBU1NdWzE3XSAtPiBbRkFJTF1bMThdIChbZmRvIzEwODE0NV0pCiAgIFsxN106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyMTEvc2hhcmQtc2tsNC9p
Z3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYy1jb25zdGFudC1hbHBoYS1taW4uaHRtbAog
ICBbMThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMzE5NS9zaGFyZC1za2w4L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvbnN0
YW50LWFscGhhLW1pbi5odG1sCgogICogaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMt
Y292ZXJhZ2UtN2VmYzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMTldIC0+IFtG
QUlMXVsyMF0gKFtmZG8jMTA4MTQ1XSAvIFtmZG8jMTEwNDAzXSkgKzEgc2ltaWxhciBpc3N1ZQog
ICBbMTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
MjExL3NoYXJkLXNrbDkvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY292ZXJhZ2Ut
N2VmYy5odG1sCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzMTk1L3NoYXJkLXNrbDEwL2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRA
cGlwZS1jLWNvdmVyYWdlLTdlZmMuaHRtbAoKICAqIGlndEBrbXNfcHNyQHBzcjJfY3Vyc29yX21t
YXBfY3B1OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsyMV0gLT4gW1NLSVBdWzIy
XSAoW2ZkbyMxMDk0NDFdKSArMiBzaW1pbGFyIGlzc3VlcwogICBbMjFdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjExL3NoYXJkLWljbGIyL2lndEBr
bXNfcHNyQHBzcjJfY3Vyc29yX21tYXBfY3B1Lmh0bWwKICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxOTUvc2hhcmQtaWNsYjgvaWd0
QGttc19wc3JAcHNyMl9jdXJzb3JfbW1hcF9jcHUuaHRtbAoKICAqIGlndEBrbXNfc2V0bW9kZUBi
YXNpYzoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bMjNdIC0+IFtGQUlMXVsyNF0g
KFtmZG8jOTk5MTJdKQogICBbMjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82MjExL3NoYXJkLWFwbDYvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0bWwK
ICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTMxOTUvc2hhcmQtYXBsNS9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbAoKICAqIGlndEBr
bXNfc3lzZnNfZWRpZF90aW1pbmc6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzI1
XSAtPiBbRkFJTF1bMjZdIChbZmRvIzEwMDA0N10pCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyMTEvc2hhcmQtaWNsYjQvaWd0QGttc19z
eXNmc19lZGlkX3RpbWluZy5odG1sCiAgIFsyNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTk1L3NoYXJkLWljbGIyL2lndEBrbXNfc3lzZnNf
ZWRpZF90aW1pbmcuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdl
bV93b3JrYXJvdW5kc0BzdXNwZW5kLXJlc3VtZS1jb250ZXh0OgogICAgLSBzaGFyZC1hcGw6ICAg
ICAgICAgIFtETUVTRy1XQVJOXVsyN10gKFtmZG8jMTA4NTY2XSkgLT4gW1BBU1NdWzI4XSArMiBz
aW1pbGFyIGlzc3VlcwogICBbMjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82MjExL3NoYXJkLWFwbDcvaWd0QGdlbV93b3JrYXJvdW5kc0BzdXNwZW5k
LXJlc3VtZS1jb250ZXh0Lmh0bWwKICAgWzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxOTUvc2hhcmQtYXBsMS9pZ3RAZ2VtX3dvcmthcm91
bmRzQHN1c3BlbmQtcmVzdW1lLWNvbnRleHQuaHRtbAoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QG1v
Y2tfZmVuY2U6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0lOQ09NUExFVEVdWzI5XSAoW2Zk
byMxMDc3MTNdKSAtPiBbUEFTU11bMzBdICsyIHNpbWlsYXIgaXNzdWVzCiAgIFsyOV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyMTEvc2hhcmQtaWNs
YjcvaWd0QGk5MTVfc2VsZnRlc3RAbW9ja19mZW5jZS5odG1sCiAgIFszMF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTk1L3NoYXJkLWljbGI3
L2lndEBpOTE1X3NlbGZ0ZXN0QG1vY2tfZmVuY2UuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2xl
Z2FjeUAyeC1sb25nLWZsaXAtdnMtY3Vyc29yLWxlZ2FjeToKICAgIC0gc2hhcmQtZ2xrOiAgICAg
ICAgICBbRkFJTF1bMzFdIChbZmRvIzEwNDg3M10pIC0+IFtQQVNTXVszMl0KICAgWzMxXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjIxMS9zaGFyZC1n
bGszL2lndEBrbXNfY3Vyc29yX2xlZ2FjeUAyeC1sb25nLWZsaXAtdnMtY3Vyc29yLWxlZ2FjeS5o
dG1sCiAgIFszMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzMTk1L3NoYXJkLWdsazIvaWd0QGttc19jdXJzb3JfbGVnYWN5QDJ4LWxvbmctZmxp
cC12cy1jdXJzb3ItbGVnYWN5Lmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVk
LXZibGFuay1pbnRlcnJ1cHRpYmxlOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVsz
M10gKFtmZG8jMTA1MzYzXSkgLT4gW1BBU1NdWzM0XQogICBbMzNdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjExL3NoYXJkLXNrbDEvaWd0QGttc19m
bGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0aWJsZS5odG1sCiAgIFszNF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTk1L3No
YXJkLXNrbDYvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0aWJs
ZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4t
Y3VyLWluZGZiLWRyYXctbW1hcC13YzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJTF1b
MzVdIChbZmRvIzEwODA0MF0pIC0+IFtQQVNTXVszNl0KICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjIxMS9zaGFyZC1za2w3L2lndEBrbXNf
ZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LW1tYXAt
d2MuaHRtbAogICBbMzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzE5NS9zaGFyZC1za2w0L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdA
ZmJjLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LW1tYXAtd2MuaHRtbAoKICAqIGlndEBrbXNf
ZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1tb3ZlOgogICAg
LSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVszN10gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1Nd
WzM4XSArOCBzaW1pbGFyIGlzc3VlcwogICBbMzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjExL3NoYXJkLWljbGIxL2lndEBrbXNfZnJvbnRidWZm
ZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1tb3ZlLmh0bWwKICAgWzM4XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxOTUv
c2hhcmQtaWNsYjEvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4t
Y3VyLWluZGZiLW1vdmUuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJj
LTFwLXByaW1zY3JuLXNwci1pbmRmYi1tb3ZlOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtG
QUlMXVszOV0gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzQwXSArMSBzaW1pbGFyIGlzc3VlCiAg
IFszOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYy
MTEvc2hhcmQtYXBsOC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Ny
bi1zcHItaW5kZmItbW92ZS5odG1sCiAgIFs0MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTk1L3NoYXJkLWFwbDEvaWd0QGttc19mcm9udGJ1
ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tc3ByLWluZGZiLW1vdmUuaHRtbAoKICAqIGln
dEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAcHNyLTFwLXByaW1zY3JuLXByaS1zaHJmYi1kcmF3
LW1tYXAtY3B1OgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVs0MV0gKFtmZG8jMTAz
MTY3XSkgLT4gW1BBU1NdWzQyXSArMiBzaW1pbGFyIGlzc3VlcwogICBbNDFdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjExL3NoYXJkLXNrbDgvaWd0
QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bwc3ItMXAtcHJpbXNjcm4tcHJpLXNocmZiLWRyYXct
bW1hcC1jcHUuaHRtbAogICBbNDJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzE5NS9zaGFyZC1za2wxL2lndEBrbXNfZnJvbnRidWZmZXJfdHJh
Y2tpbmdAcHNyLTFwLXByaW1zY3JuLXByaS1zaHJmYi1kcmF3LW1tYXAtY3B1Lmh0bWwKCiAgKiBp
Z3RAa21zX21tYXBfd3JpdGVfY3JjQG1haW46CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZB
SUxdWzQzXSAtPiBbUEFTU11bNDRdCiAgIFs0M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYyMTEvc2hhcmQtc2tsOC9pZ3RAa21zX21tYXBfd3JpdGVf
Y3JjQG1haW4uaHRtbAogICBbNDRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzE5NS9zaGFyZC1za2wxL2lndEBrbXNfbW1hcF93cml0ZV9jcmNA
bWFpbi5odG1sCgogICogaWd0QGttc19wbGFuZUBwbGFuZS1wYW5uaW5nLWJvdHRvbS1yaWdodC1z
dXNwZW5kLXBpcGUtYy1wbGFuZXM6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0lOQ09NUExF
VEVdWzQ1XSAoW2ZkbyMxMDQxMDhdKSAtPiBbUEFTU11bNDZdCiAgIFs0NV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyMTEvc2hhcmQtc2tsMy9pZ3RA
a21zX3BsYW5lQHBsYW5lLXBhbm5pbmctYm90dG9tLXJpZ2h0LXN1c3BlbmQtcGlwZS1jLXBsYW5l
cy5odG1sCiAgIFs0Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzMTk1L3NoYXJkLXNrbDcvaWd0QGttc19wbGFuZUBwbGFuZS1wYW5uaW5nLWJv
dHRvbS1yaWdodC1zdXNwZW5kLXBpcGUtYy1wbGFuZXMuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVf
YWxwaGFfYmxlbmRAcGlwZS1iLWNvbnN0YW50LWFscGhhLW1pbjoKICAgIC0gc2hhcmQtc2tsOiAg
ICAgICAgICBbRkFJTF1bNDddIChbZmRvIzEwODE0NV0pIC0+IFtQQVNTXVs0OF0KICAgWzQ3XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjIxMS9zaGFy
ZC1za2w0L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNvbnN0YW50LWFscGhhLW1p
bi5odG1sCiAgIFs0OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzMTk1L3NoYXJkLXNrbDQvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBl
LWItY29uc3RhbnQtYWxwaGEtbWluLmh0bWwKCiAgKiBpZ3RAa21zX3BzcjJfc3VAcGFnZV9mbGlw
OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs0OV0gKFtmZG8jMTA5NjQyXSkgLT4g
W1BBU1NdWzUwXQogICBbNDldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82MjExL3NoYXJkLWljbGI0L2lndEBrbXNfcHNyMl9zdUBwYWdlX2ZsaXAuaHRt
bAogICBbNTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzE5NS9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzcjJfc3VAcGFnZV9mbGlwLmh0bWwKCiAg
KiBpZ3RAa21zX3BzckBwc3IyX2N1cnNvcl9ibHQ6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAg
W1NLSVBdWzUxXSAoW2ZkbyMxMDk0NDFdKSAtPiBbUEFTU11bNTJdICsyIHNpbWlsYXIgaXNzdWVz
CiAgIFs1MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzYyMTEvc2hhcmQtaWNsYjEvaWd0QGttc19wc3JAcHNyMl9jdXJzb3JfYmx0Lmh0bWwKICAgWzUy
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMx
OTUvc2hhcmQtaWNsYjIvaWd0QGttc19wc3JAcHNyMl9jdXJzb3JfYmx0Lmh0bWwKCiAgKiBpZ3RA
a21zX3ZibGFua0BwaXBlLWEtdHMtY29udGludWF0aW9uLXN1c3BlbmQ6CiAgICAtIHNoYXJkLWti
bDogICAgICAgICAgW0RNRVNHLVdBUk5dWzUzXSAoW2ZkbyMxMDg1NjZdKSAtPiBbUEFTU11bNTRd
ICsxIHNpbWlsYXIgaXNzdWUKICAgWzUzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjIxMS9zaGFyZC1rYmw2L2lndEBrbXNfdmJsYW5rQHBpcGUtYS10
cy1jb250aW51YXRpb24tc3VzcGVuZC5odG1sCiAgIFs1NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTk1L3NoYXJkLWtibDEvaWd0QGttc192
YmxhbmtAcGlwZS1hLXRzLWNvbnRpbnVhdGlvbi1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAcGVyZkBw
b2xsaW5nOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVs1NV0gKFtmZG8jMTEwNzI4
XSkgLT4gW1BBU1NdWzU2XQogICBbNTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82MjExL3NoYXJkLXNrbDYvaWd0QHBlcmZAcG9sbGluZy5odG1sCiAg
IFs1Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEzMTk1L3NoYXJkLXNrbDMvaWd0QHBlcmZAcG9sbGluZy5odG1sCgogIAojIyMjIFdhcm5pbmdz
ICMjIyMKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRp
YmxlOgogICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtGQUlMXVs1N10gKFtmZG8jMTA1MzYzXSkg
LT4gW0ZBSUxdWzU4XSAoW2ZkbyMxMDI4ODddIC8gW2ZkbyMxMDUzNjNdKQogICBbNTddOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjExL3NoYXJkLWds
azcvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0aWJsZS5odG1s
CiAgIFs1OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzMTk1L3NoYXJkLWdsazMvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12Ymxhbmst
aW50ZXJydXB0aWJsZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNw
c3ItMXAtcHJpbXNjcm4tc3ByLWluZGZiLW1vdmU6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAg
W0ZBSUxdWzU5XSAoW2ZkbyMxMDgwNDBdKSAtPiBbRkFJTF1bNjBdIChbZmRvIzEwMzE2N10pCiAg
IFs1OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYy
MTEvc2hhcmQtc2tsNy9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmlt
c2Nybi1zcHItaW5kZmItbW92ZS5odG1sCiAgIFs2MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTk1L3NoYXJkLXNrbDEwL2lndEBrbXNfZnJv
bnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLXNwci1pbmRmYi1tb3ZlLmh0bWwK
CiAgCiAgW2ZkbyMxMDAwNDddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDAwNDcKICBbZmRvIzEwMjg4N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwMjg4NwogIFtmZG8jMTAzMTY3XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTY3CiAgW2ZkbyMxMDMxODRdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxODQKICBbZmRvIzEw
MzIzMl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzIz
MgogIFtmZG8jMTA0MTA4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA0MTA4CiAgW2ZkbyMxMDQ4NzNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDQ4NzMKICBbZmRvIzEwNTM2M106IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTM2MwogIFtmZG8jMTA3NzEzXTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDgw
NDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgwNDAK
ICBbZmRvIzEwODE0NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwODE0NQogIFtmZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTA4NTY2CiAgW2ZkbyMxMDkzNDldOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkzNDkKICBbZmRvIzEwOTQ0MV06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTQ0MQogIFtmZG8jMTA5NjQy
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NjQyCiAg
W2ZkbyMxMTAzNzldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMTAzNzkKICBbZmRvIzExMDQwM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTExMDQwMwogIFtmZG8jMTEwNzI4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNzI4CiAgW2ZkbyM5OTkxMl06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTk5OTEyCgoKUGFydGljaXBhdGluZyBo
b3N0cyAoOSAtPiA5KQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTm8gY2hhbmdl
cyBpbiBwYXJ0aWNpcGF0aW5nIGhvc3RzCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgog
ICogTGludXg6IENJX0RSTV82MjExIC0+IFBhdGNod29ya18xMzE5NQoKICBDSV9EUk1fNjIxMTog
MWYxYjMwMzRlNjA3ZmI3Njc2Y2VhODlkNWNiNzEzNGI3NTI2ZGQ5NiBAIGdpdDovL2Fub25naXQu
ZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MDQ1OiBkZTIwNDg3MDI2MWMwY2Nk
YTY2OGVmOGFiYzhiNzU2YjZlNjc5YjRhIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcv
eG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzEzMTk1OiAzMWU0MTQ5NDExYzg5
NmVkZDEyZTA2NmRiYTk4NzViYzBjMDZhY2RhIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5v
cmcvZ2Z4LWNpL2xpbnV4CiAgcGlnbGl0XzQ1MDk6IGZkYzVhNGNhMTExMjRhYjg0MTNjNzk4ODg5
NmVlYzRjOTczMzY2OTQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9waWdsaXQKCj09
IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzE5NS8KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
