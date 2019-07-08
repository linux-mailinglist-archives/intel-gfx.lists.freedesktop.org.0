Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C0762C83
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 01:17:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB4AA6E045;
	Mon,  8 Jul 2019 23:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84BE889FBC
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 23:16:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:16:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="316859596"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2019 16:16:56 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 16:16:07 -0700
Message-Id: <20190708231629.9296-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190708231629.9296-1-lucas.demarchi@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 03/25] drm/i915/tgl: Introduce Tiger Lake PCH
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
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDQgKysrKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCB8IDMgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4IDc5NGM2ODE0YTZkMC4u
YmNlZGQyZDhlMjY3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTIyNCw2ICsyMjQsMTAg
QEAgaW50ZWxfcGNoX3R5cGUoY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LCB1bnNpZ25lZCBzaG9ydCBpZCkKIAkJRFJNX0RFQlVHX0tNUygiRm91bmQgTXVsZSBDcmVlayBD
YW55b24gUENIXG4iKTsKIAkJV0FSTl9PTighSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKTsKIAkJ
cmV0dXJuIFBDSF9NQ0M7CisJY2FzZSBJTlRFTF9QQ0hfVEdQX0RFVklDRV9JRF9UWVBFOgorCQlE
Uk1fREVCVUdfS01TKCJGb3VuZCBUaWdlciBMYWtlIExQIFBDSFxuIik7CisJCVdBUk5fT04oIUlT
X1RJR0VSTEFLRShkZXZfcHJpdikpOworCQlyZXR1cm4gUENIX1RHUDsKIAlkZWZhdWx0OgogCQly
ZXR1cm4gUENIX05PTkU7CiAJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggMjUwOGIxMjIy
ZDJjLi4zMjQ4Zjk5NTkyMjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtNTM2LDYgKzUz
Niw3IEBAIGVudW0gaW50ZWxfcGNoIHsKIAlQQ0hfQ05QLCAgICAgICAgLyogQ2Fubm9uL0NvbWV0
IExha2UgUENIICovCiAJUENIX0lDUCwJLyogSWNlIExha2UgUENIICovCiAJUENIX01DQywgICAg
ICAgIC8qIE11bGUgQ3JlZWsgQ2FueW9uIFBDSCAqLworCVBDSF9UR1AsCS8qIFRpZ2VyIExha2Ug
UENIICovCiB9OwogCiAjZGVmaW5lIFFVSVJLX0xWRFNfU1NDX0RJU0FCTEUgKDE8PDEpCkBAIC0y
MzIyLDYgKzIzMjMsNyBAQCBJU19TVUJQTEFURk9STShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwKICNkZWZpbmUgSU5URUxfUENIX0lDUF9ERVZJQ0VfSURfVFlQRQkJMHgzNDgw
CiAjZGVmaW5lIElOVEVMX1BDSF9NQ0NfREVWSUNFX0lEX1RZUEUJCTB4NEIwMAogI2RlZmluZSBJ
TlRFTF9QQ0hfTUNDMl9ERVZJQ0VfSURfVFlQRQkJMHgzODgwCisjZGVmaW5lIElOVEVMX1BDSF9U
R1BfREVWSUNFX0lEX1RZUEUJCTB4QTA4MAogI2RlZmluZSBJTlRFTF9QQ0hfUDJYX0RFVklDRV9J
RF9UWVBFCQkweDcxMDAKICNkZWZpbmUgSU5URUxfUENIX1AzWF9ERVZJQ0VfSURfVFlQRQkJMHg3
MDAwCiAjZGVmaW5lIElOVEVMX1BDSF9RRU1VX0RFVklDRV9JRF9UWVBFCQkweDI5MDAgLyogcWVt
dSBxMzUgaGFzIDI5MTggKi8KQEAgLTIzMjksNiArMjMzMSw3IEBAIElTX1NVQlBMQVRGT1JNKGNv
bnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogI2RlZmluZSBJTlRFTF9QQ0hfVFlQ
RShkZXZfcHJpdikgKChkZXZfcHJpdiktPnBjaF90eXBlKQogI2RlZmluZSBJTlRFTF9QQ0hfSUQo
ZGV2X3ByaXYpICgoZGV2X3ByaXYpLT5wY2hfaWQpCiAjZGVmaW5lIEhBU19QQ0hfTUNDKGRldl9w
cml2KSAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBDSF9NQ0MpCisjZGVmaW5lIEhBU19Q
Q0hfVEdQKGRldl9wcml2KSAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBDSF9UR1ApCiAj
ZGVmaW5lIEhBU19QQ0hfSUNQKGRldl9wcml2KSAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID09
IFBDSF9JQ1ApCiAjZGVmaW5lIEhBU19QQ0hfQ05QKGRldl9wcml2KSAoSU5URUxfUENIX1RZUEUo
ZGV2X3ByaXYpID09IFBDSF9DTlApCiAjZGVmaW5lIEhBU19QQ0hfU1BUKGRldl9wcml2KSAoSU5U
RUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBDSF9TUFQpCi0tIAoyLjIxLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
