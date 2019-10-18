Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75360DC42F
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 13:49:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EEB66EB24;
	Fri, 18 Oct 2019 11:49:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEA3D6EB24
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 11:49:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18881590-1500050 
 for multiple; Fri, 18 Oct 2019 12:49:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Oct 2019 12:49:25 +0100
Message-Id: <20191018114925.30779-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Convert the leftover
 for_each_engine(gt)
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

VXNlIHRoZSBsb2NhbCBndCBmb3IgaXRlcmF0aW5nIG92ZXIgdGhlIGF2YWlsYWJsZSBzZXQgb2Yg
ZW5naW5lcy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYuYyAgICAgICAgfCAxMiArKysrKyst
LS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyB8ICA2ICsr
Ky0tLQogMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYuYwppbmRleCA3MTE4NGFhNzI4OTYuLjcwZjBlMDFh
MzhiOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmMKQEAgLTY1LDcgKzY1LDcgQEAg
c3RhdGljIHZvaWQgZ2VuMTFfcmM2X2VuYWJsZShzdHJ1Y3QgaW50ZWxfcmM2ICpyYzYpCiAKIAlz
ZXQodW5jb3JlLCBHRU42X1JDX0VWQUxVQVRJT05fSU5URVJWQUwsIDEyNTAwMCk7IC8qIDEyNTAw
ICogMTI4MG5zICovCiAJc2V0KHVuY29yZSwgR0VONl9SQ19JRExFX0hZU1RFUlNJUywgMjUpOyAv
KiAyNSAqIDEyODBucyAqLwotCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIHJjNl90b19ndChyYzYp
LT5pOTE1LCBpZCkKKwlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCByYzZfdG9fZ3QocmM2KSwgaWQp
CiAJCXNldCh1bmNvcmUsIFJJTkdfTUFYX0lETEUoZW5naW5lLT5tbWlvX2Jhc2UpLCAxMCk7CiAK
IAlzZXQodW5jb3JlLCBHVUNfTUFYX0lETEVfQ09VTlQsIDB4QSk7CkBAIC0xMzMsNyArMTMzLDcg
QEAgc3RhdGljIHZvaWQgZ2VuOV9yYzZfZW5hYmxlKHN0cnVjdCBpbnRlbF9yYzYgKnJjNikKIAog
CXNldCh1bmNvcmUsIEdFTjZfUkNfRVZBTFVBVElPTl9JTlRFUlZBTCwgMTI1MDAwKTsgLyogMTI1
MDAgKiAxMjgwbnMgKi8KIAlzZXQodW5jb3JlLCBHRU42X1JDX0lETEVfSFlTVEVSU0lTLCAyNSk7
IC8qIDI1ICogMTI4MG5zICovCi0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgcmM2X3RvX2d0KHJj
NiktPmk5MTUsIGlkKQorCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIHJjNl90b19ndChyYzYpLCBp
ZCkKIAkJc2V0KHVuY29yZSwgUklOR19NQVhfSURMRShlbmdpbmUtPm1taW9fYmFzZSksIDEwKTsK
IAogCXNldCh1bmNvcmUsIEdVQ19NQVhfSURMRV9DT1VOVCwgMHhBKTsKQEAgLTE5Miw3ICsxOTIs
NyBAQCBzdGF0aWMgdm9pZCBnZW44X3JjNl9lbmFibGUoc3RydWN0IGludGVsX3JjNiAqcmM2KQog
CXNldCh1bmNvcmUsIEdFTjZfUkM2X1dBS0VfUkFURV9MSU1JVCwgNDAgPDwgMTYpOwogCXNldCh1
bmNvcmUsIEdFTjZfUkNfRVZBTFVBVElPTl9JTlRFUlZBTCwgMTI1MDAwKTsgLyogMTI1MDAgKiAx
MjgwbnMgKi8KIAlzZXQodW5jb3JlLCBHRU42X1JDX0lETEVfSFlTVEVSU0lTLCAyNSk7IC8qIDI1
ICogMTI4MG5zICovCi0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgcmM2X3RvX2d0KHJjNiktPmk5
MTUsIGlkKQorCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIHJjNl90b19ndChyYzYpLCBpZCkKIAkJ
c2V0KHVuY29yZSwgUklOR19NQVhfSURMRShlbmdpbmUtPm1taW9fYmFzZSksIDEwKTsKIAlzZXQo
dW5jb3JlLCBHRU42X1JDX1NMRUVQLCAwKTsKIAlzZXQodW5jb3JlLCBHRU42X1JDNl9USFJFU0hP
TEQsIDYyNSk7IC8qIDgwMHVzLzEuMjggZm9yIFRPICovCkBAIC0yMTksNyArMjE5LDcgQEAgc3Rh
dGljIHZvaWQgZ2VuNl9yYzZfZW5hYmxlKHN0cnVjdCBpbnRlbF9yYzYgKnJjNikKIAlzZXQodW5j
b3JlLCBHRU42X1JDX0VWQUxVQVRJT05fSU5URVJWQUwsIDEyNTAwMCk7CiAJc2V0KHVuY29yZSwg
R0VONl9SQ19JRExFX0hZU1RFUlNJUywgMjUpOwogCi0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwg
aTkxNSwgaWQpCisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgcmM2X3RvX2d0KHJjNiksIGlkKQog
CQlzZXQodW5jb3JlLCBSSU5HX01BWF9JRExFKGVuZ2luZS0+bW1pb19iYXNlKSwgMTApOwogCiAJ
c2V0KHVuY29yZSwgR0VONl9SQ19TTEVFUCwgMCk7CkBAIC0zNDQsNyArMzQ0LDcgQEAgc3RhdGlj
IHZvaWQgY2h2X3JjNl9lbmFibGUoc3RydWN0IGludGVsX3JjNiAqcmM2KQogCXNldCh1bmNvcmUs
IEdFTjZfUkNfRVZBTFVBVElPTl9JTlRFUlZBTCwgMTI1MDAwKTsgLyogMTI1MDAgKiAxMjgwbnMg
Ki8KIAlzZXQodW5jb3JlLCBHRU42X1JDX0lETEVfSFlTVEVSU0lTLCAyNSk7IC8qIDI1ICogMTI4
MG5zICovCiAKLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCByYzZfdG9fZ3QocmM2KS0+aTkxNSwg
aWQpCisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgcmM2X3RvX2d0KHJjNiksIGlkKQogCQlzZXQo
dW5jb3JlLCBSSU5HX01BWF9JRExFKGVuZ2luZS0+bW1pb19iYXNlKSwgMTApOwogCXNldCh1bmNv
cmUsIEdFTjZfUkNfU0xFRVAsIDApOwogCkBAIC0zNzEsNyArMzcxLDcgQEAgc3RhdGljIHZvaWQg
dmx2X3JjNl9lbmFibGUoc3RydWN0IGludGVsX3JjNiAqcmM2KQogCXNldCh1bmNvcmUsIEdFTjZf
UkNfRVZBTFVBVElPTl9JTlRFUlZBTCwgMTI1MDAwKTsKIAlzZXQodW5jb3JlLCBHRU42X1JDX0lE
TEVfSFlTVEVSU0lTLCAyNSk7CiAKLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCByYzZfdG9fZ3Qo
cmM2KS0+aTkxNSwgaWQpCisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgcmM2X3RvX2d0KHJjNiks
IGlkKQogCQlzZXQodW5jb3JlLCBSSU5HX01BWF9JRExFKGVuZ2luZS0+bW1pb19iYXNlKSwgMTAp
OwogCiAJc2V0KHVuY29yZSwgR0VONl9SQzZfVEhSRVNIT0xELCAweDU1Nyk7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKaW5kZXggMzExZmRjMGEyMWJjLi5iZjYz
MWYxNWFhNzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdi
dWZmZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMK
QEAgLTE2MDksNyArMTYwOSw3IEBAIHN0YXRpYyBpbmxpbmUgaW50IG1pX3NldF9jb250ZXh0KHN0
cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCB1MzIgZmxhZ3MpCiAJCQlzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICpzaWduYWxsZXI7CiAKIAkJCSpjcysrID0gTUlfTE9BRF9SRUdJU1RFUl9JTU0obnVtX2Vu
Z2luZXMpOwotCQkJZm9yX2VhY2hfZW5naW5lKHNpZ25hbGxlciwgaTkxNSwgaWQpIHsKKwkJCWZv
cl9lYWNoX2VuZ2luZShzaWduYWxsZXIsIGVuZ2luZS0+Z3QsIGlkKSB7CiAJCQkJaWYgKHNpZ25h
bGxlciA9PSBlbmdpbmUpCiAJCQkJCWNvbnRpbnVlOwogCkBAIC0xNjYzLDcgKzE2NjMsNyBAQCBz
dGF0aWMgaW5saW5lIGludCBtaV9zZXRfY29udGV4dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwg
dTMyIGZsYWdzKQogCQkJaTkxNV9yZWdfdCBsYXN0X3JlZyA9IHt9OyAvKiBrZWVwIGdjYyBxdWll
dCAqLwogCiAJCQkqY3MrKyA9IE1JX0xPQURfUkVHSVNURVJfSU1NKG51bV9lbmdpbmVzKTsKLQkJ
CWZvcl9lYWNoX2VuZ2luZShzaWduYWxsZXIsIGk5MTUsIGlkKSB7CisJCQlmb3JfZWFjaF9lbmdp
bmUoc2lnbmFsbGVyLCBlbmdpbmUtPmd0LCBpZCkgewogCQkJCWlmIChzaWduYWxsZXIgPT0gZW5n
aW5lKQogCQkJCQljb250aW51ZTsKIApAQCAtMTY3Niw3ICsxNjc2LDcgQEAgc3RhdGljIGlubGlu
ZSBpbnQgbWlfc2V0X2NvbnRleHQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHUzMiBmbGFncykK
IAkJCS8qIEluc2VydCBhIGRlbGF5IGJlZm9yZSB0aGUgbmV4dCBzd2l0Y2ghICovCiAJCQkqY3Mr
KyA9IE1JX1NUT1JFX1JFR0lTVEVSX01FTSB8IE1JX1NSTV9MUk1fR0xPQkFMX0dUVDsKIAkJCSpj
cysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQobGFzdF9yZWcpOwotCQkJKmNzKysgPSBpbnRlbF9n
dF9zY3JhdGNoX29mZnNldChycS0+ZW5naW5lLT5ndCwKKwkJCSpjcysrID0gaW50ZWxfZ3Rfc2Ny
YXRjaF9vZmZzZXQoZW5naW5lLT5ndCwKIAkJCQkJCQlJTlRFTF9HVF9TQ1JBVENIX0ZJRUxEX0RF
RkFVTFQpOwogCQkJKmNzKysgPSBNSV9OT09QOwogCQl9Ci0tIAoyLjIzLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
