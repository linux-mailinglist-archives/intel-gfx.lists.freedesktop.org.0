Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0550455DF2
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 03:48:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC5306E1DE;
	Wed, 26 Jun 2019 01:48:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CBD336E1D8;
 Wed, 26 Jun 2019 01:48:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C2D40A00EF;
 Wed, 26 Jun 2019 01:48:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 26 Jun 2019 01:48:29 -0000
Message-ID: <20190626014829.20397.24625@emeril.freedesktop.org>
References: <20190625194859.28005-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190625194859.28005-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915/gt=3A_Add_some_debug_tracing_for_context_pinning?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IEFkZCBzb21lIGRlYnVn
IHRyYWNpbmcgZm9yIGNvbnRleHQgcGlubmluZwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjI3MzEvClN0YXRlIDogc3VjY2VzcwoKPT0gU3VtbWFyeSA9
PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjM1MSAtPiBQYXRjaHdvcmtfMTM0
MjYKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoK
U3VtbWFyeQotLS0tLS0tCgogICoqV0FSTklORyoqCgogIE1pbm9yIHVua25vd24gY2hhbmdlcyBj
b21pbmcgd2l0aCBQYXRjaHdvcmtfMTM0MjYgbmVlZCB0byBiZSB2ZXJpZmllZAogIG1hbnVhbGx5
LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8g
ZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEzNDI2LCBwbGVh
c2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMg
bmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJ
LgoKICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzNDI2LwoKUG9zc2libGUgbmV3IGlzc3VlcwotLS0tLS0tLS0tLS0tLS0t
LS0tCgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGlu
dHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEzNDI2OgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBX
YXJuaW5ncyAjIyMjCgogICogaWd0QGttc19jaGFtZWxpdW1AdmdhLWVkaWQtcmVhZDoKICAgIC0g
Zmkta2JsLTc1Njd1OiAgICAgICBbVElNRU9VVF1bMV0gLT4gW0ZBSUxdWzJdCiAgIFsxXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjM1MS9maS1rYmwt
NzU2N3UvaWd0QGttc19jaGFtZWxpdW1AdmdhLWVkaWQtcmVhZC5odG1sCiAgIFsyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0MjYvZmkta2Js
LTc1Njd1L2lndEBrbXNfY2hhbWVsaXVtQHZnYS1lZGlkLXJlYWQuaHRtbAoKICAKS25vd24gaXNz
dWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdv
cmtfMTM0MjYgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMj
IwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9h
ZDoKICAgIC0gZmktc2tsLTY3NzBocTogICAgICBbUEFTU11bM10gLT4gW0ZBSUxdWzRdIChbZmRv
IzEwODUxMV0pCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjM1MS9maS1za2wtNjc3MGhxL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2Fk
Lmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzQyNi9maS1za2wtNjc3MGhxL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2Fk
Lmh0bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBkZWJ1Z2ZzX3Rlc3RA
cmVhZF9hbGxfZW50cmllczoKICAgIC0gZmktaWxrLTY1MDogICAgICAgICBbRE1FU0ctV0FSTl1b
NV0gKFtmZG8jMTA2Mzg3XSkgLT4gW1BBU1NdWzZdCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjM1MS9maS1pbGstNjUwL2lndEBkZWJ1Z2Zz
X3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0MjYvZmktaWxrLTY1MC9pZ3RAZGVidWdm
c190ZXN0QHJlYWRfYWxsX2VudHJpZXMuaHRtbAoKICAqIGlndEBnZW1fY3R4X2NyZWF0ZUBiYXNp
Yy1maWxlczoKICAgIC0gZmktaWNsLXUzOiAgICAgICAgICBbSU5DT01QTEVURV1bN10gKFtmZG8j
MTA3NzEzXSAvIFtmZG8jMTA5MTAwXSkgLT4gW1BBU1NdWzhdCiAgIFs3XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjM1MS9maS1pY2wtdTMvaWd0QGdl
bV9jdHhfY3JlYXRlQGJhc2ljLWZpbGVzLmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQyNi9maS1pY2wtdTMvaWd0QGdlbV9j
dHhfY3JlYXRlQGJhc2ljLWZpbGVzLmh0bWwKCiAgKiBpZ3RAZ2VtX2N0eF9zd2l0Y2hAYmFzaWMt
ZGVmYXVsdDoKICAgIC0gZmktaWNsLWd1YzogICAgICAgICBbSU5DT01QTEVURV1bOV0gKFtmZG8j
MTA3NzEzXSAvIFtmZG8jMTA4NTY5XSkgLT4gW1BBU1NdWzEwXQogICBbOV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzNTEvZmktaWNsLWd1Yy9pZ3RA
Z2VtX2N0eF9zd2l0Y2hAYmFzaWMtZGVmYXVsdC5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDI2L2ZpLWljbC1ndWMvaWd0
QGdlbV9jdHhfc3dpdGNoQGJhc2ljLWRlZmF1bHQuaHRtbAoKICAqIGlndEBrbXNfY2hhbWVsaXVt
QGhkbWktaHBkLWZhc3Q6CiAgICAtIGZpLWtibC03NTAwdTogICAgICAgW0ZBSUxdWzExXSAoW2Zk
byMxMDk0ODVdKSAtPiBbUEFTU11bMTJdCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzNTEvZmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVs
aXVtQGhkbWktaHBkLWZhc3QuaHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQyNi9maS1rYmwtNzUwMHUvaWd0QGttc19jaGFt
ZWxpdW1AaGRtaS1ocGQtZmFzdC5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2lu
Z0BiYXNpYzoKICAgIC0gZmktaWNsLXUyOiAgICAgICAgICBbRkFJTF1bMTNdIChbZmRvIzEwMzE2
N10pIC0+IFtQQVNTXVsxNF0KICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjM1MS9maS1pY2wtdTIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFj
a2luZ0BiYXNpYy5odG1sCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzNDI2L2ZpLWljbC11Mi9pZ3RAa21zX2Zyb250YnVmZmVyX3Ry
YWNraW5nQGJhc2ljLmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBrbXNfY2hh
bWVsaXVtQGRwLWNyYy1mYXN0OgogICAgLSBmaS1rYmwtNzU2N3U6ICAgICAgIFtUSU1FT1VUXVsx
NV0gLT4gW0ZBSUxdWzE2XSAoW2ZkbyMxMDk2MzUgXSkKICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjM1MS9maS1rYmwtNzU2N3UvaWd0QGtt
c19jaGFtZWxpdW1AZHAtY3JjLWZhc3QuaHRtbAogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQyNi9maS1rYmwtNzU2N3UvaWd0QGtt
c19jaGFtZWxpdW1AZHAtY3JjLWZhc3QuaHRtbAoKICAKICBbZmRvIzEwMzE2N106IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzE2NwogIFtmZG8jMTA2Mzg3
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA2Mzg3CiAg
W2ZkbyMxMDc3MTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDc3MTMKICBbZmRvIzEwODUxMV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwODUxMQogIFtmZG8jMTA4NTY5XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NTY5CiAgW2ZkbyMxMDkxMDBdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkxMDAKICBbZmRvIzEwOTQ4NV06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTQ4NQogIFtm
ZG8jMTA5NjM1IF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTEwOTYzNSAKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICg1MSAtPiA0NikKLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCgogIEFkZGl0aW9uYWwgKDIpOiBmaS1nZGctNTUxIGZpLWJ3ci0yMTYw
IAogIE1pc3NpbmcgICAgKDcpOiBmaS1pbGstbTU0MCBmaS1oc3ctNDIwMHUgZmktYnl0LXNxdWF3
a3MgZmktYnN3LWN5YW4gZmktaWNsLXkgZmktYnl0LWNsYXBwZXIgZmktYmR3LXNhbXVzIAoKCkJ1
aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIExpbnV4OiBDSV9EUk1fNjM1MSAtPiBQYXRj
aHdvcmtfMTM0MjYKCiAgQ0lfRFJNXzYzNTE6IDg0MWE1ZTliNWQwYjYxN2NlYTM5ZDJkZTQ0OTJj
ZjM0NzRkM2Y1NTUgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgK
ICBJR1RfNTA2ODogMTVhZDY2NDUzNDQxMzYyOGYwNmMwZjE3MmFhYzExNTk4YmZkYjg5NSBAIGdp
dDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBh
dGNod29ya18xMzQyNjogN2U2OTUzMTE1NzllM2M1YTkzMTYzNjk3NTNlMjY1MjIyODEzZmIwNCBA
IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAoKCj09IExpbnV4IGNv
bW1pdHMgPT0KCjdlNjk1MzExNTc5ZSBkcm0vaTkxNS9ndDogQWRkIHNvbWUgZGVidWcgdHJhY2lu
ZyBmb3IgY29udGV4dCBwaW5uaW5nCgo9PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0MjYv
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
