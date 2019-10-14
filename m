Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD35D6156
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 13:31:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A079F6E28E;
	Mon, 14 Oct 2019 11:31:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DE176E284
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 11:30:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 04:30:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,295,1566889200"; d="scan'208";a="185465905"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga007.jf.intel.com with ESMTP; 14 Oct 2019 04:30:50 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2019 16:31:21 +0530
Message-Id: <20191014110122.31923-7-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20191014110122.31923-1-vandita.kulkarni@intel.com>
References: <20191014110122.31923-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 6/7] drm/i915/dsi: Add TE handler for dsi cmd mode.
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gY2FzZSBvZiBkdWFsIGxpbmssIHdlIGdldCB0aGUgVEUgb24gc2xhdmUuClNvIGNsZWFyIHRo
ZSBURSBvbiBzbGF2ZSBEU0kgSUlSLgoKU2lnbmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8
dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9pcnEuYyB8IDYxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDYxIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwppbmRleCBiZmIy
YTYzNTA0ZmIuLmQxMmVmYTcyOTQzYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCkBAIC0yNjI4
LDYgKzI2MjgsNjEgQEAgZ2VuOF9kZV9taXNjX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwgdTMyIGlpcikKIAkJRFJNX0VSUk9SKCJVbmV4cGVjdGVkIERFIE1p
c2MgaW50ZXJydXB0XG4iKTsKIH0KIAordm9pZCBnZW4xMV9kc2lfdGVfaW50ZXJydXB0X2hhbmRs
ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQkJCSAgICB1MzIgaWlyX3Zh
bHVlKQoreworCWVudW0gcGlwZSBwaXBlID0gSU5WQUxJRF9QSVBFOworCWVudW0gcG9ydCBwb3J0
OworCWVudW0gdHJhbnNjb2RlciBkc2lfdHJhbnM7CisJdTMyIHZhbDsKKworCS8qCisJICogSW5j
YXNlIG9mIGR1YWwgbGluaywgVEUgY29tZXMgZnJvbSBEU0lfMQorCSAqIHRoaXMgaXMgdG8gY2hl
Y2sgaWYgZHVhbCBsaW5rIGlzIGVuYWJsZWQKKwkgKi8KKwl2YWwgPSBJOTE1X1JFQUQoVFJBTlNf
RERJX0ZVTkNfQ1RMMihUUkFOU0NPREVSX0RTSV8wKSk7CisJdmFsICY9IFBPUlRfU1lOQ19NT0RF
X0VOQUJMRTsKKworCS8qCisJICogaWYgZHVhbCBsaW5rIGlzIGVuYWJsZWQsIHRoZW4gcmVhZCBE
U0lfMAorCSAqIHRyYW5zY29kZXIgcmVnaXN0ZXJzCisJICovCisJcG9ydCA9ICgoaWlyX3ZhbHVl
ICYgSUNMX0RTSV8xKSAmJiB2YWwpIHx8IChpaXJfdmFsdWUgJiBJQ0xfRFNJXzApID8gUE9SVF9B
IDogUE9SVF9COworCWRzaV90cmFucyA9IChwb3J0ID09IFBPUlRfQSkgPyBUUkFOU0NPREVSX0RT
SV8wIDogVFJBTlNDT0RFUl9EU0lfMTsKKworCS8qIENoZWNrIGlmIERTSSBjb25maWd1cmVkIGlu
IGNvbW1hbmQgbW9kZSAqLworCXZhbCA9IEk5MTVfUkVBRChEU0lfVFJBTlNfRlVOQ19DT05GKGRz
aV90cmFucykpOworCXZhbCA9ICh2YWwgJiBPUF9NT0RFX01BU0spID4+IDI4OworCisJaWYgKHZh
bCkgeworCQlEUk1fRVJST1IoIkRTSSB0cmFuY29kZXIgbm90IGNvbmZpZ3VyZWQgaW4gY29tbWFu
ZCBtb2RlXG4iKTsKKwkJcmV0dXJuOworCX0KKworCS8qIEdldCBQSVBFIGZvciBoYW5kbGluZyBW
QkxBTksgZXZlbnQgKi8KKwl2YWwgPSBJOTE1X1JFQUQoVFJBTlNfRERJX0ZVTkNfQ1RMKGRzaV90
cmFucykpOworCXN3aXRjaCAodmFsICYgVFJBTlNfRERJX0VEUF9JTlBVVF9NQVNLKSB7CisJY2Fz
ZSBUUkFOU19ERElfRURQX0lOUFVUX0FfT046CisJCXBpcGUgPSBQSVBFX0E7CisJCWJyZWFrOwor
CWNhc2UgVFJBTlNfRERJX0VEUF9JTlBVVF9CX09OT0ZGOgorCQlwaXBlID0gUElQRV9COworCQli
cmVhazsKKwljYXNlIFRSQU5TX0RESV9FRFBfSU5QVVRfQ19PTk9GRjoKKwkJcGlwZSA9IFBJUEVf
QzsKKwkJYnJlYWs7CisJZGVmYXVsdDoKKwkJRFJNX0VSUk9SKCJJbnZhbGlkIFBJUEVcbiIpOwor
CX0KKworCS8qIGNsZWFyIFRFIGluIGRzaSBJSVIgKi8KKwlwb3J0ID0gKGlpcl92YWx1ZSAmIElD
TF9EU0lfMSkgPyBQT1JUX0IgOiBQT1JUX0E7CisJdmFsID0gSTkxNV9SRUFEKElDTF9EU0lfSU5U
Ul9JREVOVF9SRUcocG9ydCkpOworCUk5MTVfV1JJVEUoKElDTF9EU0lfSU5UUl9JREVOVF9SRUco
cG9ydCkpLCB2YWwpOworCisJZHJtX2hhbmRsZV92YmxhbmsoJmRldl9wcml2LT5kcm0sIHBpcGUp
OworfQorCiBzdGF0aWMgaXJxcmV0dXJuX3QKIGdlbjhfZGVfaXJxX2hhbmRsZXIoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgbWFzdGVyX2N0bCkKIHsKQEAgLTI2OTIsNiAr
Mjc0NywxMiBAQCBnZW44X2RlX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwgdTMyIG1hc3Rlcl9jdGwpCiAJCQkJZm91bmQgPSB0cnVlOwogCQkJfQogCisJCQlp
ZiAoKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpICYmCisJCQkJKGlpciAmIChJQ0xfRFNJXzAg
fCBJQ0xfRFNJXzEpKSkgeworCQkJCWdlbjExX2RzaV90ZV9pbnRlcnJ1cHRfaGFuZGxlcihkZXZf
cHJpdiwgaWlyKTsKKwkJCQlmb3VuZCA9IHRydWU7CisJCQl9CisKIAkJCWlmICghZm91bmQpCiAJ
CQkJRFJNX0VSUk9SKCJVbmV4cGVjdGVkIERFIFBvcnQgaW50ZXJydXB0XG4iKTsKIAkJfQotLSAK
Mi4yMS4wLjUuZ2FlYjU4MmEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
