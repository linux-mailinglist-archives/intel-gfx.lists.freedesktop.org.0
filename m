Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E5D1DC3DE
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 02:38:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AA566E8E1;
	Thu, 21 May 2020 00:38:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB4F46E8CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 00:38:12 +0000 (UTC)
IronPort-SDR: dJf1fB4tsOY5dvSTgsfYTx3gSWoJ/4FqCKbgEqu5mjCq45F1R1eOUXv81tZgr1Uyv+pO4IFxea
 2WoVWBmaXWfg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 17:38:12 -0700
IronPort-SDR: wj6T7aXC6aYs8YsGkVhAwUkWucz/UXM+q4yjJY09HyTK0JUS4Cfz0vZsUPHT1qhG/Vir14g3KL
 o2WbOpQy3i3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="466720931"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 20 May 2020 17:38:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 17:37:50 -0700
Message-Id: <20200521003803.18936-25-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521003803.18936-1-lucas.demarchi@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 24/37] drm/i915/dg1: invert HPD pins
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
Cc: fernando.pacheco@intel.com, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2xpbnRvbiBBIFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+CgpIUEQg
cGlucyBhcmUgaW52ZXJ0ZWQgZm9yIERHMSBwbGF0Zm9ybS4KCkJzcGVjOiA0OTk1NgpDYzogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVy
IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDbGludG9uIEEgVGF5
bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUg
TWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9pcnEuYyB8IDQgKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8
IDQgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9pcnEuYwppbmRleCBkZjgyZDhhYTFhMjcuLmViYzgwZThiMTU5OSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jCkBAIC0zMTc3LDYgKzMxNzcsMTAgQEAgc3RhdGljIHZvaWQganNwX2hwZF9pcnFf
c2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiBzdGF0aWMgdm9pZCBk
ZzFfaHBkX2lycV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CisJ
aW50ZWxfZGVfcm13KGRldl9wcml2LCBTT1VUSF9DSElDS0VOMSwgMCwKKwkJICAgICBJTlZFUlRf
RERJQV9IUEQgfCBJTlZFUlRfRERJQl9IUEQgfAorCQkgICAgIElOVkVSVF9ERElDX0hQRCB8IElO
VkVSVF9ERElEX0hQRCk7CisKIAlpY3BfaHBkX2lycV9zZXR1cChkZXZfcHJpdiwKIAkJCSAgU0RF
X0RESV9NQVNLX0RHMSwgMCwKIAkJCSAgREcxX0RESV9IUERfRU5BQkxFX01BU0ssIDApOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggYTlkN2I5M2Q3OWNlLi5lMGJkOWUwMmMzZDEgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtODU5OSw2ICs4NTk5LDEwIEBAIGVudW0gewogI2RlZmlu
ZSBTT1VUSF9DSElDS0VOMQkJX01NSU8oMHhjMjAwMCkKICNkZWZpbmUgIEZESUFfUEhBU0VfU1lO
Q19TSElGVF9PVlIJMTkKICNkZWZpbmUgIEZESUFfUEhBU0VfU1lOQ19TSElGVF9FTgkxOAorI2Rl
ZmluZSAgSU5WRVJUX0RESURfSFBECQkoMSA8PCAxOCkKKyNkZWZpbmUgIElOVkVSVF9ERElDX0hQ
RAkJKDEgPDwgMTcpCisjZGVmaW5lICBJTlZFUlRfRERJQl9IUEQJCSgxIDw8IDE2KQorI2RlZmlu
ZSAgSU5WRVJUX0RESUFfSFBECQkoMSA8PCAxNSkKICNkZWZpbmUgIEZESV9QSEFTRV9TWU5DX09W
UihwaXBlKSAoMSA8PCAoRkRJQV9QSEFTRV9TWU5DX1NISUZUX09WUiAtICgocGlwZSkgKiAyKSkp
CiAjZGVmaW5lICBGRElfUEhBU0VfU1lOQ19FTihwaXBlKSAoMSA8PCAoRkRJQV9QSEFTRV9TWU5D
X1NISUZUX0VOIC0gKChwaXBlKSAqIDIpKSkKICNkZWZpbmUgIEZESV9CQ19CSUZVUkNBVElPTl9T
RUxFQ1QJKDEgPDwgMTIpCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
