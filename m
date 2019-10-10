Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 753B5D2BAC
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 15:49:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C88FE6EB45;
	Thu, 10 Oct 2019 13:49:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F9A46EB45
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 13:49:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18791762-1500050 
 for multiple; Thu, 10 Oct 2019 14:48:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Oct 2019 14:48:49 +0100
Message-Id: <20191010134849.9078-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Honour O_NONBLOCK before throttling
 execbuf submissions
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

Q2hlY2sgdGhlIHVzZXIncyBmbGFncyBvbiB0aGUgc3RydWN0IGZpbGUgYmVmb3JlIGRlY2lkaW5n
IHdoZXRoZXIgb3Igbm90CnRvIHN0YWxsIGJlZm9yZSBzdWJtaXR0aW5nIGEgcmVxdWVzdC4gVGhp
cyBhbGxvd3MgdXMgdG8gcmVhc29uYWJseQpjaGVhcGx5IGhvbm91ciBPX05PTkJMT0NLIHdpdGhv
dXQgY2hlY2tpbmcgYXQgbW9yZSBjcml0aWNhbCBwaGFzZXMKZHVyaW5nIHJlcXVlc3Qgc3VibWlz
c2lvbi4KClN1Z2dlc3RlZC1ieTogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGlu
dXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMg
ICAgfCAyMSArKysrKysrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9u
cygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2V4ZWNidWZmZXIuYwppbmRleCA5ODgxNmMzNWZmYzMuLmJjNmJjYjhmNmQ3OSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCkBAIC0yMTg5
LDE1ICsyMTg5LDIyIEBAIHN0YXRpYyBpbnQgX19lYl9waW5fZW5naW5lKHN0cnVjdCBpOTE1X2V4
ZWNidWZmZXIgKmViLCBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCiAJaW50ZWxfY29udGV4dF90
aW1lbGluZV91bmxvY2sodGwpOwogCiAJaWYgKHJxKSB7Ci0JCWlmIChpOTE1X3JlcXVlc3Rfd2Fp
dChycSwKLQkJCQkgICAgICBJOTE1X1dBSVRfSU5URVJSVVBUSUJMRSwKLQkJCQkgICAgICBNQVhf
U0NIRURVTEVfVElNRU9VVCkgPCAwKSB7Ci0JCQlpOTE1X3JlcXVlc3RfcHV0KHJxKTsKLQkJCWVy
ciA9IC1FSU5UUjsKLQkJCWdvdG8gZXJyX2V4aXQ7Ci0JCX0KKwkJYm9vbCBub25ibG9jayA9IGVi
LT5maWxlLT5maWxwLT5mX2ZsYWdzICYgT19OT05CTE9DSzsKKwkJbG9uZyB0aW1lb3V0OworCisJ
CXRpbWVvdXQgPSBNQVhfU0NIRURVTEVfVElNRU9VVDsKKwkJaWYgKG5vbmJsb2NrKQorCQkJdGlt
ZW91dCA9IDA7CiAKKwkJdGltZW91dCA9IGk5MTVfcmVxdWVzdF93YWl0KHJxLAorCQkJCQkgICAg
STkxNV9XQUlUX0lOVEVSUlVQVElCTEUsCisJCQkJCSAgICB0aW1lb3V0KTsKIAkJaTkxNV9yZXF1
ZXN0X3B1dChycSk7CisKKwkJaWYgKHRpbWVvdXQgPCAwKSB7CisJCQllcnIgPSBub25ibG9jayA/
IC1FV09VTERCTE9DSyA6IHRpbWVvdXQ7CisJCQlnb3RvIGVycl9leGl0OworCQl9CiAJfQogCiAJ
ZWItPmVuZ2luZSA9IGNlLT5lbmdpbmU7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
