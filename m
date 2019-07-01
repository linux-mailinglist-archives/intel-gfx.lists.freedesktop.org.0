Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 541455B51E
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 08:35:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A0A189E23;
	Mon,  1 Jul 2019 06:35:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4657389F5B
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 06:35:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jun 2019 23:34:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,437,1557212400"; d="scan'208";a="153988617"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga007.jf.intel.com with ESMTP; 30 Jun 2019 23:34:01 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 11:56:20 +0530
Message-Id: <20190701062632.456-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701062632.456-1-animesh.manna@intel.com>
References: <20190701062632.456-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/15] drm/i915/dsb: single register write
 function for DSB.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RFNCIHN1cHBvcnQgc2luZ2xlIHJlZ2lzdGVyIHdyaXRlIHRocm91Z2ggb3Bjb2RlIDB4MS4gR2Vu
ZXJpYwphcGkgY3JlYXRlZCB3aGljaCBhY2N1bXVsYXRlIGFsbCBzaW5nbGUgcmVnaXN0ZXIgd3Jp
dGUgaW4gYSBiYXRjaApidWZmZXIgYW5kIG9uY2UgRFNCIGlzIHRyaWdnZXJlZCwgaXQgd2lsbCBw
cm9ncmFtIGFsbCB0aGUgcmVnaXN0ZXJzCmF0IHRoZSBzYW1lIHRpbWUuCgpDYzogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZp
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNiLmMgfCAzNiArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZHNiLmggfCAgOSArKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA0NSBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNiLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kc2IuYwppbmRleCBkZTZhOGE5MDFkODguLmQ5ZjUxYTI4ZjhjNCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNiLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNiLmMKQEAgLTgsNiArOCwyMCBAQAogCiAjZGVmaW5lIERT
Ql9CVUZfU0laRSAgICAoMiAqIFBBR0VfU0laRSkKIAorLyogRFNCIG9wY29kZXMuICovCisjZGVm
aW5lIERTQl9PUENPREVfU0hJRlQJCTI0CisjZGVmaW5lIERTQl9PUENPREVfTk9PUAkJCTB4MAor
I2RlZmluZSBEU0JfT1BDT0RFX01NSU9fV1JJVEUJCTB4MQorI2RlZmluZSBEU0JfT1BDT0RFX1dB
SVRfRk9SX1VTCQkweDIKKyNkZWZpbmUgRFNCX09QQ09ERV9XQUlUX0ZPUl9MSU5FUwkweDMKKyNk
ZWZpbmUgRFNCX09QQ09ERV9XQUlUX0ZPUl9WQkxBTksJMHg0CisjZGVmaW5lIERTQl9PUENPREVf
V0FJVF9GT1JfU0xfSU4JMHg1CisjZGVmaW5lIERTQl9PUENPREVfV0FJVF9GT1JfU0xfT1VUCTB4
NgorI2RlZmluZSBEU0JfT1BDT0RFX0dFTkVSQVRFX0lOVAkJMHg3CisjZGVmaW5lIERTQl9PUENP
REVfSU5ERVhFRF9XUklURQkweDkKKyNkZWZpbmUgRFNCX09QQ09ERV9QT0xMCQkJMHhBCisjZGVm
aW5lIERTQl9CWVRFX0VOCQkJKDB4ZiA8PCAyMCkKKwogc3RydWN0IGludGVsX2RzYiAqCiBpbnRl
bF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogewpAQCAtNjMsMyArNzcsMjUgQEAg
aW50ZWxfZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAlpbnRlbF9ydW50aW1lX3Bt
X3B1dCgmaTkxNS0+cnVudGltZV9wbSwgd2FrZXJlZik7CiAJcmV0dXJuIGRzYjsKIH0KKwordm9p
ZCBpbnRlbF9kc2JfcmVnX3dyaXRlKHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwgaTkxNV9yZWdfdCBy
ZWcsIHUzMiB2YWwpCit7CisJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSBkc2ItPmNydGM7CisJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRl
dik7CisJdTMyICpidWYgPSBkc2ItPmNtZF9idWY7CisKKwlpZiAoIWJ1ZikgeworCQlJOTE1X1dS
SVRFKHJlZywgdmFsKTsKKwkJcmV0dXJuOworCX0KKworCWlmIChXQVJOX09OKGRzYi0+ZnJlZV9w
b3MgPj0gRFNCX0JVRl9TSVpFKSkgeworCQlEUk1fREVCVUdfS01TKCJEU0IgYnVmZmVyIG92ZXJm
bG93LlxuIik7CisJCXJldHVybjsKKwl9CisKKwlidWZbZHNiLT5mcmVlX3BvcysrXSA9IHZhbDsK
KwlidWZbZHNiLT5mcmVlX3BvcysrXSA9IChEU0JfT1BDT0RFX01NSU9fV1JJVEUgIDw8CisJCQkJ
RFNCX09QQ09ERV9TSElGVCkgfCBEU0JfQllURV9FTiB8CisJCQkJaTkxNV9tbWlvX3JlZ19vZmZz
ZXQocmVnKTsKK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RzYi5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNiLmgKaW5kZXggNTBhMmE2NTkwYTcxLi4y
MDE1YzM3MmIwZDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RzYi5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RzYi5oCkBAIC02LDYgKzYsOCBAQAog
I2lmbmRlZiBfSU5URUxfRFNCX0gKICNkZWZpbmUgX0lOVEVMX0RTQl9ICiAKKyNpbmNsdWRlICJp
OTE1X3JlZy5oIgorCiBzdHJ1Y3QgaW50ZWxfY3J0YzsKIHN0cnVjdCBpOTE1X3ZtYTsKIApAQCAt
MjMsOSArMjUsMTYgQEAgc3RydWN0IGludGVsX2RzYiB7CiAJdTMyICpjbWRfYnVmOwogCXUzMiBj
bWRfYnVmX2hlYWQ7CiAJc3RydWN0IGk5MTVfdm1hICp2bWE7CisKKwkvKgorCSAqIGZyZWVfcG9z
IHdpbGwgcG9pbnQgdGhlIGZpcnN0IGZyZWUgZW50cnkgcG9zaXRpb24KKwkgKiBhbmQgaGVscCBp
biBjYWxjdWxhdGluZyBjbWRfYnVmX3RhaWwuCisJICovCisJaW50IGZyZWVfcG9zOwogfTsKIAog
c3RydWN0IGludGVsX2RzYiAqCiBpbnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KTsKK3ZvaWQgaW50ZWxfZHNiX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsIGk5MTVf
cmVnX3QgcmVnLCB1MzIgdmFsKTsKIAogI2VuZGlmCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
