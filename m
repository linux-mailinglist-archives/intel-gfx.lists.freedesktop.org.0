Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8781CA3729
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 14:53:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA0E16E328;
	Fri, 30 Aug 2019 12:53:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 510C96E323
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 12:53:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 05:53:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="198029818"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga001.fm.intel.com with ESMTP; 30 Aug 2019 05:53:24 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 18:15:29 +0530
Message-Id: <20190830124533.26573-7-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190830124533.26573-1-animesh.manna@intel.com>
References: <20190830124533.26573-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 06/10] drm/i915/dsb: functions to
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
dGluZyBjb250cm9sIHJlZ2lzdGVyLiAoU2hhc2hhbmspCgpDYzogTWljaGVsIFRoaWVycnkgPG1p
Y2hlbC50aGllcnJ5QGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCA0MiArKysrKysrKysrKysrKysr
KysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAgMSAr
CiAyIGZpbGVzIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kc2IuYwppbmRleCAxMDIyYjU3MjBkMTcuLjQ4NTc0OGU2M2E5NCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCkBAIC0yNiw2ICsyNiw0OCBA
QCBzdGF0aWMgaW5saW5lIGJvb2wgaXNfZHNiX2J1c3koc3RydWN0IGludGVsX2RzYiAqZHNiKQog
CXJldHVybiBEU0JfU1RBVFVTICYgSTkxNV9SRUFEKERTQl9DVFJMKHBpcGUsIGRzYi0+aWQpKTsK
IH0KIAorc3RhdGljIGlubGluZSBib29sIGludGVsX2RzYl9lbmFibGVfZW5naW5lKHN0cnVjdCBp
bnRlbF9kc2IgKmRzYikKK3sKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGRzYi0+Y3J0YzsK
KwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2Uu
ZGV2KTsKKwllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7CisJdTMyIGRzYl9jdHJsOworCisJ
ZHNiX2N0cmwgPSBJOTE1X1JFQUQoRFNCX0NUUkwocGlwZSwgZHNiLT5pZCkpOworCisJaWYgKERT
Ql9TVEFUVVMgJiBkc2JfY3RybCkgeworCQlEUk1fREVCVUdfS01TKCJEU0IgZW5naW5lIGlzIGJ1
c3kuXG4iKTsKKwkJcmV0dXJuIGZhbHNlOworCX0KKworCWRzYl9jdHJsIHw9IERTQl9FTkFCTEU7
CisJSTkxNV9XUklURShEU0JfQ1RSTChwaXBlLCBkc2ItPmlkKSwgZHNiX2N0cmwpOworCisJUE9T
VElOR19SRUFEKERTQl9DVFJMKHBpcGUsIGRzYi0+aWQpKTsKKwlyZXR1cm4gdHJ1ZTsKK30KKwor
c3RhdGljIGlubGluZSBib29sIGludGVsX2RzYl9kaXNhYmxlX2VuZ2luZShzdHJ1Y3QgaW50ZWxf
ZHNiICpkc2IpCit7CisJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSBkc2ItPmNydGM7CisJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7
CisJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOworCXUzMiBkc2JfY3RybDsKKworCWRzYl9j
dHJsID0gSTkxNV9SRUFEKERTQl9DVFJMKHBpcGUsIGRzYi0+aWQpKTsKKworCWlmIChEU0JfU1RB
VFVTICYgZHNiX2N0cmwpIHsKKwkJRFJNX0RFQlVHX0tNUygiRFNCIGVuZ2luZSBpcyBidXN5Llxu
Iik7CisJCXJldHVybiBmYWxzZTsKKwl9CisKKwlkc2JfY3RybCAmPSB+RFNCX0VOQUJMRTsKKwlJ
OTE1X1dSSVRFKERTQl9DVFJMKHBpcGUsIGRzYi0+aWQpLCBkc2JfY3RybCk7CisKKwlQT1NUSU5H
X1JFQUQoRFNCX0NUUkwocGlwZSwgZHNiLT5pZCkpOworCXJldHVybiB0cnVlOworfQorCiBzdHJ1
Y3QgaW50ZWxfZHNiICoKIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCiB7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCAzZTM1ZDdhNGQyYzQuLjA2N2Y4NmQzYTlkZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0xMTY3NSw2ICsxMTY3NSw3IEBAIGVudW0gc2ts
X3Bvd2VyX2dhdGUgewogI2RlZmluZSBEU0JTTF9JTlNUQU5DRShwaXBlLCBpZCkJKF9EU0JTTF9J
TlNUQU5DRV9CQVNFICsgXAogCQkJCQkgKHBpcGUpICogMHgxMDAwICsgKGlkKSAqIDEwMCkKICNk
ZWZpbmUgRFNCX0NUUkwocGlwZSwgaWQpCQlfTU1JTyhEU0JTTF9JTlNUQU5DRShwaXBlLCBpZCkg
KyAweDgpCisjZGVmaW5lICAgRFNCX0VOQUJMRQkJCSgxIDw8IDMxKQogI2RlZmluZSAgIERTQl9T
VEFUVVMJCQkoMSA8PCAwKQogCiAjZW5kaWYgLyogX0k5MTVfUkVHX0hfICovCi0tIAoyLjIyLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
