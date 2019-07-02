Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD515D218
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 16:51:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D8F589CAF;
	Tue,  2 Jul 2019 14:51:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0621E89F9F
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 14:50:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17101437-1500050 
 for multiple; Tue, 02 Jul 2019 15:50:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jul 2019 15:50:50 +0100
Message-Id: <20190702145051.10284-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190702145051.10284-1-chris@chris-wilson.co.uk>
References: <20190702145051.10284-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/gt: Assume we hold forcewake for
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
MzkzOGE4NWYuLjk0Y2FmMGY1OGZlZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
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
X01BU0tFRF9CSVRfRU5BQkxFKEdGWF9SVU5fTElTVF9FTkFCTEUpKTsKKwkJbW9kZSA9X01BU0tF
RF9CSVRfRU5BQkxFKEdGWF9SVU5fTElTVF9FTkFCTEUpOworCUVOR0lORV9XUklURV9GVyhlbmdp
bmUsIFJJTkdfTU9ERV9HRU43LCBtb2RlKTsKIAotCUVOR0lORV9XUklURShlbmdpbmUsIFJJTkdf
TUlfTU9ERSwgX01BU0tFRF9CSVRfRElTQUJMRShTVE9QX1JJTkcpKTsKKwlFTkdJTkVfV1JJVEVf
RlcoZW5naW5lLCBSSU5HX01JX01PREUsIF9NQVNLRURfQklUX0RJU0FCTEUoU1RPUF9SSU5HKSk7
CiAKLQlFTkdJTkVfV1JJVEUoZW5naW5lLAotCQkgICAgIFJJTkdfSFdTX1BHQSwKLQkJICAgICBp
OTE1X2dndHRfb2Zmc2V0KGVuZ2luZS0+c3RhdHVzX3BhZ2Uudm1hKSk7CisJRU5HSU5FX1dSSVRF
X0ZXKGVuZ2luZSwKKwkJCVJJTkdfSFdTX1BHQSwKKwkJCWk5MTVfZ2d0dF9vZmZzZXQoZW5naW5l
LT5zdGF0dXNfcGFnZS52bWEpKTsKIAlFTkdJTkVfUE9TVElOR19SRUFEKGVuZ2luZSwgUklOR19I
V1NfUEdBKTsKIH0KIApAQCAtMjA5OSw3ICsyMTAwLDcgQEAgc3RhdGljIGJvb2wgdW5leHBlY3Rl
ZF9zdGFydGluZ19zdGF0ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CiAJYm9v
bCB1bmV4cGVjdGVkID0gZmFsc2U7CiAKLQlpZiAoRU5HSU5FX1JFQUQoZW5naW5lLCBSSU5HX01J
X01PREUpICYgU1RPUF9SSU5HKSB7CisJaWYgKEVOR0lORV9SRUFEX0ZXKGVuZ2luZSwgUklOR19N
SV9NT0RFKSAmIFNUT1BfUklORykgewogCQlEUk1fREVCVUdfRFJJVkVSKCJTVE9QX1JJTkcgc3Rp
bGwgc2V0IGluIFJJTkdfTUlfTU9ERVxuIik7CiAJCXVuZXhwZWN0ZWQgPSB0cnVlOwogCX0KLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
