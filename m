Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8A35E0DC
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 11:19:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3364891D5;
	Wed,  3 Jul 2019 09:19:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FEE9892D5
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 09:19:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17110506-1500050 
 for multiple; Wed, 03 Jul 2019 10:17:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 10:17:15 +0100
Message-Id: <20190703091726.11690-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703091726.11690-1-chris@chris-wilson.co.uk>
References: <20190703091726.11690-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/15] drm/i915/gt: Assume we hold forcewake for
 execlists resume
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgY2FuIGFzc3VtZSB0aGUgY2FsbGVyIGlzIGhvbGRpbmcgYSBibGFua2V0IGZvcmNld2FrZSBm
b3IgdGhlCnJlZ2lzdGVyIHdyaXRlcyBkdXJpbmcgcmVzdW1lLCBhbmQgc28gd2UgY2FuIHNraXAg
dGFraW5nIGluZGl2aWR1YWwKbG9ja3MgYXJvdW5kIGVhY2ggd3JpdGUgaW5zaWRlIGV4ZWNsaXN0
cyByZXN1bWUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDIzICsr
KysrKysrKysrKy0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwg
MTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCA5NTNi
MzkzOGE4NWYuLjQ5N2NhNTIzODFhNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMK
QEAgLTIwNzYsMjIgKzIwNzYsMjMgQEAgc3RhdGljIGludCBpbnRlbF9pbml0X3dvcmthcm91bmRf
YmIoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCiBzdGF0aWMgdm9pZCBlbmFibGVf
ZXhlY2xpc3RzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIHsKKwl1MzIgbW9kZTsK
KworCWFzc2VydF9mb3JjZXdha2VzX2FjdGl2ZShlbmdpbmUtPnVuY29yZSwgRk9SQ0VXQUtFX0FM
TCk7CisKIAlpbnRlbF9lbmdpbmVfc2V0X2h3c3Bfd3JpdGVtYXNrKGVuZ2luZSwgfjB1KTsgLyog
SFdTVEFNICovCiAKIAlpZiAoSU5URUxfR0VOKGVuZ2luZS0+aTkxNSkgPj0gMTEpCi0JCUVOR0lO
RV9XUklURShlbmdpbmUsCi0JCQkgICAgIFJJTkdfTU9ERV9HRU43LAotCQkJICAgICBfTUFTS0VE
X0JJVF9FTkFCTEUoR0VOMTFfR0ZYX0RJU0FCTEVfTEVHQUNZX01PREUpKTsKKwkJbW9kZSA9IF9N
QVNLRURfQklUX0VOQUJMRShHRU4xMV9HRlhfRElTQUJMRV9MRUdBQ1lfTU9ERSk7CiAJZWxzZQot
CQlFTkdJTkVfV1JJVEUoZW5naW5lLAotCQkJICAgICBSSU5HX01PREVfR0VONywKLQkJCSAgICAg
X01BU0tFRF9CSVRfRU5BQkxFKEdGWF9SVU5fTElTVF9FTkFCTEUpKTsKKwkJbW9kZSA9IF9NQVNL
RURfQklUX0VOQUJMRShHRlhfUlVOX0xJU1RfRU5BQkxFKTsKKwlFTkdJTkVfV1JJVEVfRlcoZW5n
aW5lLCBSSU5HX01PREVfR0VONywgbW9kZSk7CiAKLQlFTkdJTkVfV1JJVEUoZW5naW5lLCBSSU5H
X01JX01PREUsIF9NQVNLRURfQklUX0RJU0FCTEUoU1RPUF9SSU5HKSk7CisJRU5HSU5FX1dSSVRF
X0ZXKGVuZ2luZSwgUklOR19NSV9NT0RFLCBfTUFTS0VEX0JJVF9ESVNBQkxFKFNUT1BfUklORykp
OwogCi0JRU5HSU5FX1dSSVRFKGVuZ2luZSwKLQkJICAgICBSSU5HX0hXU19QR0EsCi0JCSAgICAg
aTkxNV9nZ3R0X29mZnNldChlbmdpbmUtPnN0YXR1c19wYWdlLnZtYSkpOworCUVOR0lORV9XUklU
RV9GVyhlbmdpbmUsCisJCQlSSU5HX0hXU19QR0EsCisJCQlpOTE1X2dndHRfb2Zmc2V0KGVuZ2lu
ZS0+c3RhdHVzX3BhZ2Uudm1hKSk7CiAJRU5HSU5FX1BPU1RJTkdfUkVBRChlbmdpbmUsIFJJTkdf
SFdTX1BHQSk7CiB9CiAKQEAgLTIwOTksNyArMjEwMCw3IEBAIHN0YXRpYyBib29sIHVuZXhwZWN0
ZWRfc3RhcnRpbmdfc3RhdGUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewogCWJv
b2wgdW5leHBlY3RlZCA9IGZhbHNlOwogCi0JaWYgKEVOR0lORV9SRUFEKGVuZ2luZSwgUklOR19N
SV9NT0RFKSAmIFNUT1BfUklORykgeworCWlmIChFTkdJTkVfUkVBRF9GVyhlbmdpbmUsIFJJTkdf
TUlfTU9ERSkgJiBTVE9QX1JJTkcpIHsKIAkJRFJNX0RFQlVHX0RSSVZFUigiU1RPUF9SSU5HIHN0
aWxsIHNldCBpbiBSSU5HX01JX01PREVcbiIpOwogCQl1bmV4cGVjdGVkID0gdHJ1ZTsKIAl9Ci0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
