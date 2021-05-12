Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B95A37B4E4
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 06:22:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2446A6EB49;
	Wed, 12 May 2021 04:22:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E106E02D
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 04:21:54 +0000 (UTC)
IronPort-SDR: qqf2LmaAbNrEokqz+ODLvxWnfOp16PHdcQZMqpwqyz8voSAEodckFUB4mrg+DwP2v7XsbDniPm
 5BrXSIDFbjww==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="260869172"
X-IronPort-AV: E=Sophos;i="5.82,292,1613462400"; d="scan'208";a="260869172"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 21:21:52 -0700
IronPort-SDR: aoeTXkn1RnqglZsp2L8u4u3ssg7uInjIjKQB9Y8Q7/pHHeR6fRQXcBWSpPh3tu/uub47kVhgp9
 XWSPbW/VE47w==
X-IronPort-AV: E=Sophos;i="5.82,292,1613462400"; d="scan'208";a="409096201"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 21:21:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 May 2021 21:21:42 -0700
Message-Id: <20210512042144.2089071-6-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210512042144.2089071-1-matthew.d.roper@intel.com>
References: <20210512042144.2089071-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 5/7] drm/i915/xelpd: Add Wa_14011503030
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

Q2M6IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCA0ICsrKysKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICAgICAgIHwgMiArKwogMiBm
aWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCmluZGV4IGVjNTU2MTY4MTFhMi4uNTRj
NmQ2NTAxMWVlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYwpAQCAtNTg3Miw2ICs1ODcyLDEwIEBAIHN0YXRpYyB2b2lkIGljbF9k
aXNwbGF5X2NvcmVfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCSAg
ICAgIERDUFJfTUFTS19MUE1PREUgfCBEQ1BSX01BU0tfTUFYTEFURU5DWV9NRU1VUF9DTFI7CiAJ
CWludGVsX3VuY29yZV9ybXcoJmRldl9wcml2LT51bmNvcmUsIEdFTjExX0NISUNLRU5fRENQUl8y
LCAwLCB2YWwpOwogCX0KKworCS8qIFdhXzE0MDExNTAzMDMwOnhlbHBkICovCisJaWYgKERJU1BM
QVlfVkVSKGRldl9wcml2KSA+PSAxMykKKwkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFhFTFBE
X0RJU1BMQVlfRVJSX0ZBVEFMX01BU0ssIH4wKTsKIH0KIAogc3RhdGljIHZvaWQgaWNsX2Rpc3Bs
YXlfY29yZV91bmluaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKaW5kZXggOThkZWEyNjc3MDY4Li44NzFkODM5ZGZjYjggMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaApAQCAtNzc5MSw2ICs3NzkxLDggQEAgZW51bSB7CiAjZGVmaW5lICBH
RU44X0dUX0JDU19JUlEJCSgxIDw8IDEpCiAjZGVmaW5lICBHRU44X0dUX1JDU19JUlEJCSgxIDw8
IDApCiAKKyNkZWZpbmUgWEVMUERfRElTUExBWV9FUlJfRkFUQUxfTUFTSwlfTU1JTygweDQ0MjFj
KQorCiAjZGVmaW5lIEdFTjhfR1RfSVNSKHdoaWNoKSBfTU1JTygweDQ0MzAwICsgKDB4MTAgKiAo
d2hpY2gpKSkKICNkZWZpbmUgR0VOOF9HVF9JTVIod2hpY2gpIF9NTUlPKDB4NDQzMDQgKyAoMHgx
MCAqICh3aGljaCkpKQogI2RlZmluZSBHRU44X0dUX0lJUih3aGljaCkgX01NSU8oMHg0NDMwOCAr
ICgweDEwICogKHdoaWNoKSkpCi0tIAoyLjI1LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
