Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CA264FAA
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 02:39:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58E2989DA6;
	Thu, 11 Jul 2019 00:39:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FE3389C3B
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 00:38:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 17:38:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="193232385"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2019 17:38:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 17:38:27 -0700
Message-Id: <20190711003833.17420-15-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711003833.17420-1-lucas.demarchi@intel.com>
References: <20190711003833.17420-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 15/21] drm/i915/tgl: apply Display WA #1178 to fix
 type C dongles
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

QWRkIHBvcnQgQyB0byB3b3JrYXJvdW5kIHRvIGNvdmVyIFRpZ2VyIExha2UuCgpDYzogUm9kcmln
byBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2
aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkwNzA4MjMxNjI5LjkyOTYtMjItbHVjYXMuZGVtYXJj
aGlAaW50ZWwuY29tCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmMgfCAxMSArKysrKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCAgICAgICAgICAgICAgICAgICAgfCAgNCArKystCiAyIGZpbGVzIGNoYW5nZWQsIDExIGlu
c2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCA2NTljMDk1NGVhZjcuLmI1MjZl
YjZlYTJhZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMKQEAgLTQ1Myw2ICs0NTMsNyBAQCBpY2xfY29tYm9fcGh5X2F1eF9wb3dl
cl93ZWxsX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJaW50IHB3
X2lkeCA9IHBvd2VyX3dlbGwtPmRlc2MtPmhzdy5pZHg7CiAJZW51bSBwb3J0IHBvcnQgPSBJQ0xf
QVVYX1BXX1RPX1BPUlQocHdfaWR4KTsKIAl1MzIgdmFsOworCWludCB3YV9pZHhfbWF4OwogCiAJ
dmFsID0gSTkxNV9SRUFEKHJlZ3MtPmRyaXZlcik7CiAJSTkxNV9XUklURShyZWdzLT5kcml2ZXIs
IHZhbCB8IEhTV19QV1JfV0VMTF9DVExfUkVRKHB3X2lkeCkpOwpAQCAtNDYyLDkgKzQ2MywxMyBA
QCBpY2xfY29tYm9fcGh5X2F1eF9wb3dlcl93ZWxsX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsCiAKIAloc3dfd2FpdF9mb3JfcG93ZXJfd2VsbF9lbmFibGUoZGV2X3By
aXYsIHBvd2VyX3dlbGwpOwogCi0JLyogRGlzcGxheSBXQSAjMTE3ODogaWNsICovCi0JaWYgKElT
X0lDRUxBS0UoZGV2X3ByaXYpICYmCi0JICAgIHB3X2lkeCA+PSBJQ0xfUFdfQ1RMX0lEWF9BVVhf
QSAmJiBwd19pZHggPD0gSUNMX1BXX0NUTF9JRFhfQVVYX0IgJiYKKwkvKiBEaXNwbGF5IFdBICMx
MTc4OiBpY2wsIHRnbCAqLworCWlmIChJU19USUdFUkxBS0UoZGV2X3ByaXYpKQorCQl3YV9pZHhf
bWF4ID0gSUNMX1BXX0NUTF9JRFhfQVVYX0M7CisJZWxzZQorCQl3YV9pZHhfbWF4ID0gSUNMX1BX
X0NUTF9JRFhfQVVYX0I7CisKKwlpZiAocHdfaWR4ID49IElDTF9QV19DVExfSURYX0FVWF9BICYm
IHB3X2lkeCA8PSB3YV9pZHhfbWF4ICYmCiAJICAgICFpbnRlbF9iaW9zX2lzX3BvcnRfZWRwKGRl
dl9wcml2LCBwb3J0KSkgewogCQl2YWwgPSBJOTE1X1JFQUQoSUNMX0FVWF9BTkFPVlJEMShwd19p
ZHgpKTsKIAkJdmFsIHw9IElDTF9BVVhfQU5BT1ZSRDFfRU5BQkxFIHwgSUNMX0FVWF9BTkFPVlJE
MV9MRE9fQllQQVNTOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggNWNhNzRlY2EwNWE0Li5k
MDdlOTI2NzhjNDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtOTI0NCw5ICs5MjQ0LDEx
IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewogI2RlZmluZSBfSUNMX0FVWF9SRUdfSURYKHB3X2lk
eCkJKChwd19pZHgpIC0gSUNMX1BXX0NUTF9JRFhfQVVYX0EpCiAjZGVmaW5lIF9JQ0xfQVVYX0FO
QU9WUkQxX0EJCTB4MTYyMzk4CiAjZGVmaW5lIF9JQ0xfQVVYX0FOQU9WUkQxX0IJCTB4NkMzOTgK
KyNkZWZpbmUgX1RHTF9BVVhfQU5BT1ZSRDFfQwkJMHgxNjAzOTgKICNkZWZpbmUgSUNMX0FVWF9B
TkFPVlJEMShwd19pZHgpCV9NTUlPKF9QSUNLKF9JQ0xfQVVYX1JFR19JRFgocHdfaWR4KSwgXAog
CQkJCQkJICAgIF9JQ0xfQVVYX0FOQU9WUkQxX0EsIFwKLQkJCQkJCSAgICBfSUNMX0FVWF9BTkFP
VlJEMV9CKSkKKwkJCQkJCSAgICBfSUNMX0FVWF9BTkFPVlJEMV9CLCBcCisJCQkJCQkgICAgX1RH
TF9BVVhfQU5BT1ZSRDFfQykpCiAjZGVmaW5lICAgSUNMX0FVWF9BTkFPVlJEMV9MRE9fQllQQVNT
CSgxIDw8IDcpCiAjZGVmaW5lICAgSUNMX0FVWF9BTkFPVlJEMV9FTkFCTEUJKDEgPDwgMCkKIAot
LSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
