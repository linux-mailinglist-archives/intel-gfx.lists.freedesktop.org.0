Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6430D62C85
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 01:17:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 902D189FBC;
	Mon,  8 Jul 2019 23:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D53B89FCA
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 23:16:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="316859639"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2019 16:16:57 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 16:16:20 -0700
Message-Id: <20190708231629.9296-17-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190708231629.9296-1-lucas.demarchi@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 16/25] drm/i915/tgl: port to ddc pin mapping
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

RnJvbTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4KCkNyZWF0ZSBhIGhl
bHBlciBmdW5jdGlvbiB0byBnZXQgZGRjIHBpbiBhY2NvcmRpbmcgdG8gcG9ydCBudW1iZXIuCgpD
YzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBNYWhlc2ggS3VtYXIgPG1haGVzaDEua3VtYXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8IDE2ICsrKysrKysrKysrKysrKy0K
IDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwppbmRleCAwZWJlYzY5YmJiZmMuLjNi
MzNlNzYyNmQ3YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9oZG1pLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMK
QEAgLTI5ODEsNiArMjk4MSwxOCBAQCBzdGF0aWMgdTggbWNjX3BvcnRfdG9fZGRjX3BpbihzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0KQogCXJldHVybiBk
ZGNfcGluOwogfQogCitzdGF0aWMgdTggdGdwX3BvcnRfdG9fZGRjX3BpbihzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCisJCQkgICAgICBlbnVtIHBvcnQgcG9ydCkKK3sKKwlpZiAo
aW50ZWxfcG9ydF9pc19jb21ib3BoeShkZXZfcHJpdiwgcG9ydCkpCisJCXJldHVybiBHTUJVU19Q
SU5fMV9CWFQgKyBwb3J0OworCWVsc2UgaWYgKGludGVsX3BvcnRfaXNfdGMoZGV2X3ByaXYsIHBv
cnQpKQorCQlyZXR1cm4gR01CVVNfUElOXzlfVEMxX0lDUCArIGludGVsX3BvcnRfdG9fdGMoZGV2
X3ByaXYsIHBvcnQpOworCisJV0FSTigxLCAiVW5rbm93biBwb3J0OiVjXG4iLCBwb3J0X25hbWUo
cG9ydCkpOworCXJldHVybiBHTUJVU19QSU5fMl9CWFQ7Cit9CisKIHN0YXRpYyB1OCBnNHhfcG9y
dF90b19kZGNfcGluKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCSAgICAg
IGVudW0gcG9ydCBwb3J0KQogewpAQCAtMzAxNyw3ICszMDI5LDkgQEAgc3RhdGljIHU4IGludGVs
X2hkbWlfZGRjX3BpbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCXJldHVy
biBpbmZvLT5hbHRlcm5hdGVfZGRjX3BpbjsKIAl9CiAKLQlpZiAoSEFTX1BDSF9NQ0MoZGV2X3By
aXYpKQorCWlmIChIQVNfUENIX1RHUChkZXZfcHJpdikpCisJCWRkY19waW4gPSB0Z3BfcG9ydF90
b19kZGNfcGluKGRldl9wcml2LCBwb3J0KTsKKwllbHNlIGlmIChIQVNfUENIX01DQyhkZXZfcHJp
dikpCiAJCWRkY19waW4gPSBtY2NfcG9ydF90b19kZGNfcGluKGRldl9wcml2LCBwb3J0KTsKIAll
bHNlIGlmIChIQVNfUENIX0lDUChkZXZfcHJpdikpCiAJCWRkY19waW4gPSBpY2xfcG9ydF90b19k
ZGNfcGluKGRldl9wcml2LCBwb3J0KTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
