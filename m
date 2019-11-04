Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77518EE93B
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 21:10:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A5A6E85A;
	Mon,  4 Nov 2019 20:10:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 62EDB6E85A;
 Mon,  4 Nov 2019 20:10:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5BED2A0114;
 Mon,  4 Nov 2019 20:10:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Mon, 04 Nov 2019 20:10:23 -0000
Message-ID: <157289822334.17420.14894880895911993573@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191104173720.2696-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20191104173720.2696-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/3=5D_drm/i915=3A_Switch_obj-=3Emm?=
 =?utf-8?q?=2Elock_lockdep_annotations_on_its_head?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvM10g
ZHJtL2k5MTU6IFN3aXRjaCBvYmotPm1tLmxvY2sgbG9ja2RlcCBhbm5vdGF0aW9ucyBvbiBpdHMg
aGVhZApVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjg5
NTYvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmln
aW4vZHJtLXRpcApjNDk1YmQ5MjE3NzAgZHJtL2k5MTU6IFN3aXRjaCBvYmotPm1tLmxvY2sgbG9j
a2RlcCBhbm5vdGF0aW9ucyBvbiBpdHMgaGVhZAotOjM0NTogV0FSTklORzpOT19BVVRIT1JfU0lH
Tl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhv
ciAnRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJv
cnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAyMTMgbGluZXMgY2hlY2tlZApmZmNhZGFkMjVkOTYg
bG9ja2RlcDogYWRkIG1pZ2h0X2xvY2tfbmVzdGVkKCkKLToyNDogV0FSTklORzpTUEFDRV9CRUZP
UkVfVEFCOiBwbGVhc2UsIG5vIHNwYWNlIGJlZm9yZSB0YWJzCiMyNDogRklMRTogaW5jbHVkZS9s
aW51eC9sb2NrZGVwLmg6NjMxOgorIyBkZWZpbmUgbWlnaHRfbG9ja19uZXN0ZWQobG9jaywgc3Vi
Y2xhc3MpIF5JXkleSV5JXCQKCi06MjQ6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFjcm8gYXJn
dW1lbnQgcmV1c2UgJ2xvY2snIC0gcG9zc2libGUgc2lkZS1lZmZlY3RzPwojMjQ6IEZJTEU6IGlu
Y2x1ZGUvbGludXgvbG9ja2RlcC5oOjYzMToKKyMgZGVmaW5lIG1pZ2h0X2xvY2tfbmVzdGVkKGxv
Y2ssIHN1YmNsYXNzKSAJCQkJXAorZG8gewkJCQkJCQkJCVwKKwl0eXBlY2hlY2soc3RydWN0IGxv
Y2tkZXBfbWFwICosICYobG9jayktPmRlcF9tYXApOwkJXAorCWxvY2tfYWNxdWlyZSgmKGxvY2sp
LT5kZXBfbWFwLCBzdWJjbGFzcywgMCwgMSwgMSwgTlVMTCwJCVwKKwkJICAgICBfVEhJU19JUF8p
OwkJCQkJXAorCWxvY2tfcmVsZWFzZSgmKGxvY2spLT5kZXBfbWFwLCAwLCBfVEhJU19JUF8pOwkJ
XAorfSB3aGlsZSAoMCkKCi06NDE6IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5n
IFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkgbm9taW5hbCBwYXRjaCBhdXRob3IgJ0RhbmllbCBWZXR0
ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+JwoKdG90YWw6IDAgZXJyb3JzLCAyIHdhcm5pbmdz
LCAxIGNoZWNrcywgMjAgbGluZXMgY2hlY2tlZApkYjQ5YTU0YjdiNWMgZHJtL2k5MTU6IHVzZSBt
aWdodF9sb2NrX25lc3RlZCBpbiBnZXRfcGFnZXMgYW5ub3RhdGlvbgotOjgwOiBXQVJOSU5HOk5P
X0FVVEhPUl9TSUdOX09GRjogTWlzc2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwg
cGF0Y2ggYXV0aG9yICdEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPicKCnRv
dGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDUxIGxpbmVzIGNoZWNrZWQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
