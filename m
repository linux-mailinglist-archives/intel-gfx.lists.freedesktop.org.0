Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 808D0B07B7
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 06:15:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C644A6EC0C;
	Thu, 12 Sep 2019 04:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3B8F6E02C
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 19:19:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 12:19:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,494,1559545200"; d="scan'208";a="209767747"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga004.fm.intel.com with ESMTP; 11 Sep 2019 12:19:41 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Sep 2019 00:41:29 +0530
Message-Id: <20190911191133.23383-7-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190911191133.23383-1-animesh.manna@intel.com>
References: <20190911191133.23383-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 06/10] drm/i915/dsb: functions to
 enable/disable DSB engine.
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RFNCIHdpbGwgYmUgdXNlZCBmb3IgcGVyZm9ybWFuY2UgaW1wcm92ZW1lbnQgZm9yIHNvbWUgc3Bl
Y2lhbCBzY2VuYXJpby4KRFNCIGVuZ2luZSB3aWxsIGJlIGVuYWJsZWQgYmFzZWQgb24gbmVlZCBh
bmQgYWZ0ZXIgY29tcGxldGlvbiBvZiBpdHMgd29yawp3aWxsIGJlIGRpc2FibGVkLiBBcGkgYWRk
ZWQgZm9yIGVuYWJsZS9kaXNhYmxlIG9wZXJhdGlvbiBieSB1c2luZyBEU0JfQ1RSTApyZWdpc3Rl
ci4KCnYxOiBJbml0aWFsIHZlcnNpb24uCnYyOiBQT1NUSU5HX1JFQUQgYWRkZWQgYWZ0ZXIgd3Jp
dGluZyBjb250cm9sIHJlZ2lzdGVyLiAoU2hhc2hhbmspCnYzOiBjb3NtZXRpYyBjaGFuZ2VzIGRv
bmUuIChTaGFzaGFuaykKCkNjOiBNaWNoZWwgVGhpZXJyeSA8bWljaGVsLnRoaWVycnlAaW50ZWwu
Y29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28g
Vml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hh
bmsuc2hhcm1hQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVz
aC5tYW5uYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kc2IuYyB8IDQwICsrKysrKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaCAgICAgICAgICB8ICAxICsKIDIgZmlsZXMgY2hhbmdlZCwgNDEgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCmluZGV4IGIx
ZGEyYjA2MjYzYS4uMmIwZmZjMGFmYjc0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RzYi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNiLmMKQEAgLTI2LDYgKzI2LDQ2IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpc19kc2Jf
YnVzeShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpCiAJcmV0dXJuIERTQl9TVEFUVVMgJiBJOTE1X1JF
QUQoRFNCX0NUUkwocGlwZSwgZHNiLT5pZCkpOwogfQogCitzdGF0aWMgaW5saW5lIGJvb2wgaW50
ZWxfZHNiX2VuYWJsZV9lbmdpbmUoc3RydWN0IGludGVsX2RzYiAqZHNiKQoreworCXN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjID0gY29udGFpbmVyX29mKGRzYiwgdHlwZW9mKCpjcnRjKSwgZHNiKTsK
KwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2Uu
ZGV2KTsKKwllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7CisJdTMyIGRzYl9jdHJsOworCisJ
ZHNiX2N0cmwgPSBJOTE1X1JFQUQoRFNCX0NUUkwocGlwZSwgZHNiLT5pZCkpOworCWlmIChEU0Jf
U1RBVFVTICYgZHNiX2N0cmwpIHsKKwkJRFJNX0RFQlVHX0tNUygiRFNCIGVuZ2luZSBpcyBidXN5
LlxuIik7CisJCXJldHVybiBmYWxzZTsKKwl9CisKKwlkc2JfY3RybCB8PSBEU0JfRU5BQkxFOwor
CUk5MTVfV1JJVEUoRFNCX0NUUkwocGlwZSwgZHNiLT5pZCksIGRzYl9jdHJsKTsKKworCVBPU1RJ
TkdfUkVBRChEU0JfQ1RSTChwaXBlLCBkc2ItPmlkKSk7CisJcmV0dXJuIHRydWU7Cit9CisKK3N0
YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9kc2JfZGlzYWJsZV9lbmdpbmUoc3RydWN0IGludGVsX2Rz
YiAqZHNiKQoreworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gY29udGFpbmVyX29mKGRzYiwg
dHlwZW9mKCpjcnRjKSwgZHNiKTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKKwllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7
CisJdTMyIGRzYl9jdHJsOworCisJZHNiX2N0cmwgPSBJOTE1X1JFQUQoRFNCX0NUUkwocGlwZSwg
ZHNiLT5pZCkpOworCWlmIChEU0JfU1RBVFVTICYgZHNiX2N0cmwpIHsKKwkJRFJNX0RFQlVHX0tN
UygiRFNCIGVuZ2luZSBpcyBidXN5LlxuIik7CisJCXJldHVybiBmYWxzZTsKKwl9CisKKwlkc2Jf
Y3RybCAmPSB+RFNCX0VOQUJMRTsKKwlJOTE1X1dSSVRFKERTQl9DVFJMKHBpcGUsIGRzYi0+aWQp
LCBkc2JfY3RybCk7CisKKwlQT1NUSU5HX1JFQUQoRFNCX0NUUkwocGlwZSwgZHNiLT5pZCkpOwor
CXJldHVybiB0cnVlOworfQorCiBzdHJ1Y3QgaW50ZWxfZHNiICoKIGludGVsX2RzYl9nZXQoc3Ry
dWN0IGludGVsX2NydGMgKmNydGMpCiB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA5MTg4
YTBiNTM1MzguLjJkYmFhNDlmNWM3NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0xMTY4
OCw2ICsxMTY4OCw3IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewogI2RlZmluZSBEU0JTTF9JTlNU
QU5DRShwaXBlLCBpZCkJKF9EU0JTTF9JTlNUQU5DRV9CQVNFICsgXAogCQkJCQkgKHBpcGUpICog
MHgxMDAwICsgKGlkKSAqIDEwMCkKICNkZWZpbmUgRFNCX0NUUkwocGlwZSwgaWQpCQlfTU1JTyhE
U0JTTF9JTlNUQU5DRShwaXBlLCBpZCkgKyAweDgpCisjZGVmaW5lICAgRFNCX0VOQUJMRQkJCSgx
IDw8IDMxKQogI2RlZmluZSAgIERTQl9TVEFUVVMJCQkoMSA8PCAwKQogCiAjZW5kaWYgLyogX0k5
MTVfUkVHX0hfICovCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
