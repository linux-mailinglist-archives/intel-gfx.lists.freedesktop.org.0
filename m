Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E52F7349
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 12:41:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED0386E8C8;
	Mon, 11 Nov 2019 11:41:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AC9A6E8C5
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 11:41:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 03:41:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="206718552"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga003.jf.intel.com with ESMTP; 11 Nov 2019 03:41:18 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 16:40:28 +0530
Message-Id: <20191111111029.9126-9-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20191111111029.9126-1-vandita.kulkarni@intel.com>
References: <20191111111029.9126-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC-v2 8/9] drm/i915/dsi: Add TE handler for dsi cmd
 mode.
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
Cc: jani.nikula@intel.com, --cc=uma.shankar@intel.com, ville.syrjala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gY2FzZSBvZiBkdWFsIGxpbmssIHdlIGdldCB0aGUgVEUgb24gc2xhdmUuClNvIGNsZWFyIHRo
ZSBURSBvbiBzbGF2ZSBEU0kgSUlSLgoKU2lnbmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8
dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9pcnEuYyB8IDYyICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDYyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwppbmRleCBmMjdh
ZmRlNDA5YmYuLjM0YTA2ODc2YTJkNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCkBAIC0yMjMw
LDYgKzIyMzAsNjIgQEAgZ2VuOF9kZV9taXNjX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwgdTMyIGlpcikKIAkJRFJNX0VSUk9SKCJVbmV4cGVjdGVkIERFIE1p
c2MgaW50ZXJydXB0XG4iKTsKIH0KIAordm9pZCBnZW4xMV9kc2lfdGVfaW50ZXJydXB0X2hhbmRs
ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQkJCSAgICB1MzIgaWlyX3Zh
bHVlKQoreworCWVudW0gcGlwZSBwaXBlID0gSU5WQUxJRF9QSVBFOworCWVudW0gdHJhbnNjb2Rl
ciBkc2lfdHJhbnM7CisJZW51bSBwb3J0IHBvcnQ7CisJdTMyIHZhbCwgdG1wOworCisJLyoKKwkg
KiBJbmNhc2Ugb2YgZHVhbCBsaW5rLCBURSBjb21lcyBmcm9tIERTSV8xCisJICogdGhpcyBpcyB0
byBjaGVjayBpZiBkdWFsIGxpbmsgaXMgZW5hYmxlZAorCSAqLworCXZhbCA9IEk5MTVfUkVBRChU
UkFOU19ERElfRlVOQ19DVEwyKFRSQU5TQ09ERVJfRFNJXzApKTsKKwl2YWwgJj0gUE9SVF9TWU5D
X01PREVfRU5BQkxFOworCisJLyoKKwkgKiBpZiBkdWFsIGxpbmsgaXMgZW5hYmxlZCwgdGhlbiBy
ZWFkIERTSV8wCisJICogdHJhbnNjb2RlciByZWdpc3RlcnMKKwkgKi8KKwlwb3J0ID0gKChpaXJf
dmFsdWUgJiBEU0kxX1RFICYmIHZhbCkgfHwgKGlpcl92YWx1ZSAmIERTSTBfVEUpKSA/CisJCQkJ
CQkJCVBPUlRfQSA6IFBPUlRfQjsKKwlkc2lfdHJhbnMgPSAocG9ydCA9PSBQT1JUX0EpID8gVFJB
TlNDT0RFUl9EU0lfMCA6IFRSQU5TQ09ERVJfRFNJXzE7CisKKwkvKiBDaGVjayBpZiBEU0kgY29u
ZmlndXJlZCBpbiBjb21tYW5kIG1vZGUgKi8KKwl2YWwgPSBJOTE1X1JFQUQoRFNJX1RSQU5TX0ZV
TkNfQ09ORihkc2lfdHJhbnMpKTsKKwl2YWwgPSAodmFsICYgT1BfTU9ERV9NQVNLKSA+PiAyODsK
KworCWlmICh2YWwpIHsKKwkJRFJNX0VSUk9SKCJEU0kgdHJhbmNvZGVyIG5vdCBjb25maWd1cmVk
IGluIGNvbW1hbmQgbW9kZVxuIik7CisJCXJldHVybjsKKwl9CisKKwkvKiBHZXQgUElQRSBmb3Ig
aGFuZGxpbmcgVkJMQU5LIGV2ZW50ICovCisJdmFsID0gSTkxNV9SRUFEKFRSQU5TX0RESV9GVU5D
X0NUTChkc2lfdHJhbnMpKTsKKwlzd2l0Y2ggKHZhbCAmIFRSQU5TX0RESV9FRFBfSU5QVVRfTUFT
SykgeworCWNhc2UgVFJBTlNfRERJX0VEUF9JTlBVVF9BX09OOgorCQlwaXBlID0gUElQRV9BOwor
CQlicmVhazsKKwljYXNlIFRSQU5TX0RESV9FRFBfSU5QVVRfQl9PTk9GRjoKKwkJcGlwZSA9IFBJ
UEVfQjsKKwkJYnJlYWs7CisJY2FzZSBUUkFOU19ERElfRURQX0lOUFVUX0NfT05PRkY6CisJCXBp
cGUgPSBQSVBFX0M7CisJCWJyZWFrOworCWRlZmF1bHQ6CisJCURSTV9FUlJPUigiSW52YWxpZCBQ
SVBFXG4iKTsKKwl9CisKKwkvKiBjbGVhciBURSBpbiBkc2kgSUlSICovCisJcG9ydCA9IChpaXJf
dmFsdWUgJiBEU0kxX1RFKSA/IFBPUlRfQiA6IFBPUlRfQTsKKwl0bXAgPSBJOTE1X1JFQUQoRFNJ
X0lOVFJfSURFTlRfUkVHKHBvcnQpKTsKKwlJOTE1X1dSSVRFKERTSV9JTlRSX0lERU5UX1JFRyhw
b3J0KSwgdG1wKTsKKworCWRybV9oYW5kbGVfdmJsYW5rKCZkZXZfcHJpdi0+ZHJtLCBwaXBlKTsK
K30KKwogc3RhdGljIGlycXJldHVybl90CiBnZW44X2RlX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIG1hc3Rlcl9jdGwpCiB7CkBAIC0yMjk0LDYgKzIz
NTAsMTIgQEAgZ2VuOF9kZV9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsIHUzMiBtYXN0ZXJfY3RsKQogCQkJCWZvdW5kID0gdHJ1ZTsKIAkJCX0KIAorCQkJaWYg
KChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKSAmJgorCQkJCShpaXIgJiAoRFNJMF9URSB8IERT
STFfVEUpKSkgeworCQkJCWdlbjExX2RzaV90ZV9pbnRlcnJ1cHRfaGFuZGxlcihkZXZfcHJpdiwg
aWlyKTsKKwkJCQlmb3VuZCA9IHRydWU7CisJCQl9CisKIAkJCWlmICghZm91bmQpCiAJCQkJRFJN
X0VSUk9SKCJVbmV4cGVjdGVkIERFIFBvcnQgaW50ZXJydXB0XG4iKTsKIAkJfQotLSAKMi4yMS4w
LjUuZ2FlYjU4MmEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
