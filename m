Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB9BF7C3B
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 19:45:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 304986E9C5;
	Mon, 11 Nov 2019 18:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 61D286E9C3;
 Mon, 11 Nov 2019 18:45:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5ADE8A0096;
 Mon, 11 Nov 2019 18:45:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 11 Nov 2019 18:45:19 -0000
Message-ID: <157349791934.29958.7885897130913406297@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191111120957.17732-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191111120957.17732-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915/gt=3A_Try_an_extra_flush_on_the_Haswell_blitter?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IFRyeSBhbiBleHRyYSBm
bHVzaCBvbiB0aGUgSGFzd2VsbCBibGl0dGVyClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3Nlcmllcy82OTI5My8KU3RhdGUgOiBzdWNjZXNzCgo9PSBTdW1tYXJ5ID09
CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83MzEwIC0+IFBhdGNod29ya18xNTIx
Ngo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpT
dW1tYXJ5Ci0tLS0tLS0KCiAgKipTVUNDRVNTKioKCiAgTm8gcmVncmVzc2lvbnMgZm91bmQuCgog
IEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTUyMTYvaW5kZXguaHRtbAoKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBI
ZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTUyMTYgdGhhdCBjb21lIGZy
b20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMj
IyMKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjazoKICAgIC0gZmktaWNsLXU0
OiAgICAgICAgICBbUEFTU11bMV0gLT4gW0RNRVNHLUZBSUxdWzJdIChbZmRvIzExMTE0NF0gLyBb
ZmRvIzExMTY3OF0pCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzMxMC9maS1pY2wtdTQvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hl
Y2suaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE1MjE2L2ZpLWljbC11NC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVj
ay5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMKCiAgKiBpZ3RAa21zX3NldG1vZGVA
YmFzaWMtY2xvbmUtc2luZ2xlLWNydGM6CiAgICAtIGZpLXNrbC02NzcwaHE6ICAgICAgW1dBUk5d
WzNdIC0+IFtQQVNTXVs0XQogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzczMTAvZmktc2tsLTY3NzBocS9pZ3RAa21zX3NldG1vZGVAYmFzaWMt
Y2xvbmUtc2luZ2xlLWNydGMuaHRtbAogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MjE2L2ZpLXNrbC02NzcwaHEvaWd0QGttc19zZXRt
b2RlQGJhc2ljLWNsb25lLXNpbmdsZS1jcnRjLmh0bWwKCiAgCiAgW2ZkbyMxMTExNDRdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTExNDQKICBbZmRvIzEx
MTY3OF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTY3
OAoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDUxIC0+IDQ1KQotLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KCiAgQWRkaXRpb25hbCAoMSk6IGZpLWJ3ci0yMTYwIAogIE1pc3NpbmcgICAgKDcp
OiBmaS1pbGstbTU0MCBmaS1oc3ctNDIwMHUgZmktYnl0LXNxdWF3a3MgZmktYnN3LWN5YW4gZmkt
Y3RnLXA4NjAwIGZpLWJ5dC1jbGFwcGVyIGZpLWJkdy1zYW11cyAKCgpCdWlsZCBjaGFuZ2VzCi0t
LS0tLS0tLS0tLS0KCiAgKiBDSTogQ0ktMjAxOTA1MjkgLT4gTm9uZQogICogTGludXg6IENJX0RS
TV83MzEwIC0+IFBhdGNod29ya18xNTIxNgoKICBDSS0yMDE5MDUyOTogMjAxOTA1MjkKICBDSV9E
Uk1fNzMxMDogZjNlZGMyNDY3NjU5OWI2YzRlNmFiNzEzMDMwYWU2MzBlODY0ZTczMiBAIGdpdDov
L2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MjcxOiAwNWYwNDAw
YzUwYWY4NDNkZjMwMWVmYjU0NzVlOWY1ZTJkMTZhMDk4IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVz
a3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzE1MjE2OiAyZGZh
OThjNDkwYjU4NDdlNDVlNjgxZjZjNTk3NDViMzMxYjkxNWUyIEAgZ2l0Oi8vYW5vbmdpdC5mcmVl
ZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CgoKPT0gTGludXggY29tbWl0cyA9PQoKMmRmYTk4YzQ5
MGI1IGRybS9pOTE1L2d0OiBUcnkgYW4gZXh0cmEgZmx1c2ggb24gdGhlIEhhc3dlbGwgYmxpdHRl
cgoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MjE2L2luZGV4Lmh0bWwKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
