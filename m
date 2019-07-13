Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 449746776C
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 03:09:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C473B6E3B4;
	Sat, 13 Jul 2019 01:09:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E36466E3AC
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 01:09:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 18:09:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,484,1557212400"; d="scan'208";a="341850969"
Received: from dhoyan-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.252.197.100])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2019 18:09:47 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 18:09:40 -0700
Message-Id: <20190713010940.17711-23-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190713010940.17711-1-lucas.demarchi@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 22/22] drm/i915/mst: Do not hardcoded the crtcs
 that encoder can connect
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpUaWdl
ciBMYWtlIGhhcyB1cCB0byA0IHBpcGVzIHNvIHRoZSBtYXNrIHdvdWxkIG5lZWQgdG8gYmUgMHhm
IGluc3RlYWQgb2YKMHg3LiBEbyBub3QgaGFyZGNvZGUgdGhlIG1hc2sgc28gaXQgYWxsb3dzIHRo
ZSBmYWtlIE1TVCBlbmNvZGVycyB0bwpjb25uZWN0IHRvIGFsbCBwaXBlcyBubyBtYXR0ZXIgaG93
IG1hbnkgdGhlIHBsYXRmb3JtIGhhcy4KCkl0ZXJhdGluZyBvdmVyIGFsbCBwaXBlcyB0byBrZWVw
IGNvbnNpc3RlbnQgd2l0aCBpbnRlbF9kZGlfaW5pdCgpLgoKQ2M6IEx1Y2FzIERlIE1hcmNoaSA8
bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8
bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbXN0LmMgfCA1ICsrKystCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9tc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbXN0LmMKaW5kZXggNjA2NTJlYmJkZjYxLi4xYjc5YjZiZWZhOTIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwpAQCAtNTg2LDYgKzU4Niw4IEBAIGlu
dGVsX2RwX2NyZWF0ZV9mYWtlX21zdF9lbmNvZGVyKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQg
KmludGVsX2RpZ19wb3J0LCBlbnVtCiAJc3RydWN0IGludGVsX2RwX21zdF9lbmNvZGVyICppbnRl
bF9tc3Q7CiAJc3RydWN0IGludGVsX2VuY29kZXIgKmludGVsX2VuY29kZXI7CiAJc3RydWN0IGRy
bV9kZXZpY2UgKmRldiA9IGludGVsX2RpZ19wb3J0LT5iYXNlLmJhc2UuZGV2OworCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKKwllbnVtIHBpcGUgcGlw
ZV9pdGVyOwogCiAJaW50ZWxfbXN0ID0ga3phbGxvYyhzaXplb2YoKmludGVsX21zdCksIEdGUF9L
RVJORUwpOwogCkBAIC02MDIsOCArNjA0LDkgQEAgaW50ZWxfZHBfY3JlYXRlX2Zha2VfbXN0X2Vu
Y29kZXIoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQsIGVudW0KIAlp
bnRlbF9lbmNvZGVyLT50eXBlID0gSU5URUxfT1VUUFVUX0RQX01TVDsKIAlpbnRlbF9lbmNvZGVy
LT5wb3dlcl9kb21haW4gPSBpbnRlbF9kaWdfcG9ydC0+YmFzZS5wb3dlcl9kb21haW47CiAJaW50
ZWxfZW5jb2Rlci0+cG9ydCA9IGludGVsX2RpZ19wb3J0LT5iYXNlLnBvcnQ7Ci0JaW50ZWxfZW5j
b2Rlci0+Y3J0Y19tYXNrID0gMHg3OwogCWludGVsX2VuY29kZXItPmNsb25lYWJsZSA9IDA7CisJ
Zm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcGlwZV9pdGVyKQorCQlpbnRlbF9lbmNvZGVyLT5jcnRj
X21hc2sgfD0gQklUKHBpcGVfaXRlcik7CiAKIAlpbnRlbF9lbmNvZGVyLT5jb21wdXRlX2NvbmZp
ZyA9IGludGVsX2RwX21zdF9jb21wdXRlX2NvbmZpZzsKIAlpbnRlbF9lbmNvZGVyLT5kaXNhYmxl
ID0gaW50ZWxfbXN0X2Rpc2FibGVfZHA7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
