Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E91CF253EA
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 17:30:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6864989327;
	Tue, 21 May 2019 15:30:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D01F889327;
 Tue, 21 May 2019 15:30:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9968A0091;
 Tue, 21 May 2019 15:30:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 21 May 2019 15:30:23 -0000
Message-ID: <20190521153023.13173.142@emeril.freedesktop.org>
References: <20190521100611.10089-1-daniel.vetter@ffwll.ch>
X-Patchwork-Hint: ignore
In-Reply-To: <20190521100611.10089-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_kernel=2Eh=3A_Add_non=5Fblock=5Fstart/end=28=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczoga2VybmVsLmg6IEFkZCBub25fYmxvY2tfc3Rh
cnQvZW5kKCkKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzYwODk2LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2gg
b3JpZ2luL2RybS10aXAKOTQ1ZDgzYzZlNThkIGtlcm5lbC5oOiBBZGQgbm9uX2Jsb2NrX3N0YXJ0
L2VuZCgpCi06Nzc6IFdBUk5JTkc6U0lOR0xFX1NUQVRFTUVOVF9ET19XSElMRV9NQUNSTzogU2lu
Z2xlIHN0YXRlbWVudCBtYWNyb3Mgc2hvdWxkIG5vdCB1c2UgYSBkbyB7fSB3aGlsZSAoMCkgbG9v
cAojNzc6IEZJTEU6IGluY2x1ZGUvbGludXgva2VybmVsLmg6MjM1OgorIyBkZWZpbmUgbm9uX2Js
b2NrX3N0YXJ0KCkgXAorCWRvIHsgY3VycmVudC0+bm9uX2Jsb2NrX2NvdW50Kys7IH0gd2hpbGUg
KDApCgotOjc5OiBXQVJOSU5HOlNJTkdMRV9TVEFURU1FTlRfRE9fV0hJTEVfTUFDUk86IFNpbmds
ZSBzdGF0ZW1lbnQgbWFjcm9zIHNob3VsZCBub3QgdXNlIGEgZG8ge30gd2hpbGUgKDApIGxvb3AK
Izc5OiBGSUxFOiBpbmNsdWRlL2xpbnV4L2tlcm5lbC5oOjIzNzoKKyMgZGVmaW5lIG5vbl9ibG9j
a19lbmQoKSBcCisJZG8geyBXQVJOX09OKGN1cnJlbnQtPm5vbl9ibG9ja19jb3VudC0tID09IDAp
OyB9IHdoaWxlICgwKQoKLToxMjY6IFdBUk5JTkc6UFJFRkVSX1BSX0xFVkVMOiBQcmVmZXIgW3N1
YnN5c3RlbSBlZzogbmV0ZGV2XV9lcnIoW3N1YnN5c3RlbV1kZXYsIC4uLiB0aGVuIGRldl9lcnIo
ZGV2LCAuLi4gdGhlbiBwcl9lcnIoLi4uICB0byBwcmludGsoS0VSTl9FUlIgLi4uCiMxMjY6IEZJ
TEU6IGtlcm5lbC9zY2hlZC9jb3JlLmM6MzI3NjoKKwkJcHJpbnRrKEtFUk5fRVJSICJCVUc6IHNj
aGVkdWxpbmcgaW4gYSBub24tYmxvY2tpbmcgc2VjdGlvbjogJXMvJWQvJWlcbiIsCgotOjEyNzog
Q0hFQ0s6UEFSRU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4g
cGFyZW50aGVzaXMKIzEyNzogRklMRToga2VybmVsL3NjaGVkL2NvcmUuYzozMjc3OgorCQlwcmlu
dGsoS0VSTl9FUlIgIkJVRzogc2NoZWR1bGluZyBpbiBhIG5vbi1ibG9ja2luZyBzZWN0aW9uOiAl
cy8lZC8laVxuIiwKKwkJCXByZXYtPmNvbW0sIHByZXYtPnBpZCwgcHJldi0+bm9uX2Jsb2NrX2Nv
dW50KTsKCi06MTY0OiBXQVJOSU5HOk5PX0FVVEhPUl9TSUdOX09GRjogTWlzc2luZyBTaWduZWQt
b2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwgcGF0Y2ggYXV0aG9yICdEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGZmd2xsLmNoPicKCnRvdGFsOiAwIGVycm9ycywgNCB3YXJuaW5ncywgMSBjaGVj
a3MsIDg3IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
