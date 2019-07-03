Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4F55E389
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 14:12:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25CB86E12A;
	Wed,  3 Jul 2019 12:12:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D82696E12A
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 12:12:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17113549-1500050 
 for multiple; Wed, 03 Jul 2019 13:12:05 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 13:12:04 +0100
Message-Id: <20190703121204.30754-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Check caller held wakerefs in
 assert_forcewakes_active
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGludGVudCBvZiB0aGUgYXNzZXJ0IGlzIHRvIGRvY3VtZW50IHRoYXQgdGhlIGNhbGxlciB0
b29rIHRoZQphcHByb3ByaWF0ZSB3YWtlcmVmcyBmb3IgdGhlIGZ1bmN0aW9uLiBIb3dldmVyLCBh
cyBUdnJ0a28gcG9pbnRlZCBvdXQsCndlIHNpbXBseSBjaGVjayB3aGV0aGVyIHRoZSBmd19kb21h
aW5zIGFyZSBhY3RpdmUgYW5kIG1heSBiZSBjb25mdXNlZCBieQp0aGUgYXV0byB3YWtlcmVmIHdo
aWNoIG1heSBiZSBkcm9wcGVkIGJldHdlZW4gdGhlIGNoZWNrIGFuZCB1c2UuIExldCdzCmJlIG1v
cmUgY2FyZWZ1bCBpbiB0aGUgYXNzZXJ0IGFuZCBjaGVjayB0aGF0IGVhY2ggZndfZG9tYWluIGhh
cyBhbgpleHBsaWNpdCBjYWxsZXIgd2FrZXJlZiBhYm92ZSBhbmQgYmV5b25kIHRoZSBhdXRvbWF0
aWMgd2FrZXJlZi4KClJlcG9ydGVkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5A
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkNj
OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyB8IDI0ICsrKysrKysrKysrKysrKysrKysr
KysrKwogMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3VuY29yZS5jCmluZGV4IDY4ZDU0ZTEyNmQ3OS4uYmMyNWE2ZTUxNDYzIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF91bmNvcmUuYwpAQCAtNzM4LDYgKzczOCwxMiBAQCB2b2lkIGFzc2VydF9m
b3JjZXdha2VzX2luYWN0aXZlKHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSkKIHZvaWQgYXNz
ZXJ0X2ZvcmNld2FrZXNfYWN0aXZlKHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwKIAkJCSAg
ICAgIGVudW0gZm9yY2V3YWtlX2RvbWFpbnMgZndfZG9tYWlucykKIHsKKwlzdHJ1Y3QgaW50ZWxf
dW5jb3JlX2ZvcmNld2FrZV9kb21haW4gKmRvbWFpbjsKKwl1bnNpZ25lZCBpbnQgdG1wOworCisJ
aWYgKCFJU19FTkFCTEVEKENPTkZJR19EUk1faTkxNV9SVU5USU1FX1BNKSkKKwkJcmV0dXJuOwor
CiAJaWYgKCF1bmNvcmUtPmZ1bmNzLmZvcmNlX3dha2VfZ2V0KQogCQlyZXR1cm47CiAKQEAgLTc0
Nyw2ICs3NTMsMjQgQEAgdm9pZCBhc3NlcnRfZm9yY2V3YWtlc19hY3RpdmUoc3RydWN0IGludGVs
X3VuY29yZSAqdW5jb3JlLAogCVdBUk4oZndfZG9tYWlucyAmIH51bmNvcmUtPmZ3X2RvbWFpbnNf
YWN0aXZlLAogCSAgICAgIkV4cGVjdGVkICUwOHggZndfZG9tYWlucyB0byBiZSBhY3RpdmUsIGJ1
dCAlMDh4IGFyZSBvZmZcbiIsCiAJICAgICBmd19kb21haW5zLCBmd19kb21haW5zICYgfnVuY29y
ZS0+ZndfZG9tYWluc19hY3RpdmUpOworCisJLyoKKwkgKiBDaGVjayB0aGF0IHRoZSBjYWxsZXIg
aGFzIGFuIGV4cGxpY2l0IHdha2VyZWYgYW5kIHdlIGRvbid0IG1pc3Rha2UKKwkgKiBpdCBmb3Ig
dGhlIGF1dG8gd2FrZXJlZi4KKwkgKi8KKwlsb2NhbF9pcnFfZGlzYWJsZSgpOworCWZvcl9lYWNo
X2Z3X2RvbWFpbl9tYXNrZWQoZG9tYWluLCBmd19kb21haW5zLCB1bmNvcmUsIHRtcCkgeworCQl1
bnNpZ25lZCBpbnQgZXhwZWN0ID0gMTsKKworCQlpZiAoaHJ0aW1lcl9hY3RpdmUoJmRvbWFpbi0+
dGltZXIpKQorCQkJZXhwZWN0Kys7CisKKwkJaWYgKFdBUk4oZG9tYWluLT53YWtlX2NvdW50IDwg
ZXhwZWN0LAorCQkJICJFeHBlY3RlZCBkb21haW4gJWQgdG8gYmUgaGVsZCBhd2FrZSBieSBjYWxs
ZXJcbiIsCisJCQkgZG9tYWluLT5pZCkpCisJCQlicmVhazsKKwl9CisJbG9jYWxfaXJxX2VuYWJs
ZSgpOwogfQogCiAvKiBXZSBnaXZlIGZhc3QgcGF0aHMgZm9yIHRoZSByZWFsbHkgY29vbCByZWdp
c3RlcnMgKi8KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
