Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D021380D56
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 17:37:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 149876EF38;
	Fri, 14 May 2021 15:37:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3526D6F384
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 15:37:22 +0000 (UTC)
IronPort-SDR: X7P/ipuqwqjJT6rF4SYS+jHh4JkaX2/mREacaTtqAyLvBVe8GhjUWcx1qq9bFfVa/Bisbsmize
 UKxNV+Oo5+Gw==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="200243939"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="200243939"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:20 -0700
IronPort-SDR: CgMEXCSrklZfp0vhlRYPq4M5BqFTfcnrkKhmrWEFD6UdDox/xIYh1id43VVixGH2f0Cb1QW9jn
 ELxGu9y0tBrw==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="610796599"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 08:37:11 -0700
Message-Id: <20210514153711.2359617-20-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210514153711.2359617-1-matthew.d.roper@intel.com>
References: <20210514153711.2359617-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 19/19] drm/i915/adl_p: Disable CCS on a-step
 (Wa_22011186057)
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpCdWZm
ZXIgY29tcHJlc3Npb24gaXMgbm90IHVzYWJsZSBpbiBBIHN0ZXBwaW5nLgoKQ2M6IE1hdHQgUm9w
ZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CkNjOiBBbnVzaGEgU3JpdmF0c2EgPGFudXNo
YS5zcml2YXRzYUBpbnRlbC5jb20+CkNjOiBDbGludG9uIEEgVGF5bG9yIDxjbGludG9uLmEudGF5
bG9yQGludGVsLmNvbT4KQ2M6IEp1aGEtUGVra2EgSGVpa2tpbMOkIDxqdWhhLXBla2thLmhlaWtr
aWxhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IENsaW50b24gVGF5bG9yIDxDbGludG9u
LkEuVGF5bG9yQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNy
aXZhdHNhQGludGVsLmNvbT4KLS0tCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2Fs
X3BsYW5lLmMgICAgfCAyMCArKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTkg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKaW5kZXggODQ0NDc0NGY0NDM3Li41OWUw
MzJmMzY4N2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3Vu
aXZlcnNhbF9wbGFuZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3Vu
aXZlcnNhbF9wbGFuZS5jCkBAIC0xOTksNiArMTk5LDEzIEBAIHN0YXRpYyBjb25zdCB1NjQgZ2Vu
MTJfcGxhbmVfZm9ybWF0X21vZGlmaWVyc19yY19jY3NbXSA9IHsKIAlEUk1fRk9STUFUX01PRF9J
TlZBTElECiB9OwogCitzdGF0aWMgY29uc3QgdTY0IGFkbHBfc3RlcF9hX3BsYW5lX2Zvcm1hdF9t
b2RpZmllcnNbXSA9IHsKKwlJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRCwKKwlJOTE1X0ZPUk1BVF9N
T0RfWF9USUxFRCwKKwlEUk1fRk9STUFUX01PRF9MSU5FQVIsCisJRFJNX0ZPUk1BVF9NT0RfSU5W
QUxJRAorfTsKKwogaW50IHNrbF9mb3JtYXRfdG9fZm91cmNjKGludCBmb3JtYXQsIGJvb2wgcmdi
X29yZGVyLCBib29sIGFscGhhKQogewogCXN3aXRjaCAoZm9ybWF0KSB7CkBAIC0xODc5LDYgKzE4
ODYsMTAgQEAgc3RhdGljIGJvb2wgZ2VuMTJfcGxhbmVfc3VwcG9ydHNfbWNfY2NzKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkgICAgSVNfVEdMX0RJU1BMQVlfU1RFUChkZXZf
cHJpdiwgU1RFUF9BMCwgU1RFUF9DMCkpCiAJCXJldHVybiBmYWxzZTsKIAorCS8qIFdhXzIyMDEx
MTg2MDU3ICovCisJaWYgKElTX0FETFBfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLCBT
VEVQX0EwKSkKKwkJcmV0dXJuIGZhbHNlOworCiAJcmV0dXJuIHBsYW5lX2lkIDwgUExBTkVfU1BS
SVRFNDsKIH0KIApAQCAtMTg5Niw4ICsxOTA3LDEyIEBAIHN0YXRpYyBib29sIGdlbjEyX3BsYW5l
X2Zvcm1hdF9tb2Rfc3VwcG9ydGVkKHN0cnVjdCBkcm1fcGxhbmUgKl9wbGFuZSwKIAljYXNlIERS
TV9GT1JNQVRfTU9EX0xJTkVBUjoKIAljYXNlIEk5MTVfRk9STUFUX01PRF9YX1RJTEVEOgogCWNh
c2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRUQ6CisJCWJyZWFrOwogCWNhc2UgSTkxNV9GT1JNQVRf
TU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTOgogCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURf
R0VOMTJfUkNfQ0NTX0NDOgorCQkvKiBXYV8yMjAxMTE4NjA1NyAqLworCQlpZiAoSVNfQURMUF9E
SVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQTApKQorCQkJcmV0dXJuIGZhbHNl
OwogCQlicmVhazsKIAlkZWZhdWx0OgogCQlyZXR1cm4gZmFsc2U7CkBAIC0xOTUyLDcgKzE5Njcs
MTAgQEAgc3RhdGljIGJvb2wgZ2VuMTJfcGxhbmVfZm9ybWF0X21vZF9zdXBwb3J0ZWQoc3RydWN0
IGRybV9wbGFuZSAqX3BsYW5lLAogc3RhdGljIGNvbnN0IHU2NCAqZ2VuMTJfZ2V0X3BsYW5lX21v
ZGlmaWVycyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQkJCSAgICBlbnVt
IHBsYW5lX2lkIHBsYW5lX2lkKQogewotCWlmIChnZW4xMl9wbGFuZV9zdXBwb3J0c19tY19jY3Mo
ZGV2X3ByaXYsIHBsYW5lX2lkKSkKKwkvKiBXYV8yMjAxMTE4NjA1NyAqLworCWlmIChJU19BRExQ
X0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9BMCkpCisJCXJldHVybiBhZGxw
X3N0ZXBfYV9wbGFuZV9mb3JtYXRfbW9kaWZpZXJzOworCWVsc2UgaWYgKGdlbjEyX3BsYW5lX3N1
cHBvcnRzX21jX2NjcyhkZXZfcHJpdiwgcGxhbmVfaWQpKQogCQlyZXR1cm4gZ2VuMTJfcGxhbmVf
Zm9ybWF0X21vZGlmaWVyc19tY19jY3M7CiAJZWxzZQogCQlyZXR1cm4gZ2VuMTJfcGxhbmVfZm9y
bWF0X21vZGlmaWVyc19yY19jY3M7Ci0tIAoyLjI1LjQKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
