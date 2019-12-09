Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 495F8116D0B
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 13:23:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5599C89C25;
	Mon,  9 Dec 2019 12:23:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E702C89C25
 for <Intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 12:23:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 04:23:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,294,1571727600"; d="scan'208";a="215198409"
Received: from cpreilly-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.80.64])
 by orsmga003.jf.intel.com with ESMTP; 09 Dec 2019 04:23:17 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon,  9 Dec 2019 12:23:14 +0000
Message-Id: <20191209122314.16289-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Improve execbuf debug
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkNvbnZlcnQg
aTkxNV9nZW1fY2hlY2tfZXhlY2J1ZmZlciB0byByZXR1cm4gdGhlIGVycm9yIGNvZGUgaW5zdGVh
ZCBvZgphIGJvb2xlYW4gc28gb3VyIG5lYXQgRUlOVkFMIGRlYnVnZ2luZyB0cmljayB3b3JrcyB3
aXRoaW4gdGhpcyBmdW5jdGlvbi4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
ZXhlY2J1ZmZlci5jICAgIHwgMjIgKysrKysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDEyIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCmluZGV4IDM0MDQ0YzYyMDNhNS4uNTAwM2U2
MTZhMWFkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhl
Y2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVm
ZmVyLmMKQEAgLTE5MTUsMTUgKzE5MTUsMTUgQEAgc3RhdGljIGludCBlYl9tb3ZlX3RvX2dwdShz
dHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKIAlyZXR1cm4gZXJyOwogfQogCi1zdGF0aWMgYm9v
bCBpOTE1X2dlbV9jaGVja19leGVjYnVmZmVyKHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZl
cjIgKmV4ZWMpCitzdGF0aWMgaW50IGk5MTVfZ2VtX2NoZWNrX2V4ZWNidWZmZXIoc3RydWN0IGRy
bV9pOTE1X2dlbV9leGVjYnVmZmVyMiAqZXhlYykKIHsKIAlpZiAoZXhlYy0+ZmxhZ3MgJiBfX0k5
MTVfRVhFQ19JTExFR0FMX0ZMQUdTKQotCQlyZXR1cm4gZmFsc2U7CisJCXJldHVybiAtRUlOVkFM
OwogCiAJLyogS2VybmVsIGNsaXBwaW5nIHdhcyBhIERSSTEgbWlzZmVhdHVyZSAqLwogCWlmICgh
KGV4ZWMtPmZsYWdzICYgSTkxNV9FWEVDX0ZFTkNFX0FSUkFZKSkgewogCQlpZiAoZXhlYy0+bnVt
X2NsaXByZWN0cyB8fCBleGVjLT5jbGlwcmVjdHNfcHRyKQotCQkJcmV0dXJuIGZhbHNlOworCQkJ
cmV0dXJuIC1FSU5WQUw7CiAJfQogCiAJaWYgKGV4ZWMtPkRSNCA9PSAweGZmZmZmZmZmKSB7CkBA
IC0xOTMxLDEyICsxOTMxLDEyIEBAIHN0YXRpYyBib29sIGk5MTVfZ2VtX2NoZWNrX2V4ZWNidWZm
ZXIoc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiAqZXhlYykKIAkJZXhlYy0+RFI0ID0g
MDsKIAl9CiAJaWYgKGV4ZWMtPkRSMSB8fCBleGVjLT5EUjQpCi0JCXJldHVybiBmYWxzZTsKKwkJ
cmV0dXJuIC1FSU5WQUw7CiAKIAlpZiAoKGV4ZWMtPmJhdGNoX3N0YXJ0X29mZnNldCB8IGV4ZWMt
PmJhdGNoX2xlbikgJiAweDcpCi0JCXJldHVybiBmYWxzZTsKKwkJcmV0dXJuIC1FSU5WQUw7CiAK
LQlyZXR1cm4gdHJ1ZTsKKwlyZXR1cm4gMDsKIH0KIAogc3RhdGljIGludCBpOTE1X3Jlc2V0X2dl
bjdfc29sX29mZnNldHMoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCkBAIC0yNzY4LDggKzI3Njgs
OSBAQCBpOTE1X2dlbV9leGVjYnVmZmVyX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZv
aWQgKmRhdGEsCiAJZXhlYzIuZmxhZ3MgPSBJOTE1X0VYRUNfUkVOREVSOwogCWk5MTVfZXhlY2J1
ZmZlcjJfc2V0X2NvbnRleHRfaWQoZXhlYzIsIDApOwogCi0JaWYgKCFpOTE1X2dlbV9jaGVja19l
eGVjYnVmZmVyKCZleGVjMikpCi0JCXJldHVybiAtRUlOVkFMOworCWVyciA9IGk5MTVfZ2VtX2No
ZWNrX2V4ZWNidWZmZXIoJmV4ZWMyKTsKKwlpZiAoZXJyKQorCQlyZXR1cm4gZXJyOwogCiAJLyog
Q29weSBpbiB0aGUgZXhlYyBsaXN0IGZyb20gdXNlcmxhbmQgKi8KIAlleGVjX2xpc3QgPSBrdm1h
bGxvY19hcnJheShjb3VudCwgc2l6ZW9mKCpleGVjX2xpc3QpLApAQCAtMjg0Niw4ICsyODQ3LDkg
QEAgaTkxNV9nZW1fZXhlY2J1ZmZlcjJfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9p
ZCAqZGF0YSwKIAkJcmV0dXJuIC1FSU5WQUw7CiAJfQogCi0JaWYgKCFpOTE1X2dlbV9jaGVja19l
eGVjYnVmZmVyKGFyZ3MpKQotCQlyZXR1cm4gLUVJTlZBTDsKKwllcnIgPSBpOTE1X2dlbV9jaGVj
a19leGVjYnVmZmVyKGFyZ3MpOworCWlmIChlcnIpCisJCXJldHVybiBlcnI7CiAKIAkvKiBBbGxv
Y2F0ZSBhbiBleHRyYSBzbG90IGZvciB1c2UgYnkgdGhlIGNvbW1hbmQgcGFyc2VyICovCiAJZXhl
YzJfbGlzdCA9IGt2bWFsbG9jX2FycmF5KGNvdW50ICsgMSwgZWJfZWxlbWVudF9zaXplKCksCi0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
