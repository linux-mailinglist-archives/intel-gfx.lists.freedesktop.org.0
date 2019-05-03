Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0C812CFA
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 13:54:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B6A989D5B;
	Fri,  3 May 2019 11:54:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6130589D5E
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 11:54:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16440743-1500050 
 for multiple; Fri, 03 May 2019 12:52:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 May 2019 12:52:14 +0100
Message-Id: <20190503115225.30831-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503115225.30831-1-chris@chris-wilson.co.uk>
References: <20190503115225.30831-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/13] drm/i915: Prefer checking the wakeref
 itself rather than the counter
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

VGhlIGNvdW50ZXIgZ29lcyB0byB6ZXJvIGF0IHRoZSBzdGFydCBvZiB0aGUgcGFya2luZyBjeWNs
ZSwgYnV0IHRoZQp3YWtlcmVmIGl0c2VsZiBpcyBoZWxkIHVudGlsIHRoZSBlbmQuIExpa2V3aXNl
LCB0aGUgY291bnRlciBiZWNvbWVzIG9uZQphdCB0aGUgZW5kIG9mIHRoZSB1bnBhcmtpbmcsIGJ1
dCB0aGUgd2FrZXJlZiBpcyB0YWtlbiBmaXJzdC4gSWYgd2UgY2hlY2sKdGhlIHdha2VyZWYgaW5z
dGVhZCBvZiB0aGUgY291bnRlciwgd2UgaW5jbHVkZSB0aGUgdW5wYXJrL3VucGFya2luZyB0aW1l
CmFzIGludGVsX3dha2VyZWZfaXNfYWN0aXZlKCksIGFuZCBkbyBub3Qgc3B1cmlvdXNseSBkZWNs
YXJlIGluYWN0aXZlIGlmCndlIGZhaWwgdG8gcGFyayAoaS5lLiB0aGUgcGFya2luZyBhbmQgd2Fr
ZXJlZiBkcm9wIGlzIHBvc3Rwb25lZCkuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93
YWtlcmVmLmMgfCAyMCArKysrKysrKysrKysrKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfd2FrZXJlZi5oIHwgIDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF93YWtlcmVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmMKaW5kZXgg
MWY5NGJjNGZmOWU0Li45MTE5NmQ5NjEyYmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3dha2VyZWYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtl
cmVmLmMKQEAgLTcsNiArNywxOSBAQAogI2luY2x1ZGUgImludGVsX2Rydi5oIgogI2luY2x1ZGUg
ImludGVsX3dha2VyZWYuaCIKIAorc3RhdGljIHZvaWQgcnBtX2dldChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwgc3RydWN0IGludGVsX3dha2VyZWYgKndmKQoreworCXdmLT53YWtlcmVm
ID0gaW50ZWxfcnVudGltZV9wbV9nZXQoaTkxNSk7Cit9CisKK3N0YXRpYyB2b2lkIHJwbV9wdXQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikK
K3sKKwlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZiA9IGZldGNoX2FuZF96ZXJvKCZ3Zi0+d2FrZXJl
Zik7CisKKwlpbnRlbF9ydW50aW1lX3BtX3B1dChpOTE1LCB3YWtlcmVmKTsKKwlHRU1fQlVHX09O
KCF3YWtlcmVmKTsKK30KKwogaW50IF9faW50ZWxfd2FrZXJlZl9nZXRfZmlyc3Qoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCQkgICAgICBzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2Ys
CiAJCQkgICAgICBpbnQgKCpmbikoc3RydWN0IGludGVsX3dha2VyZWYgKndmKSkKQEAgLTIxLDEx
ICszNCwxMSBAQCBpbnQgX19pbnRlbF93YWtlcmVmX2dldF9maXJzdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwKIAlpZiAoIWF0b21pY19yZWFkKCZ3Zi0+Y291bnQpKSB7CiAJCWludCBl
cnI7CiAKLQkJd2YtPndha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldChpOTE1KTsKKwkJcnBt
X2dldChpOTE1LCB3Zik7CiAKIAkJZXJyID0gZm4od2YpOwogCQlpZiAodW5saWtlbHkoZXJyKSkg
ewotCQkJaW50ZWxfcnVudGltZV9wbV9wdXQoaTkxNSwgd2YtPndha2VyZWYpOworCQkJcnBtX3B1
dChpOTE1LCB3Zik7CiAJCQltdXRleF91bmxvY2soJndmLT5tdXRleCk7CiAJCQlyZXR1cm4gZXJy
OwogCQl9CkBAIC00Niw3ICs1OSw3IEBAIGludCBfX2ludGVsX3dha2VyZWZfcHV0X2xhc3Qoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAKIAllcnIgPSBmbih3Zik7CiAJaWYgKGxpa2Vs
eSghZXJyKSkKLQkJaW50ZWxfcnVudGltZV9wbV9wdXQoaTkxNSwgd2YtPndha2VyZWYpOworCQly
cG1fcHV0KGk5MTUsIHdmKTsKIAllbHNlCiAJCWF0b21pY19pbmMoJndmLT5jb3VudCk7CiAJbXV0
ZXhfdW5sb2NrKCZ3Zi0+bXV0ZXgpOwpAQCAtNTgsNCArNzEsNSBAQCB2b2lkIF9faW50ZWxfd2Fr
ZXJlZl9pbml0KHN0cnVjdCBpbnRlbF93YWtlcmVmICp3Ziwgc3RydWN0IGxvY2tfY2xhc3Nfa2V5
ICprZXkpCiB7CiAJX19tdXRleF9pbml0KCZ3Zi0+bXV0ZXgsICJ3YWtlcmVmIiwga2V5KTsKIAlh
dG9taWNfc2V0KCZ3Zi0+Y291bnQsIDApOworCXdmLT53YWtlcmVmID0gMDsKIH0KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3dha2VyZWYuaAppbmRleCBhOTc5ZDYzODM0NGIuLmRiNzQyMjkxMjExYyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5oCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuaApAQCAtMTI3LDcgKzEyNyw3IEBAIGlu
dGVsX3dha2VyZWZfdW5sb2NrKHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKIHN0YXRpYyBpbmxp
bmUgYm9vbAogaW50ZWxfd2FrZXJlZl9hY3RpdmUoc3RydWN0IGludGVsX3dha2VyZWYgKndmKQog
ewotCXJldHVybiBhdG9taWNfcmVhZCgmd2YtPmNvdW50KTsKKwlyZXR1cm4gUkVBRF9PTkNFKHdm
LT53YWtlcmVmKTsKIH0KIAogI2VuZGlmIC8qIElOVEVMX1dBS0VSRUZfSCAqLwotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
