Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EFC5B518
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 08:34:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D5B089F69;
	Mon,  1 Jul 2019 06:34:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E91A89F69
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 06:34:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jun 2019 23:34:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,437,1557212400"; d="scan'208";a="153988740"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga007.jf.intel.com with ESMTP; 30 Jun 2019 23:34:34 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 11:56:28 +0530
Message-Id: <20190701062632.456-12-animesh.manna@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701062632.456-1-animesh.manna@intel.com>
References: <20190701062632.456-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/15] drm/i915/dsb: function to destroy DSB
 context.
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

RnJlZWQgdGhlIGdlbSBvYmplY3QgYWZ0ZXIgY29tcGxldGlvbiBvZiBkc2Igd29ya2xvYWQuCgpD
YzogU2hhc2hhbmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPgpDYzogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52
aXZpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5u
YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNiLmMgfCAxNiAr
KysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2IuaCB8ICAxICsK
IDIgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RzYi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNi
LmMKaW5kZXggMDI3MGY0ZmVmNjAwLi5kZGRhYWUyN2Q3YjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RzYi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RzYi5jCkBAIC0yMzMsMyArMjMzLDE5IEBAIHZvaWQgaW50ZWxfZHNiX2NvbW1pdChzdHJ1Y3Qg
aW50ZWxfZHNiICpkc2IpCiAJZHNiLT5mcmVlX3BvcyA9IDA7CiAJaW50ZWxfZHNiX2Rpc2FibGVf
ZW5naW5lKGRzYik7CiB9CisKK3ZvaWQgaW50ZWxfZHNiX3B1dChzdHJ1Y3QgaW50ZWxfZHNiICpk
c2IpCit7CisJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSBkc2ItPmNydGM7CisJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKKwlzdHJ1Y3Qg
aTkxNV92bWEgKnZtYSA9IGRzYi0+dm1hOworCisJaWYgKGRzYi0+Y21kX2J1ZikgeworCQltdXRl
eF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwkJY3J0Yy0+ZHNiX2luX3VzZS0tOwor
CQlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKHZtYS0+b2JqKTsKKwkJaTkxNV92bWFfdW5waW5f
YW5kX3JlbGVhc2UoJnZtYSwgMCk7CisJCWRzYi0+Y21kX2J1ZiA9IE5VTEw7CisJCW11dGV4X3Vu
bG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CisJfQorfQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNiLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
c2IuaAppbmRleCA3MzMwYWRkM2M5NmYuLjdiOTRmZDliYzA2NyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNiLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZHNiLmgKQEAgLTQzLDUgKzQzLDYgQEAgc3RydWN0IGludGVsX2RzYiAqCiBpbnRlbF9kc2Jf
Z2V0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsKIHZvaWQgaW50ZWxfZHNiX3JlZ193cml0ZShz
dHJ1Y3QgaW50ZWxfZHNiICpkc2IsIGk5MTVfcmVnX3QgcmVnLCB1MzIgdmFsKTsKIHZvaWQgaW50
ZWxfZHNiX2NvbW1pdChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpOwordm9pZCBpbnRlbF9kc2JfcHV0
KHN0cnVjdCBpbnRlbF9kc2IgKmRzYik7CiAKICNlbmRpZgotLSAKMi4yMS4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
