Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0395B504F2
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 10:55:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CD4F896BF;
	Mon, 24 Jun 2019 08:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 05FFF896A5;
 Mon, 24 Jun 2019 08:55:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED7FEA010C;
 Mon, 24 Jun 2019 08:55:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 24 Jun 2019 08:55:07 -0000
Message-ID: <20190624085507.1475.86490@emeril.freedesktop.org>
References: <20190624054315.18910-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190624054315.18910-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B01/19=5D_drm/i915/execlists=3A_Always_clear?=
 =?utf-8?q?_ring=5Fpause_if_we_do_not_submit?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzE5
XSBkcm0vaTkxNS9leGVjbGlzdHM6IEFsd2F5cyBjbGVhciByaW5nX3BhdXNlIGlmIHdlIGRvIG5v
dCBzdWJtaXQKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzYyNjEyLwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFu
Z2VzIGZyb20gQ0lfRFJNXzYzMzFfZnVsbCAtPiBQYXRjaHdvcmtfMTM0MDFfZnVsbAo9PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0t
LS0tLS0KCiAgKipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdp
dGggUGF0Y2h3b3JrXzEzNDAxX2Z1bGwgYWJzb2x1dGVseSBuZWVkIHRvIGJlCiAgdmVyaWZpZWQg
bWFudWFsbHkuCiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90
aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTM0
MDFfZnVsbCwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0KICB0byBk
b2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBv
c2l0aXZlcyBpbiBDSS4KCiAgCgpQb3NzaWJsZSBuZXcgaXNzdWVzCi0tLS0tLS0tLS0tLS0tLS0t
LS0KCiAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50
cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTM0MDFfZnVsbDoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMj
IyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoKICAqIGlndEBnZW1fY3R4X3N3aXRjaEBiYXNp
Yy1xdWV1ZS1oZWF2eToKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMV0gLT4gW0lO
Q09NUExFVEVdWzJdCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjMzMS9zaGFyZC1za2w0L2lndEBnZW1fY3R4X3N3aXRjaEBiYXNpYy1xdWV1
ZS1oZWF2eS5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTM0MDEvc2hhcmQtc2tsNi9pZ3RAZ2VtX2N0eF9zd2l0Y2hAYmFzaWMt
cXVldWUtaGVhdnkuaHRtbAoKICAqIGlndEBnZW1fY3R4X3N3aXRjaEBiYXNpYy1xdWV1ZS1saWdo
dDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bM10gLT4gW0RNRVNHLUZBSUxdWzRd
CiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjMzMS9zaGFyZC1pY2xiNi9pZ3RAZ2VtX2N0eF9zd2l0Y2hAYmFzaWMtcXVldWUtbGlnaHQuaHRt
bAogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzNDAxL3NoYXJkLWljbGI1L2lndEBnZW1fY3R4X3N3aXRjaEBiYXNpYy1xdWV1ZS1saWdo
dC5odG1sCiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzVdIC0+IFtUSU1FT1VUXVs2
XQogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzYzMzEvc2hhcmQtc2tsOS9pZ3RAZ2VtX2N0eF9zd2l0Y2hAYmFzaWMtcXVldWUtbGlnaHQuaHRt
bAogICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzNDAxL3NoYXJkLXNrbDIvaWd0QGdlbV9jdHhfc3dpdGNoQGJhc2ljLXF1ZXVlLWxpZ2h0
Lmh0bWwKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbUEFTU11bN10gLT4gW1RJTUVPVVRdWzhd
CiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjMzMS9zaGFyZC1rYmwzL2lndEBnZW1fY3R4X3N3aXRjaEBiYXNpYy1xdWV1ZS1saWdodC5odG1s
CiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTM0MDEvc2hhcmQta2JsNi9pZ3RAZ2VtX2N0eF9zd2l0Y2hAYmFzaWMtcXVldWUtbGlnaHQu
aHRtbAogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVs5XSAtPiBbVElNRU9VVF1bMTBd
CiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjMzMS9zaGFyZC1hcGw2L2lndEBnZW1fY3R4X3N3aXRjaEBiYXNpYy1xdWV1ZS1saWdodC5odG1s
CiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzNDAxL3NoYXJkLWFwbDQvaWd0QGdlbV9jdHhfc3dpdGNoQGJhc2ljLXF1ZXVlLWxpZ2h0
Lmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfcGFyYWxsZWxAYmNzMC1jb250ZXh0czoKICAgIC0gc2hh
cmQtaHN3OiAgICAgICAgICBbUEFTU11bMTFdIC0+IFtGQUlMXVsxMl0KICAgWzExXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMzMS9zaGFyZC1oc3c0
L2lndEBnZW1fZXhlY19wYXJhbGxlbEBiY3MwLWNvbnRleHRzLmh0bWwKICAgWzEyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0MDEvc2hhcmQt
aHN3OC9pZ3RAZ2VtX2V4ZWNfcGFyYWxsZWxAYmNzMC1jb250ZXh0cy5odG1sCgogIApLbm93biBp
c3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNo
d29ya18xMzQwMV9mdWxsIHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hh
bmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgogICogaWd0QGdlbV9jdHhfc3dpdGNoQGJh
c2ljLXF1ZXVlLWhlYXZ5OgogICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtQQVNTXVsxM10gLT4g
W0lOQ09NUExFVEVdWzE0XSAoW2ZkbyMxMDMzNTldIC8gW2sub3JnIzE5ODEzM10pICsxIHNpbWls
YXIgaXNzdWUKICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjMzMS9zaGFyZC1nbGs2L2lndEBnZW1fY3R4X3N3aXRjaEBiYXNpYy1xdWV1ZS1o
ZWF2eS5odG1sCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzNDAxL3NoYXJkLWdsazUvaWd0QGdlbV9jdHhfc3dpdGNoQGJhc2ljLXF1
ZXVlLWhlYXZ5Lmh0bWwKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMTVdIC0+IFtJ
TkNPTVBMRVRFXVsxNl0gKFtmZG8jMTA3NzEzXSkKICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMzMS9zaGFyZC1pY2xiNy9pZ3RAZ2VtX2N0
eF9zd2l0Y2hAYmFzaWMtcXVldWUtaGVhdnkuaHRtbAogICBbMTZdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQwMS9zaGFyZC1pY2xiNi9pZ3RA
Z2VtX2N0eF9zd2l0Y2hAYmFzaWMtcXVldWUtaGVhdnkuaHRtbAogICAgLSBzaGFyZC1rYmw6ICAg
ICAgICAgIFtQQVNTXVsxN10gLT4gW0lOQ09NUExFVEVdWzE4XSAoW2ZkbyMxMDM2NjVdKQogICBb
MTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzMx
L3NoYXJkLWtibDEvaWd0QGdlbV9jdHhfc3dpdGNoQGJhc2ljLXF1ZXVlLWhlYXZ5Lmh0bWwKICAg
WzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTM0MDEvc2hhcmQta2JsNC9pZ3RAZ2VtX2N0eF9zd2l0Y2hAYmFzaWMtcXVldWUtaGVhdnkuaHRt
bAoKICAqIGlndEBnZW1fdGlsZWRfc3dhcHBpbmdAbm9uLXRocmVhZGVkOgogICAgLSBzaGFyZC1n
bGs6ICAgICAgICAgIFtQQVNTXVsxOV0gLT4gW0RNRVNHLVdBUk5dWzIwXSAoW2ZkbyMxMDg2ODZd
KQogICBbMTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82MzMxL3NoYXJkLWdsazcvaWd0QGdlbV90aWxlZF9zd2FwcGluZ0Bub24tdGhyZWFkZWQuaHRt
bAogICBbMjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzQwMS9zaGFyZC1nbGszL2lndEBnZW1fdGlsZWRfc3dhcHBpbmdAbm9uLXRocmVhZGVk
Lmh0bWwKCiAgKiBpZ3RAaTkxNV9wbV9ycG1Ac3lzdGVtLXN1c3BlbmQtZXhlY2J1ZjoKICAgIC0g
c2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMjFdIC0+IFtJTkNPTVBMRVRFXVsyMl0gKFtmZG8j
MTA3NzEzXSAvIFtmZG8jMTA4ODQwXSkKICAgWzIxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMzMS9zaGFyZC1pY2xiNy9pZ3RAaTkxNV9wbV9ycG1A
c3lzdGVtLXN1c3BlbmQtZXhlY2J1Zi5odG1sCiAgIFsyMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDAxL3NoYXJkLWljbGIyL2lndEBpOTE1
X3BtX3JwbUBzeXN0ZW0tc3VzcGVuZC1leGVjYnVmLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxp
cC12cy1zdXNwZW5kOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsyM10gLT4gW0lO
Q09NUExFVEVdWzI0XSAoW2ZkbyMxMDk1MDddKQogICBbMjNdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzMxL3NoYXJkLXNrbDQvaWd0QGttc19mbGlw
QGZsaXAtdnMtc3VzcGVuZC5odG1sCiAgIFsyNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDAxL3NoYXJkLXNrbDQvaWd0QGttc19mbGlwQGZs
aXAtdnMtc3VzcGVuZC5odG1sCgogICogaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRl
cnJ1cHRpYmxlOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVsyNV0gLT4gW0RNRVNH
LVdBUk5dWzI2XSAoW2ZkbyMxMDg1NjZdKSArNSBzaW1pbGFyIGlzc3VlcwogICBbMjVdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzMxL3NoYXJkLWFw
bDUvaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzI2
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0
MDEvc2hhcmQtYXBsNy9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGlibGUu
aHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTJwLXNjbmRzY3JuLWN1
ci1pbmRmYi1tb3ZlOgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtQQVNTXVsyN10gLT4gW1NL
SVBdWzI4XSAoW2ZkbyMxMDkyNzFdKSArMTQgc2ltaWxhciBpc3N1ZXMKICAgWzI3XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMzMS9zaGFyZC1oc3c2
L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTJwLXNjbmRzY3JuLWN1ci1pbmRmYi1t
b3ZlLmh0bWwKICAgWzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTM0MDEvc2hhcmQtaHN3MS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5n
QGZiYy0ycC1zY25kc2Nybi1jdXItaW5kZmItbW92ZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1
ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tc2hyZmItcGxmbGlwLWJsdDoKICAgIC0g
c2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMjldIC0+IFtGQUlMXVszMF0gKFtmZG8jMTAzMTY3
XSkgKzQgc2ltaWxhciBpc3N1ZXMKICAgWzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMzMS9zaGFyZC1pY2xiNy9pZ3RAa21zX2Zyb250YnVmZmVy
X3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1zaHJmYi1wbGZsaXAtYmx0Lmh0bWwKICAgWzMw
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0
MDEvc2hhcmQtaWNsYjEvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJp
bXNjcm4tc2hyZmItcGxmbGlwLWJsdC5odG1sCgogICogaWd0QGttc19wc3JAbm9fZHJyczoKICAg
IC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMzFdIC0+IFtGQUlMXVszMl0gKFtmZG8jMTA4
MzQxXSkKICAgWzMxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjMzMS9zaGFyZC1pY2xiNi9pZ3RAa21zX3BzckBub19kcnJzLmh0bWwKICAgWzMyXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0MDEv
c2hhcmQtaWNsYjEvaWd0QGttc19wc3JAbm9fZHJycy5odG1sCgogICogaWd0QGttc19wc3JAcHNy
Ml9jdXJzb3JfYmx0OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVszM10gLT4gW1NL
SVBdWzM0XSAoW2ZkbyMxMDk0NDFdKSArMyBzaW1pbGFyIGlzc3VlcwogICBbMzNdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzMxL3NoYXJkLWljbGIy
L2lndEBrbXNfcHNyQHBzcjJfY3Vyc29yX2JsdC5odG1sCiAgIFszNF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDAxL3NoYXJkLWljbGIxL2ln
dEBrbXNfcHNyQHBzcjJfY3Vyc29yX2JsdC5odG1sCgogICogaWd0QGttc19yb3RhdGlvbl9jcmNA
c3ByaXRlLXJvdGF0aW9uLTkwLXBvcy0xMDAtMDoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBb
UEFTU11bMzVdIC0+IFtJTkNPTVBMRVRFXVszNl0gKFtmZG8jMTAzOTI3XSkgKzIgc2ltaWxhciBp
c3N1ZXMKICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjMzMS9zaGFyZC1hcGwzL2lndEBrbXNfcm90YXRpb25fY3JjQHNwcml0ZS1yb3RhdGlv
bi05MC1wb3MtMTAwLTAuaHRtbAogICBbMzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQwMS9zaGFyZC1hcGw0L2lndEBrbXNfcm90YXRpb25f
Y3JjQHNwcml0ZS1yb3RhdGlvbi05MC1wb3MtMTAwLTAuaHRtbAoKICAqIGlndEBrbXNfc2V0bW9k
ZUBiYXNpYzoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bMzddIC0+IFtGQUlMXVsz
OF0gKFtmZG8jOTk5MTJdKQogICBbMzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82MzMxL3NoYXJkLWFwbDYvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0
bWwKICAgWzM4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTM0MDEvc2hhcmQtYXBsMS9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbAoKICAKIyMj
IyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHJjczAtczM6
CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0RNRVNHLVdBUk5dWzM5XSAoW2ZkbyMxMDg1NjZd
KSAtPiBbUEFTU11bNDBdICsyIHNpbWlsYXIgaXNzdWVzCiAgIFszOV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMzEvc2hhcmQtYXBsNy9pZ3RAZ2Vt
X2N0eF9pc29sYXRpb25AcmNzMC1zMy5odG1sCiAgIFs0MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDAxL3NoYXJkLWFwbDMvaWd0QGdlbV9j
dHhfaXNvbGF0aW9uQHJjczAtczMuaHRtbAoKICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkB2ZWNz
MC1zMzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbSU5DT01QTEVURV1bNDFdIChbZmRvIzEw
NDEwOF0pIC0+IFtQQVNTXVs0Ml0KICAgWzQxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMzMS9zaGFyZC1za2w4L2lndEBnZW1fY3R4X2lzb2xhdGlv
bkB2ZWNzMC1zMy5odG1sCiAgIFs0Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzNDAxL3NoYXJkLXNrbDkvaWd0QGdlbV9jdHhfaXNvbGF0aW9u
QHZlY3MwLXMzLmh0bWwKCiAgKiBpZ3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtZXh0ZXJuYWw6CiAgICAt
IHNoYXJkLWdsazogICAgICAgICAgW0RNRVNHLVdBUk5dWzQzXSAoW2ZkbyMxMTA5MTMgXSkgLT4g
W1BBU1NdWzQ0XSArOCBzaW1pbGFyIGlzc3VlcwogICBbNDNdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzMxL3NoYXJkLWdsazQvaWd0QGdlbV9laW9A
aW4tZmxpZ2h0LWV4dGVybmFsLmh0bWwKICAgWzQ0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0MDEvc2hhcmQtZ2xrNC9pZ3RAZ2VtX2Vpb0Bp
bi1mbGlnaHQtZXh0ZXJuYWwuaHRtbAoKICAqIGlndEBnZW1fZWlvQHdhaXQtMTBtczoKICAgIC0g
c2hhcmQtYXBsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bNDVdIChbZmRvIzExMDkxMyBdKSAtPiBb
UEFTU11bNDZdICs1IHNpbWlsYXIgaXNzdWVzCiAgIFs0NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMzEvc2hhcmQtYXBsMi9pZ3RAZ2VtX2Vpb0B3
YWl0LTEwbXMuaHRtbAogICBbNDZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzQwMS9zaGFyZC1hcGw3L2lndEBnZW1fZWlvQHdhaXQtMTBtcy5o
dG1sCgogICogaWd0QGdlbV9laW9Ad2FpdC13ZWRnZS1pbW1lZGlhdGU6CiAgICAtIHNoYXJkLWlj
bGI6ICAgICAgICAgW0RNRVNHLVdBUk5dWzQ3XSAoW2ZkbyMxMTA5MTMgXSkgLT4gW1BBU1NdWzQ4
XSArMTAgc2ltaWxhciBpc3N1ZXMKICAgWzQ3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMzMS9zaGFyZC1pY2xiMi9pZ3RAZ2VtX2Vpb0B3YWl0LXdl
ZGdlLWltbWVkaWF0ZS5odG1sCiAgIFs0OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDAxL3NoYXJkLWljbGI2L2lndEBnZW1fZWlvQHdhaXQt
d2VkZ2UtaW1tZWRpYXRlLmh0bWwKCiAgKiBpZ3RAZ2VtX3BhcnRpYWxfcHdyaXRlX3ByZWFkQHJl
YWRzLXNub29wOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtETUVTRy1XQVJOXVs0OV0gKFtm
ZG8jMTEwOTEzIF0pIC0+IFtQQVNTXVs1MF0gKzUgc2ltaWxhciBpc3N1ZXMKICAgWzQ5XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMzMS9zaGFyZC1r
Ymw0L2lndEBnZW1fcGFydGlhbF9wd3JpdGVfcHJlYWRAcmVhZHMtc25vb3AuaHRtbAogICBbNTBd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQw
MS9zaGFyZC1rYmw2L2lndEBnZW1fcGFydGlhbF9wd3JpdGVfcHJlYWRAcmVhZHMtc25vb3AuaHRt
bAoKICAqIGlndEBnZW1fcGFydGlhbF9wd3JpdGVfcHJlYWRAd3JpdGVzLWFmdGVyLXJlYWRzLXVu
Y2FjaGVkOgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtETUVTRy1XQVJOXVs1MV0gKFtmZG8j
MTEwNzg5XSAvIFtmZG8jMTEwOTEzIF0pIC0+IFtQQVNTXVs1Ml0gKzUgc2ltaWxhciBpc3N1ZXMK
ICAgWzUxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjMzMS9zaGFyZC1oc3c1L2lndEBnZW1fcGFydGlhbF9wd3JpdGVfcHJlYWRAd3JpdGVzLWFmdGVy
LXJlYWRzLXVuY2FjaGVkLmh0bWwKICAgWzUyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0MDEvc2hhcmQtaHN3OC9pZ3RAZ2VtX3BhcnRpYWxf
cHdyaXRlX3ByZWFkQHdyaXRlcy1hZnRlci1yZWFkcy11bmNhY2hlZC5odG1sCgogICogaWd0QGdl
bV90aWxlZF9mZW5jZV9ibGl0c0Bub3JtYWw6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW0RN
RVNHLVdBUk5dWzUzXSAoW2ZkbyMxMTA3ODldIC8gW2ZkbyMxMTA5MTMgXSkgLT4gW1BBU1NdWzU0
XSArNSBzaW1pbGFyIGlzc3VlcwogICBbNTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82MzMxL3NoYXJkLXNuYjcvaWd0QGdlbV90aWxlZF9mZW5jZV9i
bGl0c0Bub3JtYWwuaHRtbAogICBbNTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMzQwMS9zaGFyZC1zbmIxL2lndEBnZW1fdGlsZWRfZmVuY2Vf
YmxpdHNAbm9ybWFsLmh0bWwKCiAgKiBpZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5vbi10aHJlYWRl
ZDoKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbRkFJTF1bNTVdIChbZmRvIzEwODY4Nl0pIC0+
IFtQQVNTXVs1Nl0KICAgWzU1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjMzMS9zaGFyZC1oc3cxL2lndEBnZW1fdGlsZWRfc3dhcHBpbmdAbm9uLXRo
cmVhZGVkLmh0bWwKICAgWzU2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTM0MDEvc2hhcmQtaHN3NS9pZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5v
bi10aHJlYWRlZC5odG1sCgogICogaWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZh
bGlkYXRlLW92ZXJsYXAtYnVzeToKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRE1FU0ctV0FS
Tl1bNTddIChbZmRvIzExMDkxMyBdKSAtPiBbUEFTU11bNThdICsyIHNpbWlsYXIgaXNzdWVzCiAg
IFs1N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYz
MzEvc2hhcmQtc2tsOC9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVkLWludmFsaWRhdGUt
b3ZlcmxhcC1idXN5Lmh0bWwKICAgWzU4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0MDEvc2hhcmQtc2tsMTAvaWd0QGdlbV91c2VycHRyX2Js
aXRzQG1hcC1maXhlZC1pbnZhbGlkYXRlLW92ZXJsYXAtYnVzeS5odG1sCgogICogaWd0QGdlbV91
c2VycHRyX2JsaXRzQHN5bmMtdW5tYXAtY3ljbGVzOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAg
IFtJTkNPTVBMRVRFXVs1OV0gKFtmZG8jMTA3NzEzXSkgLT4gW1BBU1NdWzYwXQogICBbNTldOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzMxL3NoYXJk
LWljbGI3L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWN5Y2xlcy5odG1sCiAgIFs2
MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEz
NDAxL3NoYXJkLWljbGI4L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWN5Y2xlcy5o
dG1sCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9jbGllbnQ6CiAgICAtIHNoYXJkLWdsazog
ICAgICAgICAgW0RNRVNHLUZBSUxdWzYxXSAtPiBbUEFTU11bNjJdCiAgIFs2MV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMzEvc2hhcmQtZ2xrNS9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlX2NsaWVudC5odG1sCiAgIFs2Ml06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDAxL3NoYXJkLWdsazMvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9jbGllbnQuaHRtbAoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QG1v
Y2tfcmVxdWVzdHM6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0lOQ09NUExFVEVdWzYzXSAo
W2ZkbyMxMTA1NTBdKSAtPiBbUEFTU11bNjRdCiAgIFs2M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMzEvc2hhcmQtc2tsMy9pZ3RAaTkxNV9zZWxm
dGVzdEBtb2NrX3JlcXVlc3RzLmh0bWwKICAgWzY0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0MDEvc2hhcmQtc2tsNy9pZ3RAaTkxNV9zZWxm
dGVzdEBtb2NrX3JlcXVlc3RzLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1
cnNvci02NHgyMS1vZmZzY3JlZW46CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzY1
XSAoW2ZkbyMxMDMyMzJdKSAtPiBbUEFTU11bNjZdCiAgIFs2NV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMzEvc2hhcmQtc2tsNy9pZ3RAa21zX2N1
cnNvcl9jcmNAcGlwZS1iLWN1cnNvci02NHgyMS1vZmZzY3JlZW4uaHRtbAogICBbNjZdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQwMS9zaGFy
ZC1za2wyL2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWItY3Vyc29yLTY0eDIxLW9mZnNjcmVlbi5o
dG1sCgogICogaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlOgogICAg
LSBzaGFyZC1za2w6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs2N10gKFtmZG8jMTA5NTA3XSkgLT4g
W1BBU1NdWzY4XQogICBbNjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82MzMxL3NoYXJkLXNrbDkvaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1p
bnRlcnJ1cHRpYmxlLmh0bWwKICAgWzY4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0MDEvc2hhcmQtc2tsMTAvaWd0QGttc19mbGlwQGZsaXAt
dnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3Ry
YWNraW5nQGZiYy0ycC1zY25kc2Nybi1jdXItaW5kZmItZHJhdy1wd3JpdGU6CiAgICAtIHNoYXJk
LWhzdzogICAgICAgICAgW1NLSVBdWzY5XSAoW2ZkbyMxMDkyNzFdKSAtPiBbUEFTU11bNzBdICsz
MCBzaW1pbGFyIGlzc3VlcwogICBbNjldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82MzMxL3NoYXJkLWhzdzEvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFj
a2luZ0BmYmMtMnAtc2NuZHNjcm4tY3VyLWluZGZiLWRyYXctcHdyaXRlLmh0bWwKICAgWzcwXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0MDEv
c2hhcmQtaHN3NC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0ycC1zY25kc2Nybi1j
dXItaW5kZmItZHJhdy1wd3JpdGUuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tp
bmdAZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LXJlbmRlcjoKICAgIC0gc2hhcmQt
aWNsYjogICAgICAgICBbRkFJTF1bNzFdIChbZmRvIzEwMzE2N10pIC0+IFtQQVNTXVs3Ml0gKzMg
c2ltaWxhciBpc3N1ZXMKICAgWzcxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjMzMS9zaGFyZC1pY2xiNy9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNr
aW5nQGZiY3Bzci0xcC1wcmltc2Nybi1jdXItaW5kZmItZHJhdy1yZW5kZXIuaHRtbAogICBbNzJd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQw
MS9zaGFyZC1pY2xiOC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmlt
c2Nybi1jdXItaW5kZmItZHJhdy1yZW5kZXIuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFf
YmxlbmRAcGlwZS1jLWNvbnN0YW50LWFscGhhLW1pbjoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAg
ICBbRkFJTF1bNzNdIChbZmRvIzEwODE0NV0pIC0+IFtQQVNTXVs3NF0gKzEgc2ltaWxhciBpc3N1
ZQogICBbNzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82MzMxL3NoYXJkLXNrbDcvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY29uc3Rh
bnQtYWxwaGEtbWluLmh0bWwKICAgWzc0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0MDEvc2hhcmQtc2tsNS9pZ3RAa21zX3BsYW5lX2FscGhh
X2JsZW5kQHBpcGUtYy1jb25zdGFudC1hbHBoYS1taW4uaHRtbAoKICAqIGlndEBrbXNfcHNyQHBz
cjJfcHJpbWFyeV9tbWFwX2NwdToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bNzVd
IChbZmRvIzEwOTQ0MV0pIC0+IFtQQVNTXVs3Nl0gKzIgc2ltaWxhciBpc3N1ZXMKICAgWzc1XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMzMS9zaGFy
ZC1pY2xiOC9pZ3RAa21zX3BzckBwc3IyX3ByaW1hcnlfbW1hcF9jcHUuaHRtbAogICBbNzZdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQwMS9z
aGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3IyX3ByaW1hcnlfbW1hcF9jcHUuaHRtbAoKICAqIGln
dEBrbXNfc3lzZnNfZWRpZF90aW1pbmc6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW0ZBSUxd
Wzc3XSAoW2ZkbyMxMDAwNDddKSAtPiBbUEFTU11bNzhdCiAgIFs3N106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMzEvc2hhcmQtaHN3MS9pZ3RAa21z
X3N5c2ZzX2VkaWRfdGltaW5nLmh0bWwKICAgWzc4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0MDEvc2hhcmQtaHN3Mi9pZ3RAa21zX3N5c2Zz
X2VkaWRfdGltaW5nLmh0bWwKCiAgKiBpZ3RAa21zX3VuaXZlcnNhbF9wbGFuZUB1bml2ZXJzYWwt
cGxhbmUtcGlwZS1jLWZ1bmN0aW9uYWw6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxd
Wzc5XSAoW2ZkbyMxMTAwMzddKSAtPiBbUEFTU11bODBdCiAgIFs3OV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMzEvc2hhcmQtc2tsNy9pZ3RAa21z
X3VuaXZlcnNhbF9wbGFuZUB1bml2ZXJzYWwtcGxhbmUtcGlwZS1jLWZ1bmN0aW9uYWwuaHRtbAog
ICBbODBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMzQwMS9zaGFyZC1za2w1L2lndEBrbXNfdW5pdmVyc2FsX3BsYW5lQHVuaXZlcnNhbC1wbGFu
ZS1waXBlLWMtZnVuY3Rpb25hbC5odG1sCgogICogaWd0QHBlcmZfcG11QHJjNjoKICAgIC0gc2hh
cmQta2JsOiAgICAgICAgICBbU0tJUF1bODFdIChbZmRvIzEwOTI3MV0pIC0+IFtQQVNTXVs4Ml0K
ICAgWzgxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjMzMS9zaGFyZC1rYmw3L2lndEBwZXJmX3BtdUByYzYuaHRtbAogICBbODJdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQwMS9zaGFyZC1rYmwx
L2lndEBwZXJmX3BtdUByYzYuaHRtbAoKICAqIGlndEBwcmltZV9idXN5QGhhbmctYnNkOgogICAg
LSBzaGFyZC1nbGs6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs4M10gKFtmZG8jMTAzMzU5XSAvIFtr
Lm9yZyMxOTgxMzNdKSAtPiBbUEFTU11bODRdCiAgIFs4M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMzEvc2hhcmQtZ2xrNC9pZ3RAcHJpbWVfYnVz
eUBoYW5nLWJzZC5odG1sCiAgIFs4NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzNDAxL3NoYXJkLWdsazYvaWd0QHByaW1lX2J1c3lAaGFuZy1i
c2QuaHRtbAoKICAKIyMjIyBXYXJuaW5ncyAjIyMjCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90
cmFja2luZ0BmYmMtMnAtc2NuZHNjcm4tcHJpLWluZGZiLWRyYXctYmx0OgogICAgLSBzaGFyZC1h
cGw6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs4NV0gKFtmZG8jMTAzOTI3XSkgLT4gW1NLSVBdWzg2
XSAoW2ZkbyMxMDkyNzFdKQogICBbODVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82MzMxL3NoYXJkLWFwbDgvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFj
a2luZ0BmYmMtMnAtc2NuZHNjcm4tcHJpLWluZGZiLWRyYXctYmx0Lmh0bWwKICAgWzg2XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0MDEvc2hh
cmQtYXBsOC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0ycC1zY25kc2Nybi1wcmkt
aW5kZmItZHJhdy1ibHQuaHRtbAoKICAKICBbZmRvIzEwMDA0N106IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMDA0NwogIFtmZG8jMTAzMTY3XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTY3CiAgW2ZkbyMxMDMy
MzJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMyMzIK
ICBbZmRvIzEwMzM1OV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwMzM1OQogIFtmZG8jMTAzNjY1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTAzNjY1CiAgW2ZkbyMxMDM5MjddOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM5MjcKICBbZmRvIzEwNDEwOF06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNDEwOAogIFtmZG8jMTA3NzEz
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAg
W2ZkbyMxMDgxNDVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDgxNDUKICBbZmRvIzEwODM0MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwODM0MQogIFtmZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NTY2CiAgW2ZkbyMxMDg2ODZdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg2ODYKICBbZmRvIzEwODg0MF06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODg0MAogIFtm
ZG8jMTA5MjcxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA5MjcxCiAgW2ZkbyMxMDk0NDFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDk0NDEKICBbZmRvIzEwOTUwN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTUwNwogIFtmZG8jMTEwMDM3XTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwMDM3CiAgW2ZkbyMxMTA1NTBdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA1NTAKICBbZmRv
IzExMDc4OV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MDc4OQogIFtmZG8jMTEwOTEzIF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTExMDkxMyAKICBbZmRvIzk5OTEyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9OTk5MTIKICBbay5vcmcjMTk4MTMzXTogaHR0cHM6Ly9idWd6
aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0xOTgxMzMKCgpQYXJ0aWNpcGF0aW5nIGhv
c3RzICgxMCAtPiAxMCkKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIE5vIGNoYW5n
ZXMgaW4gcGFydGljaXBhdGluZyBob3N0cwoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoK
ICAqIExpbnV4OiBDSV9EUk1fNjMzMSAtPiBQYXRjaHdvcmtfMTM0MDEKCiAgQ0lfRFJNXzYzMzE6
IGEyMGFmZTU1MTExNjBlOWMxZWEyMmI4MGIzYmUwMjI2ZGZiMDkxN2EgQCBnaXQ6Ly9hbm9uZ2l0
LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTA2NDogMjI4NTBjMTkwNjU1MGZi
OTdiNDA1YzAxOTI3NWRjZmIzNGJlOGNmNyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3Jn
L3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xMzQwMTogMGIyMDJlM2IzYmZi
NTFhYjRkMDZmYjZlMDgzNzI4MWEyZGQ1ZmVjOCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Au
b3JnL2dmeC1jaS9saW51eAogIHBpZ2xpdF80NTA5OiBmZGM1YTRjYTExMTI0YWI4NDEzYzc5ODg4
OTZlZWM0Yzk3MzM2Njk0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvcGlnbGl0Cgo9
PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0MDEvCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
