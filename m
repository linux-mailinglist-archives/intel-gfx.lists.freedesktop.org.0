Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 342D662168
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 17:16:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3118B89D61;
	Mon,  8 Jul 2019 15:16:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D70C689D5B;
 Mon,  8 Jul 2019 15:16:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CFB0CA3C0D;
 Mon,  8 Jul 2019 15:16:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 08 Jul 2019 15:16:07 -0000
Message-ID: <20190708151607.21809.92079@emeril.freedesktop.org>
References: <20190708140327.26825-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190708140327.26825-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915/userptr=3A_Acquire_the_page_lock_around_set=5Fpage=5Fdirty?=
 =?utf-8?b?KCk=?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvdXNlcnB0cjogQWNxdWlyZSB0
aGUgcGFnZSBsb2NrIGFyb3VuZCBzZXRfcGFnZV9kaXJ0eSgpClVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MzM4My8KU3RhdGUgOiBzdWNjZXNzCgo9PSBT
dW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV82NDMxIC0+IFBhdGNo
d29ya18xMzU2Mwo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipTVUNDRVNTKioKCiAgTm8gcmVncmVzc2lvbnMg
Zm91bmQuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTM1NjMvCgpLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhl
cmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xMzU2MyB0aGF0IGNvbWUgZnJv
bSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIGZpeGVz
ICMjIyMKCiAgKiBpZ3RAZ2VtX2Nsb3NlX3JhY2VAYmFzaWMtcHJvY2VzczoKICAgIC0gZmktaWNs
LXUzOiAgICAgICAgICBbRE1FU0ctV0FSTl1bMV0gKFtmZG8jMTA3NzI0XSkgLT4gW1BBU1NdWzJd
CiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjQzMS9maS1pY2wtdTMvaWd0QGdlbV9jbG9zZV9yYWNlQGJhc2ljLXByb2Nlc3MuaHRtbAogICBb
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEz
NTYzL2ZpLWljbC11My9pZ3RAZ2VtX2Nsb3NlX3JhY2VAYmFzaWMtcHJvY2Vzcy5odG1sCgogICog
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2s6CiAgICAtIGZpLWljbC11MzogICAgICAg
ICAgW0lOQ09NUExFVEVdWzNdIChbZmRvIzEwNzcxM10gLyBbZmRvIzEwODU2OV0pIC0+IFtQQVNT
XVs0XQogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzY0MzEvZmktaWNsLXUzL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwK
ICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMzU2My9maS1pY2wtdTMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2suaHRtbAoK
ICAqIGlndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3Q6CiAgICAtIGZpLWtibC03NTAwdTog
ICAgICAgW0ZBSUxdWzVdIChbZmRvIzEwOTQ4NV0pIC0+IFtQQVNTXVs2XQogICBbNV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0MzEvZmkta2JsLTc1
MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAogICBbNl06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNTYzL2ZpLWtibC03
NTAwdS9pZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWhwZC1mYXN0Lmh0bWwKCiAgCiAgW2ZkbyMxMDc3
MTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTMK
ICBbZmRvIzEwNzcyNF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwNzcyNAogIFtmZG8jMTA4NTY5XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTA4NTY5CiAgW2ZkbyMxMDk0ODVdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk0ODUKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICg1
MyAtPiA0NikKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIEFkZGl0aW9uYWwgKDEp
OiBmaS1wbnYtZDUxMCAKICBNaXNzaW5nICAgICg4KTogZmktaWxrLW01NDAgZmktaHN3LTQyMDB1
IGZpLWJzdy1uMzA1MCBmaS1ieXQtc3F1YXdrcyBmaS1ic3ctY3lhbiBmaS1pY2wteSBmaS1ieXQt
Y2xhcHBlciBmaS1iZHctc2FtdXMgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICog
TGludXg6IENJX0RSTV82NDMxIC0+IFBhdGNod29ya18xMzU2MwoKICBDSV9EUk1fNjQzMTogOWE0
MGZiMjhlNDUyNjFmMmZjNDRhOWIyNzFjMTlmYWYxZjA3MTEzOCBAIGdpdDovL2Fub25naXQuZnJl
ZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MDkwOiBjNmM3NWUxMTE3NWJhZWI2Yjk4
NGUwY2MxM2M2ZmJlMjg2M2EwNzk0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9y
Zy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzEzNTYzOiAxMDllNWNkMDc0ZjI4MjQ2
YmY5ZjE0NmQ1N2NjZjE0OTJkNjEyNTNjIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcv
Z2Z4LWNpL2xpbnV4CgoKPT0gS2VybmVsIDMyYml0IGJ1aWxkID09CgpXYXJuaW5nOiBLZXJuZWwg
MzJiaXQgYnVpbGR0ZXN0IGZhaWxlZDoKaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTM1NjMvYnVpbGRfMzJiaXQubG9nCgogIENBTEwgICAgc2NyaXB0
cy9jaGVja3N5c2NhbGxzLnNoCiAgQ0FMTCAgICBzY3JpcHRzL2F0b21pYy9jaGVjay1hdG9taWNz
LnNoCiAgQ0hLICAgICBpbmNsdWRlL2dlbmVyYXRlZC9jb21waWxlLmgKS2VybmVsOiBhcmNoL3g4
Ni9ib290L2J6SW1hZ2UgaXMgcmVhZHkgICgjMSkKICBCdWlsZGluZyBtb2R1bGVzLCBzdGFnZSAy
LgogIE1PRFBPU1QgMTEyIG1vZHVsZXMKRVJST1I6ICJfX3VkaXZkaTMiIFtkcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHUua29dIHVuZGVmaW5lZCEKRVJST1I6ICJfX2RpdmRpMyIgW2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdS5rb10gdW5kZWZpbmVkIQpzY3JpcHRzL01h
a2VmaWxlLm1vZHBvc3Q6OTE6IHJlY2lwZSBmb3IgdGFyZ2V0ICdfX21vZHBvc3QnIGZhaWxlZApt
YWtlWzFdOiAqKiogW19fbW9kcG9zdF0gRXJyb3IgMQpNYWtlZmlsZToxMjg3OiByZWNpcGUgZm9y
IHRhcmdldCAnbW9kdWxlcycgZmFpbGVkCm1ha2U6ICoqKiBbbW9kdWxlc10gRXJyb3IgMgoKCj09
IExpbnV4IGNvbW1pdHMgPT0KCjEwOWU1Y2QwNzRmMiBkcm0vaTkxNS91c2VycHRyOiBBY3F1aXJl
IHRoZSBwYWdlIGxvY2sgYXJvdW5kIHNldF9wYWdlX2RpcnR5KCkKCj09IExvZ3MgPT0KCkZvciBt
b3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzU2My8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
