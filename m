Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3929C9CA14
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 09:22:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F34C96E1C4;
	Mon, 26 Aug 2019 07:22:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 432206E1BA
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 07:22:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18262700-1500050 
 for multiple; Mon, 26 Aug 2019 08:21:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 08:21:46 +0100
Message-Id: <20190826072149.9447-25-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826072149.9447-1-chris@chris-wilson.co.uk>
References: <20190826072149.9447-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 25/28] drm/i915: Mark up "sentinel" requests
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

U29tZXRpbWVzIHdlIHdhbnQgdG8gZW1pdCBhIHRlcm1pbmF0b3IgcmVxdWVzdCwgYSByZXF1ZXN0
IHRoYXQgZmx1c2hlcwp0aGUgcGlwZWxpbmUgYW5kIGFsbG93cyBubyByZXF1ZXN0IHRvIGNvbWUg
YWZ0ZXIgaXQuIFRoaXMgY2FuIGJlIHVzZWQKZm9yIGEgInByZWVtcHQtdG8taWRsZSIgdG8gZW5z
dXJlIHRoYXQgdXBvbiBwcm9jZXNzaW5nIHRoZQpjb250ZXh0LXN3aXRjaCB0byB0aGF0IHJlcXVl
c3QsIGFsbCBvdGhlciBhY3RpdmUgY29udGV4dHMgaGF2ZSBiZWVuCmZsdXNoZWQuCgpTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8ICA2ICsrKysrKwogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmggfCAxMCArKysrKysrKy0tCiAyIGZpbGVzIGNoYW5nZWQs
IDE0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYwppbmRleCA2YjNiOTAyNmQ4NDAuLjVhNmYxYjFkZGVmYSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTgwNCw2ICs4MDQsOSBAQCBzdGF0aWMgYm9vbCBjYW5fbWVy
Z2VfcnEoY29uc3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAqcHJldiwKIAlHRU1fQlVHX09OKHByZXYg
PT0gbmV4dCk7CiAJR0VNX0JVR19PTighYXNzZXJ0X3ByaW9yaXR5X3F1ZXVlKHByZXYsIG5leHQp
KTsKIAorCWlmIChpOTE1X3JlcXVlc3RfaGFzX3NlbnRpbmVsKHByZXYpKQorCQlyZXR1cm4gZmFs
c2U7CisKIAlpZiAoIWNhbl9tZXJnZV9jdHgocHJldi0+aHdfY29udGV4dCwgbmV4dC0+aHdfY29u
dGV4dCkpCiAJCXJldHVybiBmYWxzZTsKIApAQCAtMTMwNyw2ICsxMzEwLDkgQEAgc3RhdGljIHZv
aWQgZXhlY2xpc3RzX2RlcXVldWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCQkJ
CWlmIChsYXN0LT5od19jb250ZXh0ID09IHJxLT5od19jb250ZXh0KQogCQkJCQlnb3RvIGRvbmU7
CiAKKwkJCQlpZiAoaTkxNV9yZXF1ZXN0X2hhc19zZW50aW5lbChsYXN0KSkKKwkJCQkJZ290byBk
b25lOworCiAJCQkJLyoKIAkJCQkgKiBJZiBHVlQgb3ZlcnJpZGVzIHVzIHdlIG9ubHkgZXZlciBz
dWJtaXQKIAkJCQkgKiBwb3J0WzBdLCBsZWF2aW5nIHBvcnRbMV0gZW1wdHkuIE5vdGUgdGhhdCB3
ZQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaAppbmRleCAyYTVkNjgyYWE2YjEuLjQ5YzIx
NjcyZGEzZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmgKQEAgLTIxNiw4ICsyMTYs
OSBAQCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0IHsKIAl1bnNpZ25lZCBsb25nIGVtaXR0ZWRfamlmZmll
czsKIAogCXVuc2lnbmVkIGxvbmcgZmxhZ3M7Ci0jZGVmaW5lIEk5MTVfUkVRVUVTVF9XQUlUQk9P
U1QgQklUKDApCi0jZGVmaW5lIEk5MTVfUkVRVUVTVF9OT1BSRUVNUFQgQklUKDEpCisjZGVmaW5l
IEk5MTVfUkVRVUVTVF9XQUlUQk9PU1QJQklUKDApCisjZGVmaW5lIEk5MTVfUkVRVUVTVF9OT1BS
RUVNUFQJQklUKDEpCisjZGVmaW5lIEk5MTVfUkVRVUVTVF9TRU5USU5FTAlCSVQoMikKIAogCS8q
KiB0aW1lbGluZS0+cmVxdWVzdCBlbnRyeSBmb3IgdGhpcyByZXF1ZXN0ICovCiAJc3RydWN0IGxp
c3RfaGVhZCBsaW5rOwpAQCAtNDM5LDYgKzQ0MCwxMSBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaTkx
NV9yZXF1ZXN0X2hhc19ub3ByZWVtcHQoY29uc3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJ
cmV0dXJuIHVubGlrZWx5KHJxLT5mbGFncyAmIEk5MTVfUkVRVUVTVF9OT1BSRUVNUFQpOwogfQog
CitzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9yZXF1ZXN0X2hhc19zZW50aW5lbChjb25zdCBzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpycSkKK3sKKwlyZXR1cm4gdW5saWtlbHkocnEtPmZsYWdzICYgSTkx
NV9SRVFVRVNUX1NFTlRJTkVMKTsKK30KKwogbG9uZyBpOTE1X3JldGlyZV9yZXF1ZXN0cyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgbG9uZyB0aW1lb3V0KTsKIAogI2VuZGlmIC8qIEk5
MTVfUkVRVUVTVF9IICovCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
