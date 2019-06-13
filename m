Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7D8436CA
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:41:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FAB3896E5;
	Thu, 13 Jun 2019 13:41:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC1F4896E5
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 13:41:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 06:41:30 -0700
X-ExtLoop1: 1
Received: from aabuhatz-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.210])
 by orsmga008.jf.intel.com with ESMTP; 13 Jun 2019 06:41:12 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jun 2019 14:35:31 +0100
Message-Id: <20190613133539.12620-21-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 20/28] drm/i915: Compartmentalize
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
c3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
IHwgMjMgKysrKysrKysrKysrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRp
b25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5k
ZXggMGJjNzVjOTYzOTU1Li41MTZmZmM0YTUyMWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2d0dC5jCkBAIC0yMzIzLDIzICsyMzIzLDI4IEBAIHN0YXRpYyBib29sIG5lZWRzX2lkbGVfbWFw
cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJcmV0dXJuIElTX0dFTihkZXZf
cHJpdiwgNSkgJiYgSVNfTU9CSUxFKGRldl9wcml2KSAmJiBpbnRlbF92dGRfYWN0aXZlKCk7CiB9
CiAKLXZvaWQgaTkxNV9nZW1fc3VzcGVuZF9ndHRfbWFwcGluZ3Moc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQorc3RhdGljIHZvaWQgZ2d0dF9zdXNwZW5kX21hcHBpbmdzKHN0cnVj
dCBpOTE1X2dndHQgKmdndHQpCiB7Ci0Jc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCA9ICZkZXZfcHJp
di0+Z2d0dDsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGdndHQtPnZtLmk5MTU7
CiAKIAkvKiBEb24ndCBib3RoZXIgbWVzc2luZyB3aXRoIGZhdWx0cyBwcmUgR0VONiBhcyB3ZSBo
YXZlIGxpdHRsZQogCSAqIGRvY3VtZW50YXRpb24gc3VwcG9ydGluZyB0aGF0IGl0J3MgYSBnb29k
IGlkZWEuCiAJICovCi0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCA2KQorCWlmIChJTlRFTF9H
RU4oaTkxNSkgPCA2KQogCQlyZXR1cm47CiAKLQlpbnRlbF9ndF9jaGVja19hbmRfY2xlYXJfZmF1
bHRzKCZkZXZfcHJpdi0+Z3QpOworCWludGVsX2d0X2NoZWNrX2FuZF9jbGVhcl9mYXVsdHMoZ2d0
dC0+dm0uZ3QpOwogCiAJZ2d0dC0+dm0uY2xlYXJfcmFuZ2UoJmdndHQtPnZtLCAwLCBnZ3R0LT52
bS50b3RhbCk7CiAKIAlnZ3R0LT5pbnZhbGlkYXRlKGdndHQpOwogfQogCit2b2lkIGk5MTVfZ2Vt
X3N1c3BlbmRfZ3R0X21hcHBpbmdzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
K3sKKwlnZ3R0X3N1c3BlbmRfbWFwcGluZ3MoJmRldl9wcml2LT5nZ3R0KTsKK30KKwogaW50IGk5
MTVfZ2VtX2d0dF9wcmVwYXJlX3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmos
CiAJCQkgICAgICAgc3RydWN0IHNnX3RhYmxlICpwYWdlcykKIHsKQEAgLTM2NzQsMTIgKzM2Nzks
MTEgQEAgdm9pZCBpOTE1X2dndHRfZGlzYWJsZV9ndWMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCiAJZ2d0dC0+aW52YWxpZGF0ZShnZ3R0KTsKIH0KIAotdm9pZCBpOTE1X2dlbV9yZXN0
b3JlX2d0dF9tYXBwaW5ncyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCitzdGF0
aWMgdm9pZCBnZ3R0X3Jlc3RvcmVfbWFwcGluZ3Moc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKIHsK
LQlzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0ID0gJmRldl9wcml2LT5nZ3R0OwogCXN0cnVjdCBpOTE1
X3ZtYSAqdm1hLCAqdm47CiAKLQlpbnRlbF9ndF9jaGVja19hbmRfY2xlYXJfZmF1bHRzKCZkZXZf
cHJpdi0+Z3QpOworCWludGVsX2d0X2NoZWNrX2FuZF9jbGVhcl9mYXVsdHMoZ2d0dC0+dm0uZ3Qp
OwogCiAJbXV0ZXhfbG9jaygmZ2d0dC0+dm0ubXV0ZXgpOwogCkBAIC0zNzE2LDYgKzM3MjAsMTEg
QEAgdm9pZCBpOTE1X2dlbV9yZXN0b3JlX2d0dF9tYXBwaW5ncyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCiAJZ2d0dC0+aW52YWxpZGF0ZShnZ3R0KTsKIAogCW11dGV4X3VubG9j
aygmZ2d0dC0+dm0ubXV0ZXgpOworfQorCit2b2lkIGk5MTVfZ2VtX3Jlc3RvcmVfZ3R0X21hcHBp
bmdzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3sKKwlnZ3R0X3Jlc3RvcmVf
bWFwcGluZ3MoJmRldl9wcml2LT5nZ3R0KTsKIAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDgpIHsKIAkJc3RydWN0IGludGVsX3BwYXQgKnBwYXQgPSAmZGV2X3ByaXYtPnBwYXQ7Ci0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
