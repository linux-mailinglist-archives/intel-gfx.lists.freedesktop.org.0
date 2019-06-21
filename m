Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E224EF43
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 21:13:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD6626E916;
	Fri, 21 Jun 2019 19:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC8396E916
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 19:13:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16983418-1500050 
 for multiple; Fri, 21 Jun 2019 20:13:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jun 2019 20:13:13 +0100
Message-Id: <20190621191313.27709-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Disable preemption under GVT
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

UHJlZW1wdC10by1idXN5IHVzZXMgYSBHUFUgc2VtYXBob3JlIHRvIGVuZm9yY2UgYW4gaWRsZS1i
YXJyaWVyIGFjcm9zcwpwcmVlbXB0aW9uLCBidXQgbWVkaWF0ZWQgZ3Z0IGRvZXMgbm90IGZ1bGx5
IHN1cHBvcnQgc2VtYXBob3Jlcy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jIHwgMTMgKysrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCBjOGEw
YzliMzI3NjQuLmQ4NjQ5ZTc1OWNlOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMK
QEAgLTI5NCw2ICsyOTQsOSBAQCBzdGF0aWMgaW5saW5lIGJvb2wgbmVlZF9wcmVlbXB0KGNvbnN0
IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIHsKIAlpbnQgbGFzdF9wcmlvOwogCisJ
aWYgKCFpbnRlbF9lbmdpbmVfaGFzX3ByZWVtcHRpb24oZW5naW5lKSkKKwkJcmV0dXJuIGZhbHNl
OworCiAJLyoKIAkgKiBDaGVjayBpZiB0aGUgY3VycmVudCBwcmlvcml0eSBoaW50IG1lcml0cyBh
IHByZWVtcHRpb24gYXR0ZW1wdC4KIAkgKgpAQCAtODkwLDYgKzg5Myw5IEBAIG5lZWRfdGltZXNs
aWNlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgY29uc3Qgc3RydWN0IGk5MTVfcmVx
dWVzdCAqcnEpCiB7CiAJaW50IGhpbnQ7CiAKKwlpZiAoIWludGVsX2VuZ2luZV9oYXNfcHJlZW1w
dGlvbihlbmdpbmUpKQorCQlyZXR1cm4gZmFsc2U7CisKIAlpZiAobGlzdF9pc19sYXN0KCZycS0+
c2NoZWQubGluaywgJmVuZ2luZS0+YWN0aXZlLnJlcXVlc3RzKSkKIAkJcmV0dXJuIGZhbHNlOwog
CkBAIC0yNjcyLDEwICsyNjc4LDExIEBAIHZvaWQgaW50ZWxfZXhlY2xpc3RzX3NldF9kZWZhdWx0
X3N1Ym1pc3Npb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCWVuZ2luZS0+dW5w
YXJrID0gTlVMTDsKIAogCWVuZ2luZS0+ZmxhZ3MgfD0gSTkxNV9FTkdJTkVfU1VQUE9SVFNfU1RB
VFM7Ci0JaWYgKCFpbnRlbF92Z3B1X2FjdGl2ZShlbmdpbmUtPmk5MTUpKQorCWlmICghaW50ZWxf
dmdwdV9hY3RpdmUoZW5naW5lLT5pOTE1KSkgewogCQllbmdpbmUtPmZsYWdzIHw9IEk5MTVfRU5H
SU5FX0hBU19TRU1BUEhPUkVTOwotCWlmIChIQVNfTE9HSUNBTF9SSU5HX1BSRUVNUFRJT04oZW5n
aW5lLT5pOTE1KSkKLQkJZW5naW5lLT5mbGFncyB8PSBJOTE1X0VOR0lORV9IQVNfUFJFRU1QVElP
TjsKKwkJaWYgKEhBU19MT0dJQ0FMX1JJTkdfUFJFRU1QVElPTihlbmdpbmUtPmk5MTUpKQorCQkJ
ZW5naW5lLT5mbGFncyB8PSBJOTE1X0VOR0lORV9IQVNfUFJFRU1QVElPTjsKKwl9CiB9CiAKIHN0
YXRpYyB2b2lkIGV4ZWNsaXN0c19kZXN0cm95KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSkKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
