Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E08AA4DB69
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 22:39:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14B246E812;
	Thu, 20 Jun 2019 20:39:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80E9F6E7FA
 for <Intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 20:38:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 13:38:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="186938723"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga002.fm.intel.com with ESMTP; 20 Jun 2019 13:38:53 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 21:38:24 +0100
Message-Id: <20190620203835.1421-22-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190620203835.1421-1-tvrtko.ursulin@linux.intel.com>
References: <20190620203835.1421-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 22/33] drm/i915: Compartmentalize
 i915_gem_suspend/restore_gtt_mappings
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
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgMjkg
KysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRp
b25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmlu
ZGV4IGE2YWFiMWJiMjU5OS4uYWZiMWJhZDk4MGJiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9ndHQuYwpAQCAtMjMxNywyMyArMjMxNywyOCBAQCBzdGF0aWMgYm9vbCBuZWVkc19pZGxlX21h
cHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXJldHVybiBJU19HRU4oZGV2
X3ByaXYsIDUpICYmIElTX01PQklMRShkZXZfcHJpdikgJiYgaW50ZWxfdnRkX2FjdGl2ZSgpOwog
fQogCi12b2lkIGk5MTVfZ2VtX3N1c3BlbmRfZ3R0X21hcHBpbmdzKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKK3N0YXRpYyB2b2lkIGdndHRfc3VzcGVuZF9tYXBwaW5ncyhzdHJ1
Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogewotCXN0cnVjdCBpOTE1X2dndHQgKmdndHQgPSAmZGV2X3By
aXYtPmdndHQ7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBnZ3R0LT52bS5pOTE1
OwogCiAJLyogRG9uJ3QgYm90aGVyIG1lc3Npbmcgd2l0aCBmYXVsdHMgcHJlIEdFTjYgYXMgd2Ug
aGF2ZSBsaXR0bGUKIAkgKiBkb2N1bWVudGF0aW9uIHN1cHBvcnRpbmcgdGhhdCBpdCdzIGEgZ29v
ZCBpZGVhLgogCSAqLwotCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgNikKKwlpZiAoSU5URUxf
R0VOKGk5MTUpIDwgNikKIAkJcmV0dXJuOwogCi0JaW50ZWxfZ3RfY2hlY2tfYW5kX2NsZWFyX2Zh
dWx0cygmZGV2X3ByaXYtPmd0KTsKKwlpbnRlbF9ndF9jaGVja19hbmRfY2xlYXJfZmF1bHRzKGdn
dHQtPnZtLmd0KTsKIAogCWdndHQtPnZtLmNsZWFyX3JhbmdlKCZnZ3R0LT52bSwgMCwgZ2d0dC0+
dm0udG90YWwpOwogCiAJZ2d0dC0+aW52YWxpZGF0ZShnZ3R0KTsKIH0KIAordm9pZCBpOTE1X2dl
bV9zdXNwZW5kX2d0dF9tYXBwaW5ncyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKK3sK
KwlnZ3R0X3N1c3BlbmRfbWFwcGluZ3MoJmk5MTUtPmdndHQpOworfQorCiBpbnQgaTkxNV9nZW1f
Z3R0X3ByZXBhcmVfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJCSAg
ICAgICBzdHJ1Y3Qgc2dfdGFibGUgKnBhZ2VzKQogewpAQCAtMzY2OCwxMiArMzY3MywxMSBAQCB2
b2lkIGk5MTVfZ2d0dF9kaXNhYmxlX2d1YyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkK
IAlnZ3R0LT5pbnZhbGlkYXRlKGdndHQpOwogfQogCi12b2lkIGk5MTVfZ2VtX3Jlc3RvcmVfZ3R0
X21hcHBpbmdzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3N0YXRpYyB2b2lk
IGdndHRfcmVzdG9yZV9tYXBwaW5ncyhzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogewotCXN0cnVj
dCBpOTE1X2dndHQgKmdndHQgPSAmZGV2X3ByaXYtPmdndHQ7CiAJc3RydWN0IGk5MTVfdm1hICp2
bWEsICp2bjsKIAotCWludGVsX2d0X2NoZWNrX2FuZF9jbGVhcl9mYXVsdHMoJmRldl9wcml2LT5n
dCk7CisJaW50ZWxfZ3RfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cyhnZ3R0LT52bS5ndCk7CiAKIAlt
dXRleF9sb2NrKCZnZ3R0LT52bS5tdXRleCk7CiAKQEAgLTM3MTAsMTIgKzM3MTQsMTcgQEAgdm9p
ZCBpOTE1X2dlbV9yZXN0b3JlX2d0dF9tYXBwaW5ncyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCiAJZ2d0dC0+aW52YWxpZGF0ZShnZ3R0KTsKIAogCW11dGV4X3VubG9jaygmZ2d0
dC0+dm0ubXV0ZXgpOworfQorCit2b2lkIGk5MTVfZ2VtX3Jlc3RvcmVfZ3R0X21hcHBpbmdzKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQoreworCWdndHRfcmVzdG9yZV9tYXBwaW5ncygm
aTkxNS0+Z2d0dCk7CiAKLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA4KSB7Ci0JCXN0cnVj
dCBpbnRlbF9wcGF0ICpwcGF0ID0gJmRldl9wcml2LT5wcGF0OworCWlmIChJTlRFTF9HRU4oaTkx
NSkgPj0gOCkgeworCQlzdHJ1Y3QgaW50ZWxfcHBhdCAqcHBhdCA9ICZpOTE1LT5wcGF0OwogCiAJ
CWJpdG1hcF9zZXQocHBhdC0+ZGlydHksIDAsIHBwYXQtPm1heF9lbnRyaWVzKTsKLQkJZGV2X3By
aXYtPnBwYXQudXBkYXRlX2h3KGRldl9wcml2KTsKKwkJaTkxNS0+cHBhdC51cGRhdGVfaHcoaTkx
NSk7CiAJCXJldHVybjsKIAl9CiB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
