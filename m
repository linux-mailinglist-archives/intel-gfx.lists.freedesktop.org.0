Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9678F4A186
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 15:04:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6EED6E17E;
	Tue, 18 Jun 2019 13:04:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9F936E17E
 for <Intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 13:04:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 06:04:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="160053337"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jun 2019 06:04:13 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jun 2019 14:03:30 +0100
Message-Id: <20190618130345.6135-19-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190618130345.6135-1-tvrtko.ursulin@linux.intel.com>
References: <20190618130345.6135-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/33] drm/i915: Compartmentalize
 i915_ggtt_probe_hw
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkhhdmluZyBt
YWRlIHN0YXJ0IHRvIGJldHRlciBjb2RlIGNvbXBhcnRtZW50YWxpemF0aW9uIGJ5IGludHJvZHVj
aW5nCnN0cnVjdCBpbnRlbF9ndCwgY29udGludWUgdGhlIHRoZW1lIGVsc2V3aGVyZSBpbiBjb2Rl
IGJ5IG1ha2luZyBmdW5jdGlvbnMKdGFrZSBwYXJhbWV0ZXJzIHRha2Ugd2hhdCBsb2dpY2FsbHkg
bWFrZXMgbW9zdCBzZW5zZSBmb3IgdGhlbSBpbnN0ZWFkIG9mCnRoZSBnbG9iYWwgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUuCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgMzEg
KysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRp
b25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmlu
ZGV4IGE4ZDhjMTE2OWE1OS4uYjM0ZmVkODE2YTk4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9ndHQuYwpAQCAtMzUwMSwyMSArMzUwMSwxNiBAQCBzdGF0aWMgaW50IGk5MTVfZ21jaF9wcm9i
ZShzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogCXJldHVybiAwOwogfQogCi0vKioKLSAqIGk5MTVf
Z2d0dF9wcm9iZV9odyAtIFByb2JlIEdHVFQgaGFyZHdhcmUgbG9jYXRpb24KLSAqIEBkZXZfcHJp
djogaTkxNSBkZXZpY2UKLSAqLwotaW50IGk5MTVfZ2d0dF9wcm9iZV9odyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCitzdGF0aWMgaW50IGdndHRfcHJvYmVfaHcoc3RydWN0IGk5
MTVfZ2d0dCAqZ2d0dCwgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7Ci0Jc3RydWN0
IGk5MTVfZ2d0dCAqZ2d0dCA9ICZkZXZfcHJpdi0+Z2d0dDsKIAlpbnQgcmV0OwogCi0JZ2d0dC0+
dm0uaTkxNSA9IGRldl9wcml2OwotCWdndHQtPnZtLmRtYSA9ICZkZXZfcHJpdi0+ZHJtLnBkZXYt
PmRldjsKKwlnZ3R0LT52bS5pOTE1ID0gaTkxNTsKKwlnZ3R0LT52bS5kbWEgPSAmaTkxNS0+ZHJt
LnBkZXYtPmRldjsKIAotCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDw9IDUpCisJaWYgKElOVEVM
X0dFTihpOTE1KSA8PSA1KQogCQlyZXQgPSBpOTE1X2dtY2hfcHJvYmUoZ2d0dCk7Ci0JZWxzZSBp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDgpCisJZWxzZSBpZiAoSU5URUxfR0VOKGk5MTUpIDwg
OCkKIAkJcmV0ID0gZ2VuNl9nbWNoX3Byb2JlKGdndHQpOwogCWVsc2UKIAkJcmV0ID0gZ2VuOF9n
bWNoX3Byb2JlKGdndHQpOwpAQCAtMzU0Myw2ICszNTM4LDIyIEBAIGludCBpOTE1X2dndHRfcHJv
YmVfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCURSTV9ERUJVR19EUklW
RVIoIkdNQURSIHNpemUgPSAlbGx1TVxuIiwgKHU2NClnZ3R0LT5tYXBwYWJsZV9lbmQgPj4gMjAp
OwogCURSTV9ERUJVR19EUklWRVIoIkRTTSBzaXplID0gJWxsdU1cbiIsCiAJCQkgKHU2NClyZXNv
dXJjZV9zaXplKCZpbnRlbF9ncmFwaGljc19zdG9sZW5fcmVzKSA+PiAyMCk7CisKKwlyZXR1cm4g
MDsKK30KKworLyoqCisgKiBpOTE1X2dndHRfcHJvYmVfaHcgLSBQcm9iZSBHR1RUIGhhcmR3YXJl
IGxvY2F0aW9uCisgKiBAZGV2X3ByaXY6IGk5MTUgZGV2aWNlCisgKi8KK2ludCBpOTE1X2dndHRf
cHJvYmVfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCit7CisJaW50IHJldDsKKwor
CXJldCA9IGdndHRfcHJvYmVfaHcoJmk5MTUtPmdndHQsIGk5MTUpOworCWlmIChyZXQpCisJCXJl
dHVybiByZXQ7CisKIAlpZiAoaW50ZWxfdnRkX2FjdGl2ZSgpKQogCQlEUk1fSU5GTygiVlQtZCBh
Y3RpdmUgZm9yIGdmeCBhY2Nlc3NcbiIpOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
