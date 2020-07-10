Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5F421B46C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 13:59:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A8FD6EBF6;
	Fri, 10 Jul 2020 11:59:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78B4F6EBEF
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 11:59:41 +0000 (UTC)
IronPort-SDR: mYpdS5L6+ptpkJzEh65JlYpyziuKDUHdeThZ6zCyeCKGx0PN8B5u07/bEVmP7O10yLHboXqe4+
 IL5dx6F5olPQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="149653684"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="149653684"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:41 -0700
IronPort-SDR: AnHRgP0I8aln4SrdHfX5LvenmTT4Sb6nRrDVWRMFfBW1m42QCmXEKWD8A7ydMjthaTkndItB7J
 oCn/jYfkJYWw==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257457"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:38 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:13 +0100
Message-Id: <20200710115757.290984-17-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 16/60] drm/i915/dg1: invert HPD pins
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
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
NV9pcnEuYwppbmRleCBlOGJkYzUyYzk0YmIuLjYyMjUzOTBlZGJiNCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jCkBAIC0zMTgxLDYgKzMxODEsMTAgQEAgc3RhdGljIHZvaWQganNwX2hwZF9pcnFf
c2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiBzdGF0aWMgdm9pZCBk
ZzFfaHBkX2lycV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CisJ
aW50ZWxfZGVfcm13KGRldl9wcml2LCBTT1VUSF9DSElDS0VOMSwgMCwKKwkJICAgICBJTlZFUlRf
RERJQV9IUEQgfCBJTlZFUlRfRERJQl9IUEQgfAorCQkgICAgIElOVkVSVF9ERElDX0hQRCB8IElO
VkVSVF9ERElEX0hQRCk7CisKIAlpY3BfaHBkX2lycV9zZXR1cChkZXZfcHJpdiwKIAkJCSAgU0RF
X0RESV9NQVNLX0RHMSwgMCwKIAkJCSAgREcxX0RESV9IUERfRU5BQkxFX01BU0ssIDApOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggNjE0YjJkYTRlNmI2Li4xYWU4ZDg1NDJiNjYgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtODY5Nyw2ICs4Njk3LDEwIEBAIGVudW0gewogI2RlZmlu
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
