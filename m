Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8663D5FC77
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 19:26:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C803F6E3A2;
	Thu,  4 Jul 2019 17:26:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C1786E398;
 Thu,  4 Jul 2019 17:26:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 730CAA010A;
 Thu,  4 Jul 2019 17:26:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 04 Jul 2019 17:26:32 -0000
Message-ID: <20190704172632.29488.48193@emeril.freedesktop.org>
References: <20190703123236.30907-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190703123236.30907-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915/gtt=3A_Defer_the_free_for_alloc_error_paths?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3R0OiBEZWZlciB0aGUgZnJl
ZSBmb3IgYWxsb2MgZXJyb3IgcGF0aHMKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzYzMTI3LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNJ
IEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzY0MDRfZnVsbCAtPiBQYXRjaHdvcmtfMTM1
MDhfZnVsbAo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNo
YW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzEzNTA4X2Z1bGwgYWJzb2x1dGVseSBuZWVkIHRv
IGJlCiAgdmVyaWZpZWQgbWFudWFsbHkuCiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBj
aGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNlZCBp
biBQYXRjaHdvcmtfMTM1MDhfZnVsbCwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFs
bG93IHRoZW0KICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwg
cmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4KCiAgCgpQb3NzaWJsZSBuZXcgaXNzdWVzCi0t
LS0tLS0tLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1h
eSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTM1MDhfZnVsbDoKCiMjIyBJR1Qg
Y2hhbmdlcyAjIyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoKICAqIGlndEBnZW1f
YnVzeUBjbG9zZS1yYWNlOgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtQQVNTXVsxXSAtPiBb
RE1FU0ctRkFJTF1bMl0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82NDA0L3NoYXJkLXNuYjcvaWd0QGdlbV9idXN5QGNsb3NlLXJhY2UuaHRt
bAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzNTA4L3NoYXJkLXNuYjcvaWd0QGdlbV9idXN5QGNsb3NlLXJhY2UuaHRtbAoKICAqIGln
dEBydW5uZXJAYWJvcnRlZDoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBOT1RSVU4gLT4gW0ZB
SUxdWzNdCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTM1MDgvc2hhcmQta2JsNy9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBz
aGFyZC1zbmI6ICAgICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bNF0KICAgWzRdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUwOC9zaGFyZC1zbmI3
L2lndEBydW5uZXJAYWJvcnRlZC5odG1sCgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgog
IEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xMzUwOF9mdWxsIHRoYXQg
Y29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVz
IGhpdCAjIyMjCgogICogaWd0QGdlbV9leGVjX2JhbGFuY2VyQHNtb2tlOgogICAgLSBzaGFyZC1p
Y2xiOiAgICAgICAgIFtQQVNTXVs1XSAtPiBbU0tJUF1bNl0gKFtmZG8jMTEwODU0XSkKICAgWzVd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDA0L3No
YXJkLWljbGI0L2lndEBnZW1fZXhlY19iYWxhbmNlckBzbW9rZS5odG1sCiAgIFs2XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1MDgvc2hhcmQt
aWNsYjUvaWd0QGdlbV9leGVjX2JhbGFuY2VyQHNtb2tlLmh0bWwKCiAgKiBpZ3RAZ2VtX3dvcmth
cm91bmRzQHN1c3BlbmQtcmVzdW1lLWNvbnRleHQ6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAg
W1BBU1NdWzddIC0+IFtETUVTRy1XQVJOXVs4XSAoW2ZkbyMxMDg1NjZdKSArMiBzaW1pbGFyIGlz
c3VlcwogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzY0MDQvc2hhcmQtYXBsNi9pZ3RAZ2VtX3dvcmthcm91bmRzQHN1c3BlbmQtcmVzdW1lLWNv
bnRleHQuaHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzNTA4L3NoYXJkLWFwbDUvaWd0QGdlbV93b3JrYXJvdW5kc0BzdXNwZW5k
LXJlc3VtZS1jb250ZXh0Lmh0bWwKCiAgKiBpZ3RAaTkxNV9zdXNwZW5kQGZvcmNld2FrZToKICAg
IC0gc2hhcmQta2JsOiAgICAgICAgICBbUEFTU11bOV0gLT4gW0lOQ09NUExFVEVdWzEwXSAoW2Zk
byMxMDM2NjVdKQogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzY0MDQvc2hhcmQta2JsNi9pZ3RAaTkxNV9zdXNwZW5kQGZvcmNld2FrZS5odG1s
CiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzNTA4L3NoYXJkLWtibDYvaWd0QGk5MTVfc3VzcGVuZEBmb3JjZXdha2UuaHRtbAoKICAq
IGlndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWItY3Vyc29yLTY0eDIxLXJhbmRvbToKICAgIC0gc2hh
cmQtYXBsOiAgICAgICAgICBbUEFTU11bMTFdIC0+IFtJTkNPTVBMRVRFXVsxMl0gKFtmZG8jMTAz
OTI3XSkgKzEgc2ltaWxhciBpc3N1ZQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDA0L3NoYXJkLWFwbDgvaWd0QGttc19jdXJzb3JfY3Jj
QHBpcGUtYi1jdXJzb3ItNjR4MjEtcmFuZG9tLmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1MDgvc2hhcmQtYXBsMi9pZ3RA
a21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNvci02NHgyMS1yYW5kb20uaHRtbAoKICAqIGlndEBr
bXNfZmxpcEAyeC1wbGFpbi1mbGlwLWZiLXJlY3JlYXRlOgogICAgLSBzaGFyZC1nbGs6ICAgICAg
ICAgIFtQQVNTXVsxM10gLT4gW0ZBSUxdWzE0XSAoW2ZkbyMxMDAzNjhdKQogICBbMTNdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDA0L3NoYXJkLWds
azEvaWd0QGttc19mbGlwQDJ4LXBsYWluLWZsaXAtZmItcmVjcmVhdGUuaHRtbAogICBbMTRdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUwOC9z
aGFyZC1nbGs0L2lndEBrbXNfZmxpcEAyeC1wbGFpbi1mbGlwLWZiLXJlY3JlYXRlLmh0bWwKCiAg
KiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuazoKICAgIC0gc2hhcmQtc2tsOiAg
ICAgICAgICBbUEFTU11bMTVdIC0+IFtGQUlMXVsxNl0gKFtmZG8jMTA1MzYzXSkKICAgWzE1XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQwNC9zaGFy
ZC1za2w1L2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLmh0bWwKICAgWzE2XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1MDgv
c2hhcmQtc2tsOS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay5odG1sCgogICog
aWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZi
LWRyYXctcmVuZGVyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsxN10gLT4gW0ZB
SUxdWzE4XSAoW2ZkbyMxMDMxNjddKSArNSBzaW1pbGFyIGlzc3VlcwogICBbMTddOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDA0L3NoYXJkLWljbGI1
L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRm
Yi1kcmF3LXJlbmRlci5odG1sCiAgIFsxOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNTA4L3NoYXJkLWljbGIyL2lndEBrbXNfZnJvbnRidWZm
ZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LXJlbmRlci5odG1s
CgogICogaWd0QGttc19wc3IyX3N1QGZyb250YnVmZmVyOgogICAgLSBzaGFyZC1pY2xiOiAgICAg
ICAgIFtQQVNTXVsxOV0gLT4gW1NLSVBdWzIwXSAoW2ZkbyMxMDk2NDJdIC8gW2ZkbyMxMTEwNjhd
KQogICBbMTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82NDA0L3NoYXJkLWljbGIyL2lndEBrbXNfcHNyMl9zdUBmcm9udGJ1ZmZlci5odG1sCiAgIFsy
MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEz
NTA4L3NoYXJkLWljbGI2L2lndEBrbXNfcHNyMl9zdUBmcm9udGJ1ZmZlci5odG1sCgogICogaWd0
QGttc19wc3JAcHNyMl9zcHJpdGVfcGxhbmVfbW92ZToKICAgIC0gc2hhcmQtaWNsYjogICAgICAg
ICBbUEFTU11bMjFdIC0+IFtTS0lQXVsyMl0gKFtmZG8jMTA5NDQxXSkgKzIgc2ltaWxhciBpc3N1
ZXMKICAgWzIxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjQwNC9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3IyX3Nwcml0ZV9wbGFuZV9tb3ZlLmh0
bWwKICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTM1MDgvc2hhcmQtaWNsYjUvaWd0QGttc19wc3JAcHNyMl9zcHJpdGVfcGxhbmVfbW92
ZS5odG1sCgogICogaWd0QGttc19zZXRtb2RlQGJhc2ljOgogICAgLSBzaGFyZC1hcGw6ICAgICAg
ICAgIFtQQVNTXVsyM10gLT4gW0ZBSUxdWzI0XSAoW2ZkbyM5OTkxMl0pCiAgIFsyM106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0MDQvc2hhcmQtYXBs
MS9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbAogICBbMjRdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUwOC9zaGFyZC1hcGw2L2lndEBrbXNf
c2V0bW9kZUBiYXNpYy5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMKCiAgKiBpZ3RA
Z2VtX2J1c3lAY2xvc2UtcmFjZToKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRE1FU0ctRkFJ
TF1bMjVdIChbZmRvIzExMTA2M10pIC0+IFtQQVNTXVsyNl0KICAgWzI1XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQwNC9zaGFyZC1za2wxL2lndEBn
ZW1fYnVzeUBjbG9zZS1yYWNlLmh0bWwKICAgWzI2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1MDgvc2hhcmQtc2tsMy9pZ3RAZ2VtX2J1c3lA
Y2xvc2UtcmFjZS5odG1sCgogICogaWd0QGdlbV9zb2Z0cGluQG5vcmVsb2MtczM6CiAgICAtIHNo
YXJkLXNrbDogICAgICAgICAgW0lOQ09NUExFVEVdWzI3XSAoW2ZkbyMxMDQxMDhdIC8gW2ZkbyMx
MDc3NzNdKSAtPiBbUEFTU11bMjhdCiAgIFsyN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzY0MDQvc2hhcmQtc2tsMS9pZ3RAZ2VtX3NvZnRwaW5Abm9y
ZWxvYy1zMy5odG1sCiAgIFsyOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEzNTA4L3NoYXJkLXNrbDUvaWd0QGdlbV9zb2Z0cGluQG5vcmVsb2Mt
czMuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2xlZ2FjeUAyeC1mbGlwLXZzLWN1cnNvci1hdG9t
aWM6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW0ZBSUxdWzI5XSAoW2ZkbyMxMDQ4NzNdKSAt
PiBbUEFTU11bMzBdCiAgIFsyOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY0MDQvc2hhcmQtZ2xrMi9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAMngtZmxp
cC12cy1jdXJzb3ItYXRvbWljLmh0bWwKICAgWzMwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1MDgvc2hhcmQtZ2xrMS9pZ3RAa21zX2N1cnNv
cl9sZWdhY3lAMngtZmxpcC12cy1jdXJzb3ItYXRvbWljLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBA
ZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGlibGU6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAg
W0RNRVNHLVdBUk5dWzMxXSAoW2ZkbyMxMDg1NjZdKSAtPiBbUEFTU11bMzJdICsyIHNpbWlsYXIg
aXNzdWVzCiAgIFszMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY0MDQvc2hhcmQtYXBsNS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVy
cnVwdGlibGUuaHRtbAogICBbMzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzUwOC9zaGFyZC1hcGw4L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1
c3BlbmQtaW50ZXJydXB0aWJsZS5odG1sCgogICogaWd0QGttc19mbGlwQG1vZGVzZXQtdnMtdmJs
YW5rLXJhY2U6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW0ZBSUxdWzMzXSAoW2ZkbyMxMDMw
NjBdKSAtPiBbUEFTU11bMzRdCiAgIFszM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzY0MDQvc2hhcmQtZ2xrNy9pZ3RAa21zX2ZsaXBAbW9kZXNldC12
cy12YmxhbmstcmFjZS5odG1sCiAgIFszNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNTA4L3NoYXJkLWdsazcvaWd0QGttc19mbGlwQG1vZGVz
ZXQtdnMtdmJsYW5rLXJhY2UuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdA
ZmJjcHNyLTFwLXByaW1zY3JuLWluZGZiLXBnZmxpcC1ibHQ6CiAgICAtIHNoYXJkLWljbGI6ICAg
ICAgICAgW0lOQ09NUExFVEVdWzM1XSAoW2ZkbyMxMDY5NzhdIC8gW2ZkbyMxMDc3MTNdKSAtPiBb
UEFTU11bMzZdCiAgIFszNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzY0MDQvc2hhcmQtaWNsYjcvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bm
YmNwc3ItMXAtcHJpbXNjcm4taW5kZmItcGdmbGlwLWJsdC5odG1sCiAgIFszNl06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNTA4L3NoYXJkLWlj
bGIzL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWluZGZi
LXBnZmxpcC1ibHQuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNy
LXN0cmlkZWNoYW5nZToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbRkFJTF1bMzddIChbZmRv
IzEwMzE2N10pIC0+IFtQQVNTXVszOF0KICAgWzM3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQwNC9zaGFyZC1pY2xiMS9pZ3RAa21zX2Zyb250YnVm
ZmVyX3RyYWNraW5nQGZiY3Bzci1zdHJpZGVjaGFuZ2UuaHRtbAogICBbMzhdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUwOC9zaGFyZC1pY2xi
My9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci1zdHJpZGVjaGFuZ2UuaHRtbAoK
ICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAcHNyLTFwLXByaW1zY3JuLXNwci1pbmRm
Yi1kcmF3LW1tYXAtY3B1OgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVszOV0gKFtm
ZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzQwXQogICBbMzldOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDA0L3NoYXJkLXNrbDEwL2lndEBrbXNfZnJvbnRi
dWZmZXJfdHJhY2tpbmdAcHNyLTFwLXByaW1zY3JuLXNwci1pbmRmYi1kcmF3LW1tYXAtY3B1Lmh0
bWwKICAgWzQwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTM1MDgvc2hhcmQtc2tsMy9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQHBzci0x
cC1wcmltc2Nybi1zcHItaW5kZmItZHJhdy1tbWFwLWNwdS5odG1sCgogICogaWd0QGttc19wbGFu
ZV9hbHBoYV9ibGVuZEBwaXBlLWEtY29uc3RhbnQtYWxwaGEtbWluOgogICAgLSBzaGFyZC1za2w6
ICAgICAgICAgIFtGQUlMXVs0MV0gKFtmZG8jMTA4MTQ1XSkgLT4gW1BBU1NdWzQyXQogICBbNDFd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDA0L3No
YXJkLXNrbDEwL2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNvbnN0YW50LWFscGhh
LW1pbi5odG1sCiAgIFs0Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzNTA4L3NoYXJkLXNrbDMvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBw
aXBlLWEtY29uc3RhbnQtYWxwaGEtbWluLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhhX2Js
ZW5kQHBpcGUtYi1jb3ZlcmFnZS03ZWZjOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlM
XVs0M10gKFtmZG8jMTA4MTQ1XSAvIFtmZG8jMTEwNDAzXSkgLT4gW1BBU1NdWzQ0XQogICBbNDNd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDA0L3No
YXJkLXNrbDMvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY292ZXJhZ2UtN2VmYy5o
dG1sCiAgIFs0NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzNTA4L3NoYXJkLXNrbDcvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWIt
Y292ZXJhZ2UtN2VmYy5odG1sCgogICogaWd0QGttc19wc3JAcHNyMl9jdXJzb3JfYmx0OgogICAg
LSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs0NV0gKFtmZG8jMTA5NDQxXSkgLT4gW1BBU1Nd
WzQ2XSArMyBzaW1pbGFyIGlzc3VlcwogICBbNDVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDA0L3NoYXJkLWljbGI1L2lndEBrbXNfcHNyQHBzcjJf
Y3Vyc29yX2JsdC5odG1sCiAgIFs0Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzNTA4L3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfY3Vy
c29yX2JsdC5odG1sCgogICogaWd0QHBlcmZAYmxvY2tpbmc6CiAgICAtIHNoYXJkLXNrbDogICAg
ICAgICAgW0ZBSUxdWzQ3XSAoW2ZkbyMxMTA3MjhdKSAtPiBbUEFTU11bNDhdCiAgIFs0N106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0MDQvc2hhcmQt
c2tsOC9pZ3RAcGVyZkBibG9ja2luZy5odG1sCiAgIFs0OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNTA4L3NoYXJkLXNrbDgvaWd0QHBlcmZA
YmxvY2tpbmcuaHRtbAoKICAKIyMjIyBXYXJuaW5ncyAjIyMjCgogICogaWd0QGttc19jb250ZW50
X3Byb3RlY3Rpb25AYXRvbWljOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs0OV0g
KFtmZG8jMTA5MzAwXSkgLT4gW1NLSVBdWzUwXSAoW2ZkbyMxMDkzMDBdIC8gW2ZkbyMxMTEwNjZd
KQogICBbNDldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82NDA0L3NoYXJkLWljbGI3L2lndEBrbXNfY29udGVudF9wcm90ZWN0aW9uQGF0b21pYy5odG1s
CiAgIFs1MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzNTA4L3NoYXJkLWljbGI3L2lndEBrbXNfY29udGVudF9wcm90ZWN0aW9uQGF0b21pYy5o
dG1sCgogICogaWd0QGttc19wc3IyX3N1QHBhZ2VfZmxpcDoKICAgIC0gc2hhcmQtaWNsYjogICAg
ICAgICBbU0tJUF1bNTFdIChbZmRvIzEwOTY0Ml0pIC0+IFtTS0lQXVs1Ml0gKFtmZG8jMTA5NjQy
XSAvIFtmZG8jMTExMDY4XSkKICAgWzUxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjQwNC9zaGFyZC1pY2xiMy9pZ3RAa21zX3BzcjJfc3VAcGFnZV9m
bGlwLmh0bWwKICAgWzUyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTM1MDgvc2hhcmQtaWNsYjUvaWd0QGttc19wc3IyX3N1QHBhZ2VfZmxpcC5o
dG1sCgogIAogIFtmZG8jMTAwMzY4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTAwMzY4CiAgW2ZkbyMxMDMwNjBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMwNjAKICBbZmRvIzEwMzE2N106IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzE2NwogIFtmZG8jMTAzNjY1XTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzNjY1CiAgW2Zk
byMxMDM5MjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDM5MjcKICBbZmRvIzEwNDEwOF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwNDEwOAogIFtmZG8jMTA0ODczXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA0ODczCiAgW2ZkbyMxMDUzNjNdOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDUzNjMKICBbZmRvIzEwNjk3OF06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNjk3OAogIFtmZG8j
MTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3
NzEzCiAgW2ZkbyMxMDc3NzNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDc3NzMKICBbZmRvIzEwODE0NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwODE0NQogIFtmZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NTY2CiAgW2ZkbyMxMDkzMDBdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkzMDAKICBbZmRvIzEw
OTQ0MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTQ0
MQogIFtmZG8jMTA5NjQyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA5NjQyCiAgW2ZkbyMxMTA0MDNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMTA0MDMKICBbZmRvIzExMDcyOF06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDcyOAogIFtmZG8jMTEwODU0XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwODU0CiAgW2ZkbyMxMTEw
NjNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEwNjMK
ICBbZmRvIzExMTA2Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTExMTA2NgogIFtmZG8jMTExMDY4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTExMDY4CiAgW2ZkbyM5OTkxMl06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTk5OTEyCgoKUGFydGljaXBhdGluZyBob3N0cyAoMTAg
LT4gMTApCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBObyBjaGFuZ2VzIGluIHBh
cnRpY2lwYXRpbmcgaG9zdHMKCgpCdWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBMaW51
eDogQ0lfRFJNXzY0MDQgLT4gUGF0Y2h3b3JrXzEzNTA4CgogIENJX0RSTV82NDA0OiAxYjg1M2U2
ZTE4MWM2MDE1ZmFjYTkwOGI1Nzk1NmVhODM2ZTFmNDQwIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVz
a3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUwNzk6IDg3M2RmMmZhOWU4ZjVmZDAyZDQ1MzJi
MzBlZjI1NzlmNGZlNGYyN2YgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2Fw
cC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTM1MDg6IDFjYjMxNDQ2NzEyNTY2ZmFmZDlk
YzJjN2U0OGIwZmY1OTBkYjI1MTkgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngt
Y2kvbGludXgKICBwaWdsaXRfNDUwOTogZmRjNWE0Y2ExMTEyNGFiODQxM2M3OTg4ODk2ZWVjNGM5
NzMzNjY5NCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3BpZ2xpdAoKPT0gTG9ncyA9
PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzNTA4LwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
