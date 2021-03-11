Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A94733808B
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 23:37:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9EC56EEBA;
	Thu, 11 Mar 2021 22:36:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 875916EEA0
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 22:36:49 +0000 (UTC)
IronPort-SDR: amisNApYglfIg0w+ZcRcj9P/5KObs6XI2kb9UyOXttnOQksycKJb0U7Ejpk8qHxGKZAAItol2L
 1jCGbnwct+gw==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="175865732"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="175865732"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:48 -0800
IronPort-SDR: sQxVUyZnWMWgsSbuQijnYA8/bO0WAFD1fE+q7EaXjvOqCd9ho8xdHxDC7JAierf21S80rtezK2
 FSUuj4h+oklA==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438852810"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:46 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:36:30 -0800
Message-Id: <20210311223632.3191939-55-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311223632.3191939-1-matthew.d.roper@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 54/56] drm/i915/display/adl_p: Remove CCS support
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
Cc: =?UTF-8?q?Juha-Pekka=20Heikkil=C3=A4?= <juha-pekka.heikkila@intel.com>
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
LnJvcGVyQGludGVsLmNvbT4KLS0tCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2Fs
X3BsYW5lLmMgICAgfCAyMCArKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTkg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKaW5kZXggY2MzNjkxN2I0NTljLi5jZGQ2
MWMxMWI5YmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3Vu
aXZlcnNhbF9wbGFuZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3Vu
aXZlcnNhbF9wbGFuZS5jCkBAIC0xOTcsNiArMTk3LDEzIEBAIHN0YXRpYyBjb25zdCB1NjQgZ2Vu
MTJfcGxhbmVfZm9ybWF0X21vZGlmaWVyc19yY19jY3NbXSA9IHsKIAlEUk1fRk9STUFUX01PRF9J
TlZBTElECiB9OwogCitzdGF0aWMgY29uc3QgdTY0IGFkbHBfc3RlcF9hX3BsYW5lX2Zvcm1hdF9t
b2RpZmllcnNbXSA9IHsKKwlJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRCwKKwlJOTE1X0ZPUk1BVF9N
T0RfWF9USUxFRCwKKwlEUk1fRk9STUFUX01PRF9MSU5FQVIsCisJRFJNX0ZPUk1BVF9NT0RfSU5W
QUxJRAorfTsKKwogaW50IHNrbF9mb3JtYXRfdG9fZm91cmNjKGludCBmb3JtYXQsIGJvb2wgcmdi
X29yZGVyLCBib29sIGFscGhhKQogewogCXN3aXRjaCAoZm9ybWF0KSB7CkBAIC0xODg1LDYgKzE4
OTIsMTAgQEAgc3RhdGljIGJvb2wgZ2VuMTJfcGxhbmVfc3VwcG9ydHNfbWNfY2NzKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkgICAgSVNfVEdMX0RJU1BfU1RFUFBJTkcoZGV2
X3ByaXYsIFNURVBfQTAsIFNURVBfQzApKQogCQlyZXR1cm4gZmFsc2U7CiAKKwkvKiBXYV8yMjAx
MTE4NjA1NyAqLworCWlmIChJU19BRExQX1JFVklEKGRldl9wcml2LCBBRExQX1JFVklEX0EwLCBB
RExQX1JFVklEX0EwKSkKKwkJcmV0dXJuIGZhbHNlOworCiAJcmV0dXJuIHBsYW5lX2lkIDwgUExB
TkVfU1BSSVRFNDsKIH0KIApAQCAtMTkwMiw4ICsxOTEzLDEyIEBAIHN0YXRpYyBib29sIGdlbjEy
X3BsYW5lX2Zvcm1hdF9tb2Rfc3VwcG9ydGVkKHN0cnVjdCBkcm1fcGxhbmUgKl9wbGFuZSwKIAlj
YXNlIERSTV9GT1JNQVRfTU9EX0xJTkVBUjoKIAljYXNlIEk5MTVfRk9STUFUX01PRF9YX1RJTEVE
OgogCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRUQ6CisJCWJyZWFrOwogCWNhc2UgSTkxNV9G
T1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTOgogCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lf
VElMRURfR0VOMTJfUkNfQ0NTX0NDOgorCQkvKiBXYV8yMjAxMTE4NjA1NyAqLworCQlpZiAoSVNf
QURMUF9SRVZJRChkZXZfcHJpdiwgQURMUF9SRVZJRF9BMCwgQURMUF9SRVZJRF9BMCkpCisJCQly
ZXR1cm4gZmFsc2U7CiAJCWJyZWFrOwogCWRlZmF1bHQ6CiAJCXJldHVybiBmYWxzZTsKQEAgLTE5
NTgsNyArMTk3MywxMCBAQCBzdGF0aWMgYm9vbCBnZW4xMl9wbGFuZV9mb3JtYXRfbW9kX3N1cHBv
cnRlZChzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsCiBzdGF0aWMgY29uc3QgdTY0ICpnZW4xMl9n
ZXRfcGxhbmVfbW9kaWZpZXJzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJ
CQkJICAgIGVudW0gcGxhbmVfaWQgcGxhbmVfaWQpCiB7Ci0JaWYgKGdlbjEyX3BsYW5lX3N1cHBv
cnRzX21jX2NjcyhkZXZfcHJpdiwgcGxhbmVfaWQpKQorCS8qIFdhXzIyMDExMTg2MDU3ICovCisJ
aWYgKElTX0FETFBfUkVWSUQoZGV2X3ByaXYsIEFETFBfUkVWSURfQTAsIEFETFBfUkVWSURfQTAp
KQorCQlyZXR1cm4gYWRscF9zdGVwX2FfcGxhbmVfZm9ybWF0X21vZGlmaWVyczsKKwllbHNlIGlm
IChnZW4xMl9wbGFuZV9zdXBwb3J0c19tY19jY3MoZGV2X3ByaXYsIHBsYW5lX2lkKSkKIAkJcmV0
dXJuIGdlbjEyX3BsYW5lX2Zvcm1hdF9tb2RpZmllcnNfbWNfY2NzOwogCWVsc2UKIAkJcmV0dXJu
IGdlbjEyX3BsYW5lX2Zvcm1hdF9tb2RpZmllcnNfcmNfY2NzOwotLSAKMi4yNS40CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
