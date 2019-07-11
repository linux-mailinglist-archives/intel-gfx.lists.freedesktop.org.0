Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD5B64F96
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 02:38:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F08489C13;
	Thu, 11 Jul 2019 00:38:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95EB089C13
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 00:38:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 17:38:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="193232343"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2019 17:38:48 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 17:38:15 -0700
Message-Id: <20190711003833.17420-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711003833.17420-1-lucas.demarchi@intel.com>
References: <20190711003833.17420-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 03/21] drm/i915/tgl: Introduce Tiger Lake PCH
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
Ckxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE5
MDcwODIzMTYyOS45Mjk2LTQtbHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tCi0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDQgKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaCB8IDMgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5jCmluZGV4IDc5NGM2ODE0YTZkMC4uYmNlZGQyZDhlMjY3IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTIyNCw2ICsyMjQsMTAgQEAgaW50ZWxfcGNoX3R5cGUoY29u
c3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1bnNpZ25lZCBzaG9ydCBpZCkK
IAkJRFJNX0RFQlVHX0tNUygiRm91bmQgTXVsZSBDcmVlayBDYW55b24gUENIXG4iKTsKIAkJV0FS
Tl9PTighSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKTsKIAkJcmV0dXJuIFBDSF9NQ0M7CisJY2Fz
ZSBJTlRFTF9QQ0hfVEdQX0RFVklDRV9JRF9UWVBFOgorCQlEUk1fREVCVUdfS01TKCJGb3VuZCBU
aWdlciBMYWtlIExQIFBDSFxuIik7CisJCVdBUk5fT04oIUlTX1RJR0VSTEFLRShkZXZfcHJpdikp
OworCQlyZXR1cm4gUENIX1RHUDsKIAlkZWZhdWx0OgogCQlyZXR1cm4gUENIX05PTkU7CiAJfQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggOTg5Y2ExZTAyY2MxLi4zN2QwN2E5MWIzODUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtNTM2LDYgKzUzNiw3IEBAIGVudW0gaW50ZWxfcGNo
IHsKIAlQQ0hfQ05QLCAgICAgICAgLyogQ2Fubm9uL0NvbWV0IExha2UgUENIICovCiAJUENIX0lD
UCwJLyogSWNlIExha2UgUENIICovCiAJUENIX01DQywgICAgICAgIC8qIE11bGUgQ3JlZWsgQ2Fu
eW9uIFBDSCAqLworCVBDSF9UR1AsCS8qIFRpZ2VyIExha2UgUENIICovCiB9OwogCiAjZGVmaW5l
IFFVSVJLX0xWRFNfU1NDX0RJU0FCTEUgKDE8PDEpCkBAIC0yMzIyLDYgKzIzMjMsNyBAQCBJU19T
VUJQTEFURk9STShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKICNkZWZpbmUg
SU5URUxfUENIX0lDUF9ERVZJQ0VfSURfVFlQRQkJMHgzNDgwCiAjZGVmaW5lIElOVEVMX1BDSF9N
Q0NfREVWSUNFX0lEX1RZUEUJCTB4NEIwMAogI2RlZmluZSBJTlRFTF9QQ0hfTUNDMl9ERVZJQ0Vf
SURfVFlQRQkJMHgzODgwCisjZGVmaW5lIElOVEVMX1BDSF9UR1BfREVWSUNFX0lEX1RZUEUJCTB4
QTA4MAogI2RlZmluZSBJTlRFTF9QQ0hfUDJYX0RFVklDRV9JRF9UWVBFCQkweDcxMDAKICNkZWZp
bmUgSU5URUxfUENIX1AzWF9ERVZJQ0VfSURfVFlQRQkJMHg3MDAwCiAjZGVmaW5lIElOVEVMX1BD
SF9RRU1VX0RFVklDRV9JRF9UWVBFCQkweDI5MDAgLyogcWVtdSBxMzUgaGFzIDI5MTggKi8KQEAg
LTIzMjksNiArMjMzMSw3IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1LAogI2RlZmluZSBJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgKChkZXZfcHJp
diktPnBjaF90eXBlKQogI2RlZmluZSBJTlRFTF9QQ0hfSUQoZGV2X3ByaXYpICgoZGV2X3ByaXYp
LT5wY2hfaWQpCiAjZGVmaW5lIEhBU19QQ0hfTUNDKGRldl9wcml2KSAoSU5URUxfUENIX1RZUEUo
ZGV2X3ByaXYpID09IFBDSF9NQ0MpCisjZGVmaW5lIEhBU19QQ0hfVEdQKGRldl9wcml2KSAoSU5U
RUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBDSF9UR1ApCiAjZGVmaW5lIEhBU19QQ0hfSUNQKGRl
dl9wcml2KSAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBDSF9JQ1ApCiAjZGVmaW5lIEhB
U19QQ0hfQ05QKGRldl9wcml2KSAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBDSF9DTlAp
CiAjZGVmaW5lIEhBU19QQ0hfU1BUKGRldl9wcml2KSAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYp
ID09IFBDSF9TUFQpCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
