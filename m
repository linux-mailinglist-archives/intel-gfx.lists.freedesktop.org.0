Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B754F4627B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 17:18:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D19D689A7A;
	Fri, 14 Jun 2019 15:18:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E530189A62
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 15:18:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 08:18:02 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by orsmga004.jf.intel.com with ESMTP; 14 Jun 2019 08:18:01 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jun 2019 16:17:16 +0100
Message-Id: <20190614151731.17608-17-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 16/31] drm/i915: Compartmentalize
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
c3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
IHwgMzEgKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMSBp
bnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jCmluZGV4IDA4MTBjMTY1NTIyNC4uYzg4MjEzZmExOGFmIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9ndHQuYwpAQCAtMzUwNywyMSArMzUwNywxNiBAQCBzdGF0aWMgaW50IGk5MTVfZ21j
aF9wcm9iZShzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogCXJldHVybiAwOwogfQogCi0vKioKLSAq
IGk5MTVfZ2d0dF9wcm9iZV9odyAtIFByb2JlIEdHVFQgaGFyZHdhcmUgbG9jYXRpb24KLSAqIEBk
ZXZfcHJpdjogaTkxNSBkZXZpY2UKLSAqLwotaW50IGk5MTVfZ2d0dF9wcm9iZV9odyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCitzdGF0aWMgaW50IGdndHRfcHJvYmVfaHcoc3Ry
dWN0IGk5MTVfZ2d0dCAqZ2d0dCwgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7Ci0J
c3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCA9ICZkZXZfcHJpdi0+Z2d0dDsKIAlpbnQgcmV0OwogCi0J
Z2d0dC0+dm0uaTkxNSA9IGRldl9wcml2OwotCWdndHQtPnZtLmRtYSA9ICZkZXZfcHJpdi0+ZHJt
LnBkZXYtPmRldjsKKwlnZ3R0LT52bS5pOTE1ID0gaTkxNTsKKwlnZ3R0LT52bS5kbWEgPSAmaTkx
NS0+ZHJtLnBkZXYtPmRldjsKIAotCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDw9IDUpCisJaWYg
KElOVEVMX0dFTihpOTE1KSA8PSA1KQogCQlyZXQgPSBpOTE1X2dtY2hfcHJvYmUoZ2d0dCk7Ci0J
ZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDgpCisJZWxzZSBpZiAoSU5URUxfR0VOKGk5
MTUpIDwgOCkKIAkJcmV0ID0gZ2VuNl9nbWNoX3Byb2JlKGdndHQpOwogCWVsc2UKIAkJcmV0ID0g
Z2VuOF9nbWNoX3Byb2JlKGdndHQpOwpAQCAtMzU0OSw2ICszNTQ0LDIyIEBAIGludCBpOTE1X2dn
dHRfcHJvYmVfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCURSTV9ERUJV
R19EUklWRVIoIkdNQURSIHNpemUgPSAlbGx1TVxuIiwgKHU2NClnZ3R0LT5tYXBwYWJsZV9lbmQg
Pj4gMjApOwogCURSTV9ERUJVR19EUklWRVIoIkRTTSBzaXplID0gJWxsdU1cbiIsCiAJCQkgKHU2
NClyZXNvdXJjZV9zaXplKCZpbnRlbF9ncmFwaGljc19zdG9sZW5fcmVzKSA+PiAyMCk7CisKKwly
ZXR1cm4gMDsKK30KKworLyoqCisgKiBpOTE1X2dndHRfcHJvYmVfaHcgLSBQcm9iZSBHR1RUIGhh
cmR3YXJlIGxvY2F0aW9uCisgKiBAZGV2X3ByaXY6IGk5MTUgZGV2aWNlCisgKi8KK2ludCBpOTE1
X2dndHRfcHJvYmVfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCit7CisJaW50IHJl
dDsKKworCXJldCA9IGdndHRfcHJvYmVfaHcoJmk5MTUtPmdndHQsIGk5MTUpOworCWlmIChyZXQp
CisJCXJldHVybiByZXQ7CisKIAlpZiAoaW50ZWxfdnRkX2FjdGl2ZSgpKQogCQlEUk1fSU5GTygi
VlQtZCBhY3RpdmUgZm9yIGdmeCBhY2Nlc3NcbiIpOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
