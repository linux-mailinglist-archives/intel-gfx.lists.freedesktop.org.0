Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD34A3D5C
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 20:00:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66BAA6E3AC;
	Fri, 30 Aug 2019 18:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CA316E119
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 18:00:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18321588-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 19:00:01 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 18:59:59 +0100
Message-Id: <20190830180000.24608-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190830180000.24608-1-chris@chris-wilson.co.uk>
References: <20190830180000.24608-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/3] drm/i915/gtt: Downgrade Cherryview back to
 aliasing-ppgtt
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

V2l0aCB0aGUgdXBjb21pbmcgY2hhbmdlIGluIHRpbWluZyAoZHJhbWF0aWNhbGx5IHJlZHVjaW5n
IHRoZSBsYXRlbmN5CmJldHdlZW4gbWFuaXB1bGF0aW5nIHRoZSBwcEdUVCBhbmQgZXhlY3V0aW9u
KSwgbm8gYW1vdW50IG9mIHR3ZWFraW5nCmNvdWxkIHNhdmUgQ2hlcnJ5dmlldywgaXQgd291bGQg
YWx3YXlzIGZhaWwgdG8gaW52YWxpZGF0ZSBpdHMgVExCLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkFja2VkLWJ5OiBNYXR0aGV3IEF1bGQg
PG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMgfCA2OSArKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wY2kuYyAgICAgfCAgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNl
cnRpb25zKCspLCA2MCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
CmluZGV4IDdkNDYwYjE4NDJkZC4uMGUyODI2M2M3Yjg3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYwpAQCAtMTg3MSw2MCArMTg3MSw2IEBAIHN0YXRpYyBpbnQgZ2VuOF9lbWl0X2lu
aXRfYnJlYWRjcnVtYihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAlyZXR1cm4gMDsKIH0KIAot
c3RhdGljIGludCBlbWl0X3BkcHMoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCi17Ci0JY29uc3Qg
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqIGNvbnN0IGVuZ2luZSA9IHJxLT5lbmdpbmU7Ci0Jc3Ry
dWN0IGk5MTVfcHBndHQgKiBjb25zdCBwcGd0dCA9IGk5MTVfdm1fdG9fcHBndHQocnEtPmh3X2Nv
bnRleHQtPnZtKTsKLQlpbnQgZXJyLCBpOwotCXUzMiAqY3M7Ci0KLQlHRU1fQlVHX09OKGludGVs
X3ZncHVfYWN0aXZlKHJxLT5pOTE1KSk7Ci0KLQkvKgotCSAqIEJld2FyZSB5ZSBvZiB0aGUgZHJh
Z29ucywgdGhpcyBzZXF1ZW5jZSBpcyBtYWdpYyEKLQkgKgotCSAqIFNtYWxsIGNoYW5nZXMgdG8g
dGhpcyBzZXF1ZW5jZSBjYW4gY2F1c2UgYW55dGhpbmcgZnJvbQotCSAqIEdQVSBoYW5ncyB0byBm
b3JjZXdha2UgZXJyb3JzIGFuZCBtYWNoaW5lIGxvY2t1cHMhCi0JICovCi0KLQkvKiBGbHVzaCBh
bnkgcmVzaWR1YWwgb3BlcmF0aW9ucyBmcm9tIHRoZSBjb250ZXh0IGxvYWQgKi8KLQllcnIgPSBl
bmdpbmUtPmVtaXRfZmx1c2gocnEsIEVNSVRfRkxVU0gpOwotCWlmIChlcnIpCi0JCXJldHVybiBl
cnI7Ci0KLQkvKiBNYWdpYyByZXF1aXJlZCB0byBwcmV2ZW50IGZvcmNld2FrZSBlcnJvcnMhICov
Ci0JZXJyID0gZW5naW5lLT5lbWl0X2ZsdXNoKHJxLCBFTUlUX0lOVkFMSURBVEUpOwotCWlmIChl
cnIpCi0JCXJldHVybiBlcnI7Ci0KLQljcyA9IGludGVsX3JpbmdfYmVnaW4ocnEsIDQgKiBHRU44
XzNMVkxfUERQRVMgKyAyKTsKLQlpZiAoSVNfRVJSKGNzKSkKLQkJcmV0dXJuIFBUUl9FUlIoY3Mp
OwotCi0JLyogRW5zdXJlIHRoZSBMUkkgaGF2ZSBsYW5kZWQgYmVmb3JlIHdlIGludmFsaWRhdGUg
JiBjb250aW51ZSAqLwotCSpjcysrID0gTUlfTE9BRF9SRUdJU1RFUl9JTU0oMiAqIEdFTjhfM0xW
TF9QRFBFUykgfCBNSV9MUklfRk9SQ0VfUE9TVEVEOwotCWZvciAoaSA9IEdFTjhfM0xWTF9QRFBF
UzsgaS0tOyApIHsKLQkJY29uc3QgZG1hX2FkZHJfdCBwZF9kYWRkciA9IGk5MTVfcGFnZV9kaXJf
ZG1hX2FkZHIocHBndHQsIGkpOwotCQl1MzIgYmFzZSA9IGVuZ2luZS0+bW1pb19iYXNlOwotCi0J
CSpjcysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoR0VOOF9SSU5HX1BEUF9VRFcoYmFzZSwgaSkp
OwotCQkqY3MrKyA9IHVwcGVyXzMyX2JpdHMocGRfZGFkZHIpOwotCQkqY3MrKyA9IGk5MTVfbW1p
b19yZWdfb2Zmc2V0KEdFTjhfUklOR19QRFBfTERXKGJhc2UsIGkpKTsKLQkJKmNzKysgPSBsb3dl
cl8zMl9iaXRzKHBkX2RhZGRyKTsKLQl9Ci0JKmNzKysgPSBNSV9OT09QOwotCi0JaW50ZWxfcmlu
Z19hZHZhbmNlKHJxLCBjcyk7Ci0KLQkvKiBCZSBkb3VibHkgc3VyZSB0aGUgTFJJIGhhdmUgbGFu
ZGVkIGJlZm9yZSBwcm9jZWVkaW5nICovCi0JZXJyID0gZW5naW5lLT5lbWl0X2ZsdXNoKHJxLCBF
TUlUX0ZMVVNIKTsKLQlpZiAoZXJyKQotCQlyZXR1cm4gZXJyOwotCi0JLyogUmUtaW52YWxpZGF0
ZSB0aGUgVExCIGZvciBsdWNrICovCi0JcmV0dXJuIGVuZ2luZS0+ZW1pdF9mbHVzaChycSwgRU1J
VF9JTlZBTElEQVRFKTsKLX0KLQogc3RhdGljIGludCBleGVjbGlzdHNfcmVxdWVzdF9hbGxvYyhz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0KQogewogCWludCByZXQ7CkBAIC0xOTQ3LDEwICsx
ODkzLDcgQEAgc3RhdGljIGludCBleGVjbGlzdHNfcmVxdWVzdF9hbGxvYyhzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpyZXF1ZXN0KQogCSAqLwogCiAJLyogVW5jb25kaXRpb25hbGx5IGludmFsaWRhdGUg
R1BVIGNhY2hlcyBhbmQgVExCcy4gKi8KLQlpZiAoaTkxNV92bV9pc180bHZsKHJlcXVlc3QtPmh3
X2NvbnRleHQtPnZtKSkKLQkJcmV0ID0gcmVxdWVzdC0+ZW5naW5lLT5lbWl0X2ZsdXNoKHJlcXVl
c3QsIEVNSVRfSU5WQUxJREFURSk7Ci0JZWxzZQotCQlyZXQgPSBlbWl0X3BkcHMocmVxdWVzdCk7
CisJcmV0ID0gcmVxdWVzdC0+ZW5naW5lLT5lbWl0X2ZsdXNoKHJlcXVlc3QsIEVNSVRfSU5WQUxJ
REFURSk7CiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIApAQCAtMzE2NywxMiArMzExMCwyMCBA
QCBzdGF0aWMgdTMyIGludGVsX2xyX2luZGlyZWN0X2N0eF9vZmZzZXQoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lKQogCXJldHVybiBpbmRpcmVjdF9jdHhfb2Zmc2V0OwogfQogCitzdGF0
aWMgc3RydWN0IGk5MTVfcHBndHQgKnZtX2FsaWFzKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2Ug
KnZtKQoreworCWlmIChpOTE1X2lzX2dndHQodm0pKQorCQlyZXR1cm4gaTkxNV92bV90b19nZ3R0
KHZtKS0+YWxpYXM7CisJZWxzZQorCQlyZXR1cm4gaTkxNV92bV90b19wcGd0dCh2bSk7Cit9CisK
IHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19pbml0X3JlZ19zdGF0ZSh1MzIgKnJlZ3MsCiAJCQkJICAg
ICBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCiAJCQkJICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUsCiAJCQkJICAgICBzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZykKIHsKLQlzdHJ1
Y3QgaTkxNV9wcGd0dCAqcHBndHQgPSBpOTE1X3ZtX3RvX3BwZ3R0KGNlLT52bSk7CisJc3RydWN0
IGk5MTVfcHBndHQgKnBwZ3R0ID0gdm1fYWxpYXMoY2UtPnZtKTsKIAlib29sIHJjcyA9IGVuZ2lu
ZS0+Y2xhc3MgPT0gUkVOREVSX0NMQVNTOwogCXUzMiBiYXNlID0gZW5naW5lLT5tbWlvX2Jhc2U7
CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCmluZGV4IDE4MjEyYzM5YTliYS4uZmJlOThhMmRiODhl
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKQEAgLTU3MCw3ICs1NzAsNyBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGludGVsX2NoZXJyeXZpZXdfaW5mbyA9IHsKIAku
aGFzX3JwcyA9IHRydWUsCiAJLmhhc19sb2dpY2FsX3JpbmdfY29udGV4dHMgPSAxLAogCS5kaXNw
bGF5Lmhhc19nbWNoID0gMSwKLQkucHBndHRfdHlwZSA9IElOVEVMX1BQR1RUX0ZVTEwsCisJLnBw
Z3R0X3R5cGUgPSBJTlRFTF9QUEdUVF9BTElBU0lORywKIAkucHBndHRfc2l6ZSA9IDMyLAogCS5o
YXNfcmVzZXRfZW5naW5lID0gMSwKIAkuaGFzX3Nub29wID0gdHJ1ZSwKLS0gCjIuMjMuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
