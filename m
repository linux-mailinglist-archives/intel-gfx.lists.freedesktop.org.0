Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AABF910DA32
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 20:40:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFA7B6EC09;
	Fri, 29 Nov 2019 19:40:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 659E36EBE0;
 Fri, 29 Nov 2019 19:40:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5DACDA0BC6;
 Fri, 29 Nov 2019 19:40:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 29 Nov 2019 19:40:22 -0000
Message-ID: <157505642235.30584.5966020321962748333@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191129115832.833188-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191129115832.833188-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/gen7=3A_Re-enable_full-ppgtt_for_ivb_=26_hsw_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ2VuNzogUmUtZW5hYmxlIGZ1
bGwtcHBndHQgZm9yIGl2YiAmIGhzdyAocmV2MykKVVJMICAgOiBodHRwczovL3BhdGNod29yay5m
cmVlZGVza3RvcC5vcmcvc2VyaWVzLzcwMTg0LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkg
PT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzc0NDQgLT4gUGF0Y2h3b3JrXzE1
NTExCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0K
ClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdl
cyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTU1MTEgYWJzb2x1dGVseSBuZWVkIHRvIGJlCiAgdmVy
aWZpZWQgbWFudWFsbHkuCiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhh
dmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNlZCBpbiBQYXRjaHdv
cmtfMTU1MTEsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCiAgdG8g
ZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBw
b3NpdGl2ZXMgaW4gQ0kuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MTEvaW5kZXguaHRtbAoKUG9zc2libGUgbmV3
IGlzc3VlcwotLS0tLS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5n
ZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE1NTExOgoKIyMj
IElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0
QGdlbV9idXN5QGJ1c3ktYWxsOgogICAgLSBmaS1pdmItMzc3MDogICAgICAgIFtQQVNTXVsxXSAt
PiBbVElNRU9VVF1bMl0gKzEgc2ltaWxhciBpc3N1ZQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NDQvZmktaXZiLTM3NzAvaWd0QGdlbV9i
dXN5QGJ1c3ktYWxsLmh0bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTUxMS9maS1pdmItMzc3MC9pZ3RAZ2VtX2J1c3lAYnVzeS1h
bGwuaHRtbAogICAgLSBmaS1oc3ctNDc3MDogICAgICAgIFtQQVNTXVszXSAtPiBbVElNRU9VVF1b
NF0gKzIgc2ltaWxhciBpc3N1ZXMKICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV83NDQ0L2ZpLWhzdy00NzcwL2lndEBnZW1fYnVzeUBidXN5LWFs
bC5odG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTU1MTEvZmktaHN3LTQ3NzAvaWd0QGdlbV9idXN5QGJ1c3ktYWxsLmh0bWwKCiAg
KiBpZ3RAZ2VtX2V4ZWNfZmVuY2VAYmFzaWMtYnVzeS1kZWZhdWx0OgogICAgLSBmaS1oc3ctNDc3
MHI6ICAgICAgIFtQQVNTXVs1XSAtPiBbVElNRU9VVF1bNl0gKzIgc2ltaWxhciBpc3N1ZXMKICAg
WzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDQ0
L2ZpLWhzdy00Nzcwci9pZ3RAZ2VtX2V4ZWNfZmVuY2VAYmFzaWMtYnVzeS1kZWZhdWx0Lmh0bWwK
ICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTUxMS9maS1oc3ctNDc3MHIvaWd0QGdlbV9leGVjX2ZlbmNlQGJhc2ljLWJ1c3ktZGVmYXVs
dC5odG1sCgogICogaWd0QGdlbV9leGVjX2ZlbmNlQGJhc2ljLXdhaXQtZGVmYXVsdDoKICAgIC0g
ZmktaHN3LXBlcHB5OiAgICAgICBbUEFTU11bN10gLT4gW1RJTUVPVVRdWzhdICsxIHNpbWlsYXIg
aXNzdWUKICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV83NDQ0L2ZpLWhzdy1wZXBweS9pZ3RAZ2VtX2V4ZWNfZmVuY2VAYmFzaWMtd2FpdC1kZWZh
dWx0Lmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNTUxMS9maS1oc3ctcGVwcHkvaWd0QGdlbV9leGVjX2ZlbmNlQGJhc2ljLXdh
aXQtZGVmYXVsdC5odG1sCiAgICAtIGZpLWl2Yi0zNzcwOiAgICAgICAgW1BBU1NdWzldIC0+IFtJ
TkNPTVBMRVRFXVsxMF0KICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83NDQ0L2ZpLWl2Yi0zNzcwL2lndEBnZW1fZXhlY19mZW5jZUBiYXNpYy13
YWl0LWRlZmF1bHQuaHRtbAogICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTUxMS9maS1pdmItMzc3MC9pZ3RAZ2VtX2V4ZWNfZmVuY2VA
YmFzaWMtd2FpdC1kZWZhdWx0Lmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9j
b250ZXh0czoKICAgIC0gZmktaHN3LXBlcHB5OiAgICAgICBbUEFTU11bMTFdIC0+IFtJTkNPTVBM
RVRFXVsxMl0KICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzQ0NC9maS1oc3ctcGVwcHkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29u
dGV4dHMuaHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNTUxMS9maS1oc3ctcGVwcHkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9n
ZW1fY29udGV4dHMuaHRtbAoKICAqIGlndEBydW5uZXJAYWJvcnRlZDoKICAgIC0gZmktaHN3LTQ3
NzA6ICAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzEzXQogICBbMTNdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUxMS9maS1oc3ctNDc3MC9pZ3RA
cnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1oc3ctNDc3MHI6ICAgICAgIE5PVFJVTiAtPiBb
RkFJTF1bMTRdCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE1NTExL2ZpLWhzdy00Nzcwci9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAoK
ICAKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3Vu
ZCBpbiBQYXRjaHdvcmtfMTU1MTEgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElH
VCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX2V4ZWNfc3Vz
cGVuZEBiYXNpYzoKICAgIC0gZmktdGdsLXk6ICAgICAgICAgICBbUEFTU11bMTVdIC0+IFtJTkNP
TVBMRVRFXVsxNl0gKFtmZG8jMTExODUwXSkKICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ0NC9maS10Z2wteS9pZ3RAZ2VtX2V4ZWNfc3Vz
cGVuZEBiYXNpYy5odG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE1NTExL2ZpLXRnbC15L2lndEBnZW1fZXhlY19zdXNwZW5kQGJh
c2ljLmh0bWwKCiAgKiBpZ3RAcHJpbWVfc2VsZl9pbXBvcnRAYmFzaWMtd2l0aF9vbmVfYm86CiAg
ICAtIGZpLWljbC1kc2k6ICAgICAgICAgW1BBU1NdWzE3XSAtPiBbRE1FU0ctV0FSTl1bMThdIChb
ZmRvIzEwNjEwN10pCiAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzc0NDQvZmktaWNsLWRzaS9pZ3RAcHJpbWVfc2VsZl9pbXBvcnRAYmFzaWMt
d2l0aF9vbmVfYm8uaHRtbAogICBbMThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTUxMS9maS1pY2wtZHNpL2lndEBwcmltZV9zZWxmX2ltcG9y
dEBiYXNpYy13aXRoX29uZV9iby5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMKCiAg
KiBpZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtbm8tZGlzcGxheToKICAgIC0gZmktc2tsLWxt
ZW06ICAgICAgICBbRE1FU0ctV0FSTl1bMTldIChbZmRvIzExMjI2MV0pIC0+IFtQQVNTXVsyMF0K
ICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NzQ0NC9maS1za2wtbG1lbS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtbm8tZGlzcGxheS5o
dG1sCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE1NTExL2ZpLXNrbC1sbWVtL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC1uby1k
aXNwbGF5Lmh0bWwKCiAgKiBpZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtd2l0aC1mYXVsdC1p
bmplY3Rpb246CiAgICAtIGZpLWljbC15OiAgICAgICAgICAgW0lOQ09NUExFVEVdWzIxXSAoW2Zk
byMxMDc3MTNdKSAtPiBbUEFTU11bMjJdCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NDQvZmktaWNsLXkvaWd0QGk5MTVfbW9kdWxlX2xv
YWRAcmVsb2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9uLmh0bWwKICAgWzIyXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MTEvZmktaWNsLXkvaWd0
QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9uLmh0bWwKCiAgKiBp
Z3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZDoKICAgIC0gZmktc2tsLTY3NzBocTogICAgICBb
RkFJTF1bMjNdIChbZmRvIzEwODUxMV0pIC0+IFtQQVNTXVsyNF0KICAgWzIzXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ0NC9maS1za2wtNjc3MGhx
L2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwKICAgWzI0XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MTEvZmktc2tsLTY3NzBo
cS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCgogICogaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZV9oYW5nY2hlY2s6CiAgICAtIGZpLWljbC1kc2k6ICAgICAgICAgW0lOQ09NUExFVEVd
WzI1XSAoW2ZkbyMxMDc3MTNdIC8gW2ZkbyMxMDg1NjldKSAtPiBbUEFTU11bMjZdCiAgIFsyNV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NDQvZmkt
aWNsLWRzaS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjay5odG1sCiAgIFsyNl06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTExL2Zp
LWljbC1kc2kvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2suaHRtbAoKICAqIGlndEBr
bXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3Q6CiAgICAtIGZpLWtibC03NTAwdTogICAgICAgW0ZB
SUxdWzI3XSAoW2ZkbyMxMTEwNDVdIC8gW2ZkbyMxMTEwOTZdKSAtPiBbUEFTU11bMjhdCiAgIFsy
N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NDQv
Zmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAogICBbMjhd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUx
MS9maS1rYmwtNzUwMHUvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdC5odG1sCgogICog
aWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYzoKICAgIC0gZmktaWNsLXUyOiAgICAg
ICAgICBbRkFJTF1bMjldIChbZmRvIzEwMzE2N10pIC0+IFtQQVNTXVszMF0KICAgWzI5XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ0NC9maS1pY2wt
dTIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1sCiAgIFszMF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTExL2ZpLWlj
bC11Mi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwKCiAgCiMjIyMgV2Fy
bmluZ3MgIyMjIwoKICAqIGlndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXM0LWRldmljZXM6CiAg
ICAtIGZpLWtibC14MTI3NTogICAgICAgW0RNRVNHLVdBUk5dWzMxXSAoW2ZkbyMxMDM1NThdIC8g
W2ZkbyMxMDU2MDJdIC8gW2ZkbyMxMDU3NjNdIC8gW2ZkbyMxMDcxMzldKSAtPiBbRE1FU0ctV0FS
Tl1bMzJdIChbZmRvIzEwMzU1OF0gLyBbZmRvIzEwNTYwMl0gLyBbZmRvIzEwNzEzOV0pCiAgIFsz
MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NDQv
Zmkta2JsLXgxMjc1L2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXM0LWRldmljZXMuaHRtbAog
ICBbMzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTUxMS9maS1rYmwteDEyNzUvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczQtZGV2aWNl
cy5odG1sCgogICogaWd0QGttc19idXN5QGJhc2ljLWZsaXAtcGlwZS1iOgogICAgLSBmaS1rYmwt
eDEyNzU6ICAgICAgIFtETUVTRy1XQVJOXVszM10gKFtmZG8jMTAzNTU4XSAvIFtmZG8jMTA1NjAy
XSAvIFtmZG8jMTA1NzYzXSkgLT4gW0RNRVNHLVdBUk5dWzM0XSAoW2ZkbyMxMDM1NThdIC8gW2Zk
byMxMDU2MDJdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFszM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NDQvZmkta2JsLXgxMjc1L2lndEBrbXNfYnVz
eUBiYXNpYy1mbGlwLXBpcGUtYi5odG1sCiAgIFszNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTExL2ZpLWtibC14MTI3NS9pZ3RAa21zX2J1
c3lAYmFzaWMtZmxpcC1waXBlLWIuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2xlZ2FjeUBiYXNp
Yy1mbGlwLWFmdGVyLWN1cnNvci1sZWdhY3k6CiAgICAtIGZpLWtibC14MTI3NTogICAgICAgW0RN
RVNHLVdBUk5dWzM1XSAoW2ZkbyMxMDM1NThdIC8gW2ZkbyMxMDU2MDJdKSAtPiBbRE1FU0ctV0FS
Tl1bMzZdIChbZmRvIzEwMzU1OF0gLyBbZmRvIzEwNTYwMl0gLyBbZmRvIzEwNTc2M10pICs0IHNp
bWlsYXIgaXNzdWVzCiAgIFszNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzc0NDQvZmkta2JsLXgxMjc1L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBiYXNp
Yy1mbGlwLWFmdGVyLWN1cnNvci1sZWdhY3kuaHRtbAogICBbMzZdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUxMS9maS1rYmwteDEyNzUvaWd0
QGttc19jdXJzb3JfbGVnYWN5QGJhc2ljLWZsaXAtYWZ0ZXItY3Vyc29yLWxlZ2FjeS5odG1sCgog
IAogIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMg
aWdub3JlZCB3aGVuIGNvbXB1dGluZwogICAgICAgICAgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVy
ZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuCgogIFtmZG8jMTAzMTY3XTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTY3CiAgW2ZkbyMx
MDM1NThdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM1
NTgKICBbZmRvIzEwNTYwMl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwNTYwMgogIFtmZG8jMTA1NzYzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTA1NzYzCiAgW2ZkbyMxMDYxMDddOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDYxMDcKICBbZmRvIzEwNzEzOV06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzEzOQogIFtmZG8jMTA3
NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEz
CiAgW2ZkbyMxMDg1MTFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMDg1MTEKICBbZmRvIzEwODU2OV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTEwODU2OQogIFtmZG8jMTA5OTY0XTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5OTY0CiAgW2ZkbyMxMTEwNDVdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEwNDUKICBbZmRvIzExMTA5
Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTA5Ngog
IFtmZG8jMTExODUwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTExODUwCiAgW2ZkbyMxMTIyNjFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMTIyNjEKICBbZmRvIzExMjI5OF06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjI5OAoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDUy
IC0+IDQ1KQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTWlzc2luZyAgICAoNyk6
IGZpLWlsay1tNTQwIGZpLXRnbC11IGZpLWhzdy00MjAwdSBmaS1ic3ctY3lhbiBmaS1jdGctcDg2
MDAgZmktYnl0LWNsYXBwZXIgZmktYmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0t
LS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lfRFJNXzc0NDQg
LT4gUGF0Y2h3b3JrXzE1NTExCgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJX0RSTV83NDQ0
OiBiNTFkYjRhOTU3MjA5YTI3ZTljNWQwYmJkM2NlMjQwOGNjZWU2YzJjIEAgZ2l0Oi8vYW5vbmdp
dC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUzMTg6IDI2YWU2NTg0YWMwM2Fk
ODYyZDgyZjk4NjMwMjI3NWE2OGJjY2NiMjkgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9y
Zy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTU1MTE6IDIyZjk0NmQwZWE1
YzhjYjk3NDlmOGE5NzY1MjgxODMyOWM0ZjdmNzYgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9w
Lm9yZy9nZngtY2kvbGludXgKCgo9PSBMaW51eCBjb21taXRzID09CgoyMmY5NDZkMGVhNWMgZHJt
L2k5MTUvZ2VuNzogUmUtZW5hYmxlIGZ1bGwtcHBndHQgZm9yIGl2YiAmIGhzdwoKPT0gTG9ncyA9
PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE1NTExL2luZGV4Lmh0bWwKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
