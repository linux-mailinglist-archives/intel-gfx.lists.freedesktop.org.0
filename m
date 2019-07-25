Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C98474CF4
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 13:23:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63E016E70C;
	Thu, 25 Jul 2019 11:23:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 314366E709;
 Thu, 25 Jul 2019 11:23:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28D0AA010A;
 Thu, 25 Jul 2019 11:23:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 25 Jul 2019 11:23:32 -0000
Message-ID: <20190725112332.29716.27198@emeril.freedesktop.org>
References: <20190725074305.22754-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190725074305.22754-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Unshare_the_idle-barrier_from_other_kernel_reque?=
 =?utf-8?q?sts_=28rev4=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFVuc2hhcmUgdGhlIGlkbGUt
YmFycmllciBmcm9tIG90aGVyIGtlcm5lbCByZXF1ZXN0cyAocmV2NCkKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY0MTcxLwpTdGF0ZSA6IHdhcm5pbmcK
Cj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKN2U4ZTlhZDVl
MDQ1IGRybS9pOTE1OiBVbnNoYXJlIHRoZSBpZGxlLWJhcnJpZXIgZnJvbSBvdGhlciBrZXJuZWwg
cmVxdWVzdHMKLToxMTU6IFdBUk5JTkc6RklMRV9QQVRIX0NIQU5HRVM6IGFkZGVkLCBtb3ZlZCBv
ciBkZWxldGVkIGZpbGUocyksIGRvZXMgTUFJTlRBSU5FUlMgbmVlZCB1cGRhdGluZz8KIzExNTog
Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjEyMDogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBN
aXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4gbGluZSAx
CiMxMjA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYzox
OgorLyoKCi06MTIxOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3BsYWNlZCBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllciB0YWcgLSB1c2UgbGluZSAxIGluc3RlYWQKIzEyMTogRklMRTogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jOjI6CisgKiBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogR1BMLTIuMAoKLTozNzQ6IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5lIG92
ZXIgMTAwIGNoYXJhY3RlcnMKIzM3NDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2Vs
ZnRlc3RfY29udGV4dC5jOjI1NToKKwkJCXByX2VycigicmVtb3RlIGNvbnRleHQgaXMgbm90IGFj
dGl2ZTsgZXhwZWN0ZWQgaWRsZS1iYXJyaWVyIChwYXNzICVkKVxuIiwgcGFzcyk7Cgp0b3RhbDog
MCBlcnJvcnMsIDQgd2FybmluZ3MsIDAgY2hlY2tzLCA1MjkgbGluZXMgY2hlY2tlZAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
