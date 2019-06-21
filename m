Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A604EB4B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 16:57:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4644E6E8D6;
	Fri, 21 Jun 2019 14:57:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 491976E8D5;
 Fri, 21 Jun 2019 14:57:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 42B8FA008C;
 Fri, 21 Jun 2019 14:57:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 21 Jun 2019 14:57:00 -0000
Message-ID: <20190621145700.9267.42711@emeril.freedesktop.org>
References: <20190621135246.20683-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190621135246.20683-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Prevent_dereference_of_engine_before_NULL_check_in_erro?=
 =?utf-8?q?r_capture?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFByZXZlbnQgZGVyZWZlcmVu
Y2Ugb2YgZW5naW5lIGJlZm9yZSBOVUxMIGNoZWNrIGluIGVycm9yIGNhcHR1cmUKVVJMICAgOiBo
dHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyNTI4LwpTdGF0ZSA6IHN1
Y2Nlc3MKCj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzYz
MjMgLT4gUGF0Y2h3b3JrXzEzMzg2Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKlNVQ0NFU1MqKgoKICBObyBy
ZWdyZXNzaW9ucyBmb3VuZC4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM4Ni8KCktub3duIGlzc3VlcwotLS0tLS0t
LS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzEzMzg2IHRo
YXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNz
dWVzIGhpdCAjIyMjCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYzoKICAg
IC0gZmktaWNsLXUyOiAgICAgICAgICBbUEFTU11bMV0gLT4gW0ZBSUxdWzJdIChbZmRvIzEwMzE2
N10pCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjMyMy9maS1pY2wtdTIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1s
CiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTMzODYvZmktaWNsLXUyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWMuaHRt
bAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdlbV9mbGlua19iYXNpY0Bm
bGluay1saWZldGltZToKICAgIC0gZmktaWNsLXUzOiAgICAgICAgICBbRE1FU0ctV0FSTl1bM10g
KFtmZG8jMTA3NzI0XSkgLT4gW1BBU1NdWzRdICsxIHNpbWlsYXIgaXNzdWUKICAgWzNdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzIzL2ZpLWljbC11
My9pZ3RAZ2VtX2ZsaW5rX2Jhc2ljQGZsaW5rLWxpZmV0aW1lLmh0bWwKICAgWzRdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM4Ni9maS1pY2wt
dTMvaWd0QGdlbV9mbGlua19iYXNpY0BmbGluay1saWZldGltZS5odG1sCgogIAogIFtmZG8jMTAz
MTY3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTY3
CiAgW2ZkbyMxMDc3MjRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMDc3MjQKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICg1MCAtPiA0NSkKLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCgogIEFkZGl0aW9uYWwgKDMpOiBmaS1pY2wtZ3VjIGZpLWljbC1k
c2kgZmktYXBsLWd1YyAKICBNaXNzaW5nICAgICg4KTogZmkta2JsLXNvcmFrYSBmaS1pbGstbTU0
MCBmaS1oc3ctNDIwMHUgZmktYnl0LXNxdWF3a3MgZmktYnN3LWN5YW4gZmktaWNsLXkgZmktYnl0
LWNsYXBwZXIgZmktYmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAq
IExpbnV4OiBDSV9EUk1fNjMyMyAtPiBQYXRjaHdvcmtfMTMzODYKCiAgQ0lfRFJNXzYzMjM6IGI0
NDBhOGY5NzVhNWQ5ZWE3ODA3NTE3ZTQyMjgwNzdiYzc5NWU5MWUgQCBnaXQ6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTA2NDogMjI4NTBjMTkwNjU1MGZiOTdi
NDA1YzAxOTI3NWRjZmIzNGJlOGNmNyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hv
cmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xMzM4NjogN2NjNTA3YjE3ZjA2NDMw
NjdlZjcyMzUwNmRlZWUwY2I1N2IwZmNhZiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3Jn
L2dmeC1jaS9saW51eAoKCj09IExpbnV4IGNvbW1pdHMgPT0KCjdjYzUwN2IxN2YwNiBkcm0vaTkx
NTogUHJldmVudCBkZXJlZmVyZW5jZSBvZiBlbmdpbmUgYmVmb3JlIE5VTEwgY2hlY2sgaW4gZXJy
b3IgY2FwdHVyZQoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzg2LwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
