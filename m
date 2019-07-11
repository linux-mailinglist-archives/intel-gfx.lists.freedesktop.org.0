Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F09AA65F21
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 19:56:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06B006E28F;
	Thu, 11 Jul 2019 17:55:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70F5C6E279
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 17:55:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 10:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="156894659"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga007.jf.intel.com with ESMTP; 11 Jul 2019 10:55:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 10:30:57 -0700
Message-Id: <20190711173115.28296-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711173115.28296-1-lucas.demarchi@intel.com>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 03/21] drm/i915/tgl: Introduce Tiger Lake PCH
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

RnJvbTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNv
bT4KCkFkZCB0aGUgZW51bSBhZGRpdGlvbnMgdG8gVEdQLgoKQ2M6IFJvZHJpZ28gVml2aSA8cm9k
cmlnby52aXZpQGludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVu
QGxpbnV4LmludGVsLmNvbT4KQ2M6IERhdmlkIFdlaW5laGFsbCA8ZGF2aWQud2VpbmVoYWxsQGlu
dGVsLmNvbT4KQ2M6IEphbWVzIEF1c211cyA8amFtZXMuYXVzbXVzQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+ClJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDQgKysrKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCB8IDMgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4IDc5NGM2ODE0YTZkMC4uYmNlZGQy
ZDhlMjY3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTIyNCw2ICsyMjQsMTAgQEAgaW50
ZWxfcGNoX3R5cGUoY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1bnNp
Z25lZCBzaG9ydCBpZCkKIAkJRFJNX0RFQlVHX0tNUygiRm91bmQgTXVsZSBDcmVlayBDYW55b24g
UENIXG4iKTsKIAkJV0FSTl9PTighSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKTsKIAkJcmV0dXJu
IFBDSF9NQ0M7CisJY2FzZSBJTlRFTF9QQ0hfVEdQX0RFVklDRV9JRF9UWVBFOgorCQlEUk1fREVC
VUdfS01TKCJGb3VuZCBUaWdlciBMYWtlIExQIFBDSFxuIik7CisJCVdBUk5fT04oIUlTX1RJR0VS
TEFLRShkZXZfcHJpdikpOworCQlyZXR1cm4gUENIX1RHUDsKIAlkZWZhdWx0OgogCQlyZXR1cm4g
UENIX05PTkU7CiAJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggZDZjYmFlNmFlMzNjLi43
NWY3NzUxZGQwZWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtNTM2LDYgKzUzNiw3IEBA
IGVudW0gaW50ZWxfcGNoIHsKIAlQQ0hfQ05QLCAgICAgICAgLyogQ2Fubm9uL0NvbWV0IExha2Ug
UENIICovCiAJUENIX0lDUCwJLyogSWNlIExha2UgUENIICovCiAJUENIX01DQywgICAgICAgIC8q
IE11bGUgQ3JlZWsgQ2FueW9uIFBDSCAqLworCVBDSF9UR1AsCS8qIFRpZ2VyIExha2UgUENIICov
CiB9OwogCiAjZGVmaW5lIFFVSVJLX0xWRFNfU1NDX0RJU0FCTEUgKDE8PDEpCkBAIC0yMzIwLDYg
KzIzMjEsNyBAQCBJU19TVUJQTEFURk9STShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwKICNkZWZpbmUgSU5URUxfUENIX0lDUF9ERVZJQ0VfSURfVFlQRQkJMHgzNDgwCiAjZGVm
aW5lIElOVEVMX1BDSF9NQ0NfREVWSUNFX0lEX1RZUEUJCTB4NEIwMAogI2RlZmluZSBJTlRFTF9Q
Q0hfTUNDMl9ERVZJQ0VfSURfVFlQRQkJMHgzODgwCisjZGVmaW5lIElOVEVMX1BDSF9UR1BfREVW
SUNFX0lEX1RZUEUJCTB4QTA4MAogI2RlZmluZSBJTlRFTF9QQ0hfUDJYX0RFVklDRV9JRF9UWVBF
CQkweDcxMDAKICNkZWZpbmUgSU5URUxfUENIX1AzWF9ERVZJQ0VfSURfVFlQRQkJMHg3MDAwCiAj
ZGVmaW5lIElOVEVMX1BDSF9RRU1VX0RFVklDRV9JRF9UWVBFCQkweDI5MDAgLyogcWVtdSBxMzUg
aGFzIDI5MTggKi8KQEAgLTIzMjcsNiArMjMyOSw3IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogI2RlZmluZSBJTlRFTF9QQ0hfVFlQRShkZXZf
cHJpdikgKChkZXZfcHJpdiktPnBjaF90eXBlKQogI2RlZmluZSBJTlRFTF9QQ0hfSUQoZGV2X3By
aXYpICgoZGV2X3ByaXYpLT5wY2hfaWQpCiAjZGVmaW5lIEhBU19QQ0hfTUNDKGRldl9wcml2KSAo
SU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBDSF9NQ0MpCisjZGVmaW5lIEhBU19QQ0hfVEdQ
KGRldl9wcml2KSAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBDSF9UR1ApCiAjZGVmaW5l
IEhBU19QQ0hfSUNQKGRldl9wcml2KSAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBDSF9J
Q1ApCiAjZGVmaW5lIEhBU19QQ0hfQ05QKGRldl9wcml2KSAoSU5URUxfUENIX1RZUEUoZGV2X3By
aXYpID09IFBDSF9DTlApCiAjZGVmaW5lIEhBU19QQ0hfU1BUKGRldl9wcml2KSAoSU5URUxfUENI
X1RZUEUoZGV2X3ByaXYpID09IFBDSF9TUFQpCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
