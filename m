Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB897DDA2
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 16:18:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC94F6E657;
	Thu,  1 Aug 2019 14:18:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C17C16E658
 for <Intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 14:18:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 07:18:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,334,1559545200"; d="scan'208";a="172927233"
Received: from gadevlin-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.95.57])
 by fmsmga008.fm.intel.com with ESMTP; 01 Aug 2019 07:17:59 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu,  1 Aug 2019 15:17:31 +0100
Message-Id: <20190801141732.31335-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190801141732.31335-1-tvrtko.ursulin@linux.intel.com>
References: <20190801141732.31335-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/pmu: Make get_rc6 take intel_gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJDNiBpcyBh
IEdUIHN0YXRlIHNvIG1ha2UgdGhlIGZ1bmN0aW9uIHBhcmFtZXRlciByZWZsZWN0IHRoYXQuCgpT
aWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMgfCAxMiArKysrKysrLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcG11LmMKaW5kZXggNWNmOWE0N2EwYzQzLi5lMGUwMTgwYmNhN2MgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wbXUuYwpAQCAtNDMxLDggKzQzMSw5IEBAIHN0YXRpYyBpbnQgaTkxNV9wbXVfZXZl
bnRfaW5pdChzdHJ1Y3QgcGVyZl9ldmVudCAqZXZlbnQpCiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRp
YyB1NjQgX19nZXRfcmM2KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQorc3RhdGljIHU2
NCBfX2dldF9yYzYoc3RydWN0IGludGVsX2d0ICpndCkKIHsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSA9IGd0LT5pOTE1OwogCXU2NCB2YWw7CiAKIAl2YWwgPSBpbnRlbF9yYzZfcmVz
aWRlbmN5X25zKGk5MTUsCkBAIC00NDksOSArNDUwLDEwIEBAIHN0YXRpYyB1NjQgX19nZXRfcmM2
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCXJldHVybiB2YWw7CiB9CiAKLXN0YXRp
YyB1NjQgZ2V0X3JjNihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKK3N0YXRpYyB1NjQg
Z2V0X3JjNihzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogewogI2lmIElTX0VOQUJMRUQoQ09ORklHX1BN
KQorCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3QtPmk5MTU7CiAJc3RydWN0IGlu
dGVsX3J1bnRpbWVfcG0gKnJwbSA9ICZpOTE1LT5ydW50aW1lX3BtOwogCXN0cnVjdCBpOTE1X3Bt
dSAqcG11ID0gJmk5MTUtPnBtdTsKIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKQEAgLTQ2MCw3
ICs0NjIsNyBAQCBzdGF0aWMgdTY0IGdldF9yYzYoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCiAKIAl3YWtlcmVmID0gaW50ZWxfcnVudGltZV9wbV9nZXRfaWZfaW5fdXNlKHJwbSk7CiAJ
aWYgKHdha2VyZWYpIHsKLQkJdmFsID0gX19nZXRfcmM2KGk5MTUpOworCQl2YWwgPSBfX2dldF9y
YzYoZ3QpOwogCQlpbnRlbF9ydW50aW1lX3BtX3B1dChycG0sIHdha2VyZWYpOwogCiAJCS8qCkBA
IC01MjMsNyArNTI1LDcgQEAgc3RhdGljIHU2NCBnZXRfcmM2KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQogCiAJcmV0dXJuIHZhbDsKICNlbHNlCi0JcmV0dXJuIF9fZ2V0X3JjNihpOTE1
KTsKKwlyZXR1cm4gX19nZXRfcmM2KGd0KTsKICNlbmRpZgogfQogCkBAIC01NjYsNyArNTY4LDcg
QEAgc3RhdGljIHU2NCBfX2k5MTVfcG11X2V2ZW50X3JlYWQoc3RydWN0IHBlcmZfZXZlbnQgKmV2
ZW50KQogCQkJdmFsID0gY291bnRfaW50ZXJydXB0cyhpOTE1KTsKIAkJCWJyZWFrOwogCQljYXNl
IEk5MTVfUE1VX1JDNl9SRVNJREVOQ1k6Ci0JCQl2YWwgPSBnZXRfcmM2KGk5MTUpOworCQkJdmFs
ID0gZ2V0X3JjNigmaTkxNS0+Z3QpOwogCQkJYnJlYWs7CiAJCX0KIAl9Ci0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
