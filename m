Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 445D2A4E24
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 06:03:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 371A389B27;
	Mon,  2 Sep 2019 04:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A56B89A92
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2019 04:03:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18339009-1500050 
 for multiple; Mon, 02 Sep 2019 05:03:06 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Sep 2019 05:02:46 +0100
Message-Id: <20190902040303.14195-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190902040303.14195-1-chris@chris-wilson.co.uk>
References: <20190902040303.14195-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/21] drm/i915: Refresh the errno to vmf_fault
 translations
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

SXQncyBiZWVuIGEgbG9uZyB0aW1lIHNpbmNlIHdlIGFjY2lkZW50YWxseSByZXBvcnRlZCAtRUlP
IHVwb24gd2VkZ2luZywKaXQgY2FuIG5vdyBvbmx5IGJlIGdlbmVyYXRlZCBieSBmYWlsdXJlIHRv
IHN3YXAgaW4gYSBwYWdlLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+CkNjOiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4u
YyB8IDM5ICsrKysrKysrKy0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE1IGluc2Vy
dGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fbW1hbi5jCmluZGV4IDI2MWM5YmQ4M2Y1MS4uODJkYjJiNzgzMTIzIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKQEAgLTI4Nyw2ICsyODcsOSBAQCB2bV9mYXVs
dF90IGk5MTVfZ2VtX2ZhdWx0KHN0cnVjdCB2bV9mYXVsdCAqdm1mKQogCQkJdmlldy50eXBlID0g
STkxNV9HR1RUX1ZJRVdfUEFSVElBTDsKIAkJCXZtYSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3Bp
bihvYmosICZ2aWV3LCAwLCAwLCBmbGFncyk7CiAJCX0KKworCQkvKiBUaGUgZW50aXJlIG1hcHBh
YmxlIEdHVFQgaXMgcGlubmVkPyBVbmV4cGVjdGVkISAqLworCQlHRU1fQlVHX09OKHZtYSA9PSBF
UlJfUFRSKC1FTk9TUEMpKTsKIAl9CiAJaWYgKElTX0VSUih2bWEpKSB7CiAJCXJldCA9IFBUUl9F
UlIodm1hKTsKQEAgLTMzMywyMyArMzM2LDE5IEBAIHZtX2ZhdWx0X3QgaTkxNV9nZW1fZmF1bHQo
c3RydWN0IHZtX2ZhdWx0ICp2bWYpCiAJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7
CiBlcnI6CiAJc3dpdGNoIChyZXQpIHsKLQljYXNlIC1FSU86Ci0JCS8qCi0JCSAqIFdlIGVhdCBl
cnJvcnMgd2hlbiB0aGUgZ3B1IGlzIHRlcm1pbmFsbHkgd2VkZ2VkIHRvIGF2b2lkCi0JCSAqIHVz
ZXJzcGFjZSB1bmR1bHkgY3Jhc2hpbmcgKGdsIGhhcyBubyBwcm92aXNpb25zIGZvciBtbWFwcyB0
bwotCQkgKiBmYWlsKS4gQnV0IGFueSBvdGhlciAtRUlPIGlzbid0IG91cnMgKGUuZy4gc3dhcCBp
biBmYWlsdXJlKQotCQkgKiBhbmQgc28gbmVlZHMgdG8gYmUgcmVwb3J0ZWQuCi0JCSAqLwotCQlp
ZiAoIWludGVsX2d0X2lzX3dlZGdlZChnZ3R0LT52bS5ndCkpCi0JCQlyZXR1cm4gVk1fRkFVTFRf
U0lHQlVTOwotCQkvKiBlbHNlLCBmYWxsIHRocm91Z2ggKi8KLQljYXNlIC1FQUdBSU46Ci0JCS8q
Ci0JCSAqIEVBR0FJTiBtZWFucyB0aGUgZ3B1IGlzIGh1bmcgYW5kIHdlJ2xsIHdhaXQgZm9yIHRo
ZSBlcnJvcgotCQkgKiBoYW5kbGVyIHRvIHJlc2V0IGV2ZXJ5dGhpbmcgd2hlbiByZS1mYXVsdGlu
ZyBpbgotCQkgKiBpOTE1X211dGV4X2xvY2tfaW50ZXJydXB0aWJsZS4KLQkJICovCisJZGVmYXVs
dDoKKwkJV0FSTl9PTkNFKHJldCwgInVuaGFuZGxlZCBlcnJvciBpbiAlczogJWlcbiIsIF9fZnVu
Y19fLCByZXQpOworCQkvKiBmYWxsdGhyb3VnaCAqLworCWNhc2UgLUVJTzogLyogc2htZW1mcyBm
YWlsdXJlIGZyb20gc3dhcCBkZXZpY2UgKi8KKwljYXNlIC1FRkFVTFQ6IC8qIHB1cmdlZCBvYmpl
Y3QgKi8KKwkJcmV0dXJuIFZNX0ZBVUxUX1NJR0JVUzsKKworCWNhc2UgLUVOT1NQQzogLyogc2ht
ZW1mcyBhbGxvY2F0aW9uIGZhaWx1cmUgKi8KKwljYXNlIC1FTk9NRU06IC8qIG91ciBhbGxvY2F0
aW9uIGZhaWx1cmUgKi8KKwkJcmV0dXJuIFZNX0ZBVUxUX09PTTsKKwogCWNhc2UgMDoKKwljYXNl
IC1FQUdBSU46CiAJY2FzZSAtRVJFU1RBUlRTWVM6CiAJY2FzZSAtRUlOVFI6CiAJY2FzZSAtRUJV
U1k6CkBAIC0zNTgsMTQgKzM1Nyw2IEBAIHZtX2ZhdWx0X3QgaTkxNV9nZW1fZmF1bHQoc3RydWN0
IHZtX2ZhdWx0ICp2bWYpCiAJCSAqIGFscmVhZHkgZGlkIHRoZSBqb2IuCiAJCSAqLwogCQlyZXR1
cm4gVk1fRkFVTFRfTk9QQUdFOwotCWNhc2UgLUVOT01FTToKLQkJcmV0dXJuIFZNX0ZBVUxUX09P
TTsKLQljYXNlIC1FTk9TUEM6Ci0JY2FzZSAtRUZBVUxUOgotCQlyZXR1cm4gVk1fRkFVTFRfU0lH
QlVTOwotCWRlZmF1bHQ6Ci0JCVdBUk5fT05DRShyZXQsICJ1bmhhbmRsZWQgZXJyb3IgaW4gJXM6
ICVpXG4iLCBfX2Z1bmNfXywgcmV0KTsKLQkJcmV0dXJuIFZNX0ZBVUxUX1NJR0JVUzsKIAl9CiB9
CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
