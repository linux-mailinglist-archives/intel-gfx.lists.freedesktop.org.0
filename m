Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0884853D
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 16:24:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 628CB89256;
	Mon, 17 Jun 2019 14:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 86FCB8921E;
 Mon, 17 Jun 2019 14:24:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 800D1A3DED;
 Mon, 17 Jun 2019 14:24:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 17 Jun 2019 14:24:34 -0000
Message-ID: <20190617142434.2340.84639@emeril.freedesktop.org>
References: <20190616122043.3379-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190616122043.3379-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Restore_-Wunused-but-set-variable?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFJlc3RvcmUgLVd1bnVzZWQt
YnV0LXNldC12YXJpYWJsZQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9zZXJpZXMvNjIxNjEvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExv
ZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjI4MV9mdWxsIC0+IFBhdGNod29ya18xMzMwMV9mdWxs
Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1
bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBj
b21pbmcgd2l0aCBQYXRjaHdvcmtfMTMzMDFfZnVsbCBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUKICB2
ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMg
aGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1Y2VkIGluIFBhdGNo
d29ya18xMzMwMV9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhl
bQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2Ug
ZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICAKClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0tLS0tLS0t
LS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUg
YmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMzMwMV9mdWxsOgoKIyMjIElHVCBjaGFuZ2Vz
ICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QGdlbV90aWxlZF9i
bGl0c0Bub3JtYWw6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW1BBU1NdWzFdIC0+IFtETUVT
Ry1XQVJOXVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzYyODEvc2hhcmQtZ2xrNy9pZ3RAZ2VtX3RpbGVkX2JsaXRzQG5vcm1hbC5odG1s
CiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTMzMDEvc2hhcmQtZ2xrNy9pZ3RAZ2VtX3RpbGVkX2JsaXRzQG5vcm1hbC5odG1sCgogICog
aWd0QHJ1bm5lckBhYm9ydGVkOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIE5PVFJVTiAtPiBb
RkFJTF1bM10KICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzMwMS9zaGFyZC1rYmwxL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCgogIApL
bm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGlu
IFBhdGNod29ya18xMzMwMV9mdWxsIHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJ
R1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgogICogaWd0QGdlbV9laW9AcmVz
ZXQtc3RyZXNzOgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtQQVNTXVs0XSAtPiBbRkFJTF1b
NV0gKFtmZG8jMTA5NjYxXSkKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82MjgxL3NoYXJkLXNuYjUvaWd0QGdlbV9laW9AcmVzZXQtc3RyZXNz
Lmh0bWwKICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzMwMS9zaGFyZC1zbmI2L2lndEBnZW1fZWlvQHJlc2V0LXN0cmVzcy5odG1sCgog
ICogaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtZmF1bHRpbmctcmVsb2MtdGhyYXNo
aW5nOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVs2XSAtPiBbRE1FU0ctV0FSTl1b
N10gKFtmZG8jMTEwOTEzIF0pICsxIHNpbWlsYXIgaXNzdWUKICAgWzZdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjgxL3NoYXJkLWFwbDMvaWd0QGdl
bV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtZmF1bHRpbmctcmVsb2MtdGhyYXNoaW5nLmh0bWwK
ICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMzMwMS9zaGFyZC1hcGwxL2lndEBnZW1fcGVyc2lzdGVudF9yZWxvY3NAZm9ya2VkLWZhdWx0
aW5nLXJlbG9jLXRocmFzaGluZy5odG1sCgogICogaWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1m
aXhlZC1pbnZhbGlkYXRlLW92ZXJsYXAtYnVzeS1ndXA6CiAgICAtIHNoYXJkLWljbGI6ICAgICAg
ICAgW1BBU1NdWzhdIC0+IFtETUVTRy1XQVJOXVs5XSAoW2ZkbyMxMTA5MTMgXSkKICAgWzhdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjgxL3NoYXJk
LWljbGI1L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxpZGF0ZS1vdmVybGFw
LWJ1c3ktZ3VwLmh0bWwKICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzMwMS9zaGFyZC1pY2xiNC9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNA
bWFwLWZpeGVkLWludmFsaWRhdGUtb3ZlcmxhcC1idXN5LWd1cC5odG1sCiAgICAtIHNoYXJkLXNu
YjogICAgICAgICAgW1BBU1NdWzEwXSAtPiBbRE1FU0ctV0FSTl1bMTFdIChbZmRvIzExMDkxMyBd
KSArMSBzaW1pbGFyIGlzc3VlCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzYyODEvc2hhcmQtc25iMS9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNA
bWFwLWZpeGVkLWludmFsaWRhdGUtb3ZlcmxhcC1idXN5LWd1cC5odG1sCiAgIFsxMV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzAxL3NoYXJk
LXNuYjQvaWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlkYXRlLW92ZXJsYXAt
YnVzeS1ndXAuaHRtbAoKICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWN5Y2xl
czoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbUEFTU11bMTJdIC0+IFtETUVTRy1XQVJOXVsx
M10gKFtmZG8jMTEwOTEzIF0pICsyIHNpbWlsYXIgaXNzdWVzCiAgIFsxMl06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyODEvc2hhcmQta2JsNi9pZ3RA
Z2VtX3VzZXJwdHJfYmxpdHNAc3luYy11bm1hcC1jeWNsZXMuaHRtbAogICBbMTNdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMwMS9zaGFyZC1r
Ymw3L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWN5Y2xlcy5odG1sCiAgICAtIHNo
YXJkLXNrbDogICAgICAgICAgW1BBU1NdWzE0XSAtPiBbRE1FU0ctV0FSTl1bMTVdIChbZmRvIzEx
MDkxMyBdKQogICBbMTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82MjgxL3NoYXJkLXNrbDIvaWd0QGdlbV91c2VycHRyX2JsaXRzQHN5bmMtdW5tYXAt
Y3ljbGVzLmh0bWwKICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTMzMDEvc2hhcmQtc2tsOC9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3lu
Yy11bm1hcC1jeWNsZXMuaHRtbAoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXZpY3Q6CiAg
ICAtIHNoYXJkLWtibDogICAgICAgICAgW1BBU1NdWzE2XSAtPiBbSU5DT01QTEVURV1bMTddIChb
ZmRvIzEwMzY2NV0pCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzYyODEvc2hhcmQta2JsMS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V2aWN0
Lmh0bWwKICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTMzMDEvc2hhcmQta2JsMS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V2aWN0Lmh0
bWwKCiAgKiBpZ3RAaTkxNV9zdXNwZW5kQHN5c2ZzLXJlYWRlcjoKICAgIC0gc2hhcmQtYXBsOiAg
ICAgICAgICBbUEFTU11bMThdIC0+IFtETUVTRy1XQVJOXVsxOV0gKFtmZG8jMTA4NTY2XSkgKzIg
c2ltaWxhciBpc3N1ZXMKICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjI4MS9zaGFyZC1hcGw0L2lndEBpOTE1X3N1c3BlbmRAc3lzZnMtcmVh
ZGVyLmh0bWwKICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTMzMDEvc2hhcmQtYXBsNi9pZ3RAaTkxNV9zdXNwZW5kQHN5c2ZzLXJlYWRl
ci5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNj
cm4tY3VyLWluZGZiLWRyYXctcmVuZGVyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNT
XVsyMF0gLT4gW0ZBSUxdWzIxXSAoW2ZkbyMxMDMxNjddKSArNCBzaW1pbGFyIGlzc3VlcwogICBb
MjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Mjgx
L3NoYXJkLWljbGI2L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1z
Y3JuLWN1ci1pbmRmYi1kcmF3LXJlbmRlci5odG1sCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzAxL3NoYXJkLWljbGIyL2lndEBr
bXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3
LXJlbmRlci5odG1sCgogICogaWd0QGttc19zZXRtb2RlQGJhc2ljOgogICAgLSBzaGFyZC1hcGw6
ICAgICAgICAgIFtQQVNTXVsyMl0gLT4gW0ZBSUxdWzIzXSAoW2ZkbyM5OTkxMl0pCiAgIFsyMl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyODEvc2hh
cmQtYXBsNy9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbAogICBbMjNdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMwMS9zaGFyZC1hcGwyL2ln
dEBrbXNfc2V0bW9kZUBiYXNpYy5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMKCiAg
KiBpZ3RAZ2VtX2N0eF9pc29sYXRpb25AYmNzMC1zMzoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAg
ICBbRE1FU0ctV0FSTl1bMjRdIChbZmRvIzEwODU2Nl0pIC0+IFtQQVNTXVsyNV0gKzQgc2ltaWxh
ciBpc3N1ZXMKICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjI4MS9zaGFyZC1hcGw0L2lndEBnZW1fY3R4X2lzb2xhdGlvbkBiY3MwLXMzLmh0
bWwKICAgWzI1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTMzMDEvc2hhcmQtYXBsMS9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AYmNzMC1zMy5odG1s
CgogICogaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZlY3MwLXMzOgogICAgLSBzaGFyZC1za2w6ICAg
ICAgICAgIFtJTkNPTVBMRVRFXVsyNl0gKFtmZG8jMTA0MTA4XSkgLT4gW1BBU1NdWzI3XQogICBb
MjZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Mjgx
L3NoYXJkLXNrbDcvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZlY3MwLXMzLmh0bWwKICAgWzI3XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMDEv
c2hhcmQtc2tsNi9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmVjczAtczMuaHRtbAoKICAqIGlndEBn
ZW1fZWlvQGluLWZsaWdodC1pbnRlcm5hbC0xMG1zOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAg
IFtETUVTRy1XQVJOXVsyOF0gKFtmZG8jMTEwOTEzIF0pIC0+IFtQQVNTXVsyOV0KICAgWzI4XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI4MS9zaGFy
ZC1hcGwzL2lndEBnZW1fZWlvQGluLWZsaWdodC1pbnRlcm5hbC0xMG1zLmh0bWwKICAgWzI5XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMDEv
c2hhcmQtYXBsMS9pZ3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtaW50ZXJuYWwtMTBtcy5odG1sCgogICog
aWd0QGdlbV9laW9AcmVzZXQtc3RyZXNzOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtETUVT
Ry1XQVJOXVszMF0gKFtmZG8jMTEwOTEzIF0pIC0+IFtQQVNTXVszMV0KICAgWzMwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI4MS9zaGFyZC1za2w2
L2lndEBnZW1fZWlvQHJlc2V0LXN0cmVzcy5odG1sCiAgIFszMV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzAxL3NoYXJkLXNrbDEvaWd0QGdl
bV9laW9AcmVzZXQtc3RyZXNzLmh0bWwKCiAgKiBpZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZv
cmtlZC1mYXVsdGluZy1yZWxvYy10aHJhc2gtaW5hY3RpdmU6CiAgICAtIHNoYXJkLWFwbDogICAg
ICAgICAgW0lOQ09NUExFVEVdWzMyXSAoW2ZkbyMxMDM5MjddKSAtPiBbUEFTU11bMzNdCiAgIFsz
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyODEv
c2hhcmQtYXBsNC9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1mYXVsdGluZy1yZWxv
Yy10aHJhc2gtaW5hY3RpdmUuaHRtbAogICBbMzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMwMS9zaGFyZC1hcGwxL2lndEBnZW1fcGVyc2lz
dGVudF9yZWxvY3NAZm9ya2VkLWZhdWx0aW5nLXJlbG9jLXRocmFzaC1pbmFjdGl2ZS5odG1sCgog
ICogaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtaW50ZXJydXB0aWJsZS1mYXVsdGlu
Zy1yZWxvYy10aHJhc2gtaW5hY3RpdmU6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW0lOQ09N
UExFVEVdWzM0XSAoW2ZkbyMxMDU0MTFdKSAtPiBbUEFTU11bMzVdCiAgIFszNF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyODEvc2hhcmQtc25iNS9p
Z3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRpYmxlLWZhdWx0aW5nLXJl
bG9jLXRocmFzaC1pbmFjdGl2ZS5odG1sCiAgIFszNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzAxL3NoYXJkLXNuYjQvaWd0QGdlbV9wZXJz
aXN0ZW50X3JlbG9jc0Bmb3JrZWQtaW50ZXJydXB0aWJsZS1mYXVsdGluZy1yZWxvYy10aHJhc2gt
aW5hY3RpdmUuaHRtbAoKICAqIGlndEBnZW1fcGVyc2lzdGVudF9yZWxvY3NAZm9ya2VkLXRocmFz
aGluZzoKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbRE1FU0ctV0FSTl1bMzZdIChbZmRvIzEx
MDc4OV0gLyBbZmRvIzExMDkxMyBdKSAtPiBbUEFTU11bMzddCiAgIFszNl06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyODEvc2hhcmQtc25iMS9pZ3RA
Z2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC10aHJhc2hpbmcuaHRtbAogICBbMzddOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMwMS9zaGFy
ZC1zbmIyL2lndEBnZW1fcGVyc2lzdGVudF9yZWxvY3NAZm9ya2VkLXRocmFzaGluZy5odG1sCgog
ICogaWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlkYXRlLW92ZXJsYXAtYnVz
eToKICAgIC0gc2hhcmQtZ2xrOiAgICAgICAgICBbRE1FU0ctV0FSTl1bMzhdIChbZmRvIzExMDkx
MyBdKSAtPiBbUEFTU11bMzldICsxIHNpbWlsYXIgaXNzdWUKICAgWzM4XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI4MS9zaGFyZC1nbGs3L2lndEBn
ZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxpZGF0ZS1vdmVybGFwLWJ1c3kuaHRtbAog
ICBbMzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMzMwMS9zaGFyZC1nbGszL2lndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxp
ZGF0ZS1vdmVybGFwLWJ1c3kuaHRtbAoKICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4
ZWQtaW52YWxpZGF0ZS1vdmVybGFwLWJ1c3ktZ3VwOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAg
IFtETUVTRy1XQVJOXVs0MF0gKFtmZG8jMTEwOTEzIF0pIC0+IFtQQVNTXVs0MV0gKzIgc2ltaWxh
ciBpc3N1ZXMKICAgWzQwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjI4MS9zaGFyZC1rYmwyL2lndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQt
aW52YWxpZGF0ZS1vdmVybGFwLWJ1c3ktZ3VwLmh0bWwKICAgWzQxXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMDEvc2hhcmQta2JsMy9pZ3RA
Z2VtX3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVkLWludmFsaWRhdGUtb3ZlcmxhcC1idXN5LWd1cC5o
dG1sCgogICogaWd0QGdlbV91c2VycHRyX2JsaXRzQHN5bmMtdW5tYXAtY3ljbGVzOgogICAgLSBz
aGFyZC1zbmI6ICAgICAgICAgIFtETUVTRy1XQVJOXVs0Ml0gKFtmZG8jMTEwOTEzIF0pIC0+IFtQ
QVNTXVs0M10gKzEgc2ltaWxhciBpc3N1ZQogICBbNDJdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjgxL3NoYXJkLXNuYjQvaWd0QGdlbV91c2VycHRy
X2JsaXRzQHN5bmMtdW5tYXAtY3ljbGVzLmh0bWwKICAgWzQzXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMDEvc2hhcmQtc25iMi9pZ3RAZ2Vt
X3VzZXJwdHJfYmxpdHNAc3luYy11bm1hcC1jeWNsZXMuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBw
bGFpbi1mbGlwLWZiLXJlY3JlYXRlLWludGVycnVwdGlibGU6CiAgICAtIHNoYXJkLXNrbDogICAg
ICAgICAgW0ZBSUxdWzQ0XSAoW2ZkbyMxMDAzNjhdKSAtPiBbUEFTU11bNDVdCiAgIFs0NF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyODEvc2hhcmQt
c2tsMy9pZ3RAa21zX2ZsaXBAcGxhaW4tZmxpcC1mYi1yZWNyZWF0ZS1pbnRlcnJ1cHRpYmxlLmh0
bWwKICAgWzQ1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTMzMDEvc2hhcmQtc2tsMy9pZ3RAa21zX2ZsaXBAcGxhaW4tZmxpcC1mYi1yZWNyZWF0
ZS1pbnRlcnJ1cHRpYmxlLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZi
Yy1zdXNwZW5kOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtETUVTRy1XQVJOXVs0Nl0gKFtm
ZG8jMTA4NTY2XSkgLT4gW1BBU1NdWzQ3XSArMiBzaW1pbGFyIGlzc3VlcwogICBbNDZdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjgxL3NoYXJkLWti
bDIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtc3VzcGVuZC5odG1sCiAgIFs0N106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzAx
L3NoYXJkLWtibDYvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtc3VzcGVuZC5odG1s
CgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tcHJp
LXNocmZiLWRyYXctcHdyaXRlOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs0OF0g
KFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzQ5XSArNiBzaW1pbGFyIGlzc3VlcwogICBbNDhdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjgxL3NoYXJk
LWljbGI0L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLXBy
aS1zaHJmYi1kcmF3LXB3cml0ZS5odG1sCiAgIFs0OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzAxL3NoYXJkLWljbGI0L2lndEBrbXNfZnJv
bnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLXByaS1zaHJmYi1kcmF3LXB3cml0
ZS5odG1sCgogICogaWd0QGttc19wbGFuZUBwaXhlbC1mb3JtYXQtcGlwZS1hLXBsYW5lcy1zb3Vy
Y2UtY2xhbXBpbmc6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0RNRVNHLVdBUk5dWzUwXSAo
W2ZkbyMxMDY4ODVdKSAtPiBbUEFTU11bNTFdCiAgIFs1MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyODEvc2hhcmQtc2tsMy9pZ3RAa21zX3BsYW5l
QHBpeGVsLWZvcm1hdC1waXBlLWEtcGxhbmVzLXNvdXJjZS1jbGFtcGluZy5odG1sCiAgIFs1MV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzAx
L3NoYXJkLXNrbDEvaWd0QGttc19wbGFuZUBwaXhlbC1mb3JtYXQtcGlwZS1hLXBsYW5lcy1zb3Vy
Y2UtY2xhbXBpbmcuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNv
bnN0YW50LWFscGhhLW1pbjoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJTF1bNTJdIChb
ZmRvIzEwODE0NV0pIC0+IFtQQVNTXVs1M10KICAgWzUyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI4MS9zaGFyZC1za2wxMC9pZ3RAa21zX3BsYW5l
X2FscGhhX2JsZW5kQHBpcGUtYi1jb25zdGFudC1hbHBoYS1taW4uaHRtbAogICBbNTNdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMwMS9zaGFy
ZC1za2wyL2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNvbnN0YW50LWFscGhhLW1p
bi5odG1sCgogICogaWd0QGttc19wc3JAcHNyMl9wcmltYXJ5X3BhZ2VfZmxpcDoKICAgIC0gc2hh
cmQtaWNsYjogICAgICAgICBbU0tJUF1bNTRdIChbZmRvIzEwOTQ0MV0pIC0+IFtQQVNTXVs1NV0g
KzIgc2ltaWxhciBpc3N1ZXMKICAgWzU0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjI4MS9zaGFyZC1pY2xiNi9pZ3RAa21zX3BzckBwc3IyX3ByaW1h
cnlfcGFnZV9mbGlwLmh0bWwKICAgWzU1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMDEvc2hhcmQtaWNsYjIvaWd0QGttc19wc3JAcHNyMl9w
cmltYXJ5X3BhZ2VfZmxpcC5odG1sCgogIAojIyMjIFdhcm5pbmdzICMjIyMKCiAgKiBpZ3RAa21z
X2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1wcmktc2hyZmItZHJhdy1yZW5k
ZXI6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzU2XSAoW2ZkbyMxMDgwNDBdKSAt
PiBbRkFJTF1bNTddIChbZmRvIzEwMzE2N10pCiAgIFs1Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyODEvc2hhcmQtc2tsNS9pZ3RAa21zX2Zyb250
YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1wcmktc2hyZmItZHJhdy1yZW5kZXIuaHRt
bAogICBbNTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzMwMS9zaGFyZC1za2w0L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFw
LXByaW1zY3JuLXByaS1zaHJmYi1kcmF3LXJlbmRlci5odG1sCgogIAogIFtmZG8jMTAwMzY4XTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAwMzY4CiAgW2Zk
byMxMDMxNjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDMxNjcKICBbZmRvIzEwMzY2NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwMzY2NQogIFtmZG8jMTAzOTI3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzOTI3CiAgW2ZkbyMxMDQxMDhdOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDQxMDgKICBbZmRvIzEwNTQxMV06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTQxMQogIFtmZG8j
MTA2ODg1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA2
ODg1CiAgW2ZkbyMxMDgwNDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDgwNDAKICBbZmRvIzEwODE0NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwODE0NQogIFtmZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NTY2CiAgW2ZkbyMxMDk0NDFdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk0NDEKICBbZmRvIzEw
OTY2MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTY2
MQogIFtmZG8jMTEwNzg5XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTEwNzg5CiAgW2ZkbyMxMTA5MTMgXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTEwOTEzIAogIFtmZG8jOTk5MTJdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD05OTkxMgoKClBhcnRpY2lwYXRpbmcgaG9zdHMg
KDkgLT4gMTApCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBBZGRpdGlvbmFsICgx
KTogc2hhcmQtaHN3IAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIExpbnV4OiBD
SV9EUk1fNjI4MSAtPiBQYXRjaHdvcmtfMTMzMDEKCiAgQ0lfRFJNXzYyODE6IDM5ZTNkMzliZTM3
NGQ0OGJhNzNiNjFlYzM0ZjE5YTBhZmQ1YWM2ZjQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9w
Lm9yZy9nZngtY2kvbGludXgKICBJR1RfNTA1NzogM2I5MWM4MmI5MGQ0NWMxYTMwNTY5NDEwYzEx
NDJiNTQxOTU2NzQwYSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2lu
dGVsLWdwdS10b29scwogIFBhdGNod29ya18xMzMwMTogMzMxZjdjY2Y2MTlhZTMwYmNiZGViNjU3
ZTlhYjc5NGE0M2QyNzFhMCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9s
aW51eAogIHBpZ2xpdF80NTA5OiBmZGM1YTRjYTExMTI0YWI4NDEzYzc5ODg4OTZlZWM0Yzk3MzM2
Njk0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvcGlnbGl0Cgo9PSBMb2dzID09CgpG
b3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTMzMDEvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
