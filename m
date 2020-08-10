Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBC3240C25
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 19:39:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25CCB89E9B;
	Mon, 10 Aug 2020 17:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A421C89E9B
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Aug 2020 17:39:26 +0000 (UTC)
IronPort-SDR: rY3VkuNxb/K5TPHtbN4jZMMe/3lTL186J/eLj042+g2ZxcnGyKWksbARYk0zdsMb8VdMficswX
 H/a0dZ7nP9lA==
X-IronPort-AV: E=McAfee;i="6000,8403,9709"; a="215097360"
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; 
 d="scan'208,223";a="215097360"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 10:39:24 -0700
IronPort-SDR: 6zKI9P2Qip8qbXfIK1e+Bba23LjNW3GUl7rdNod4pN7UEGHTrZ2DkmCcFVcGwkZ7Mz68PtPgPN
 KU6uVOn6oHbg==
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; 
 d="scan'208,223";a="494402299"
Received: from pwali-mobl1.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.185.27])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 10:39:23 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Aug 2020 10:41:44 -0700
Message-Id: <20200810174144.76761-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200810174144.76761-1-jose.souza@intel.com>
References: <20200810174144.76761-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 2/2] drm/i915/display: Implement WA 1408330847
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

RnJvbSB0aGUgMyBXQXMgZm9yIFBTUjIgbWFuIHRyYWNrL3NlbGVjdGl2ZSBmZXRjaCB0aGlzIGlz
IG9ubHkgb25lCm5lZWRlZCB3aGVuIGRvaW5nIHNpbmdsZSBmdWxsIGZyYW1lcyBhdCBldmVyeSBm
bGlwLgoKUmV2aWV3ZWQtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8
IDE5ICsrKysrKysrKysrKysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
ICAgICAgICAgfCAgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXgg
ZDMwYTM1NjBiNzk0Li4yYjAwNGVlOTYxOWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYwpAQCAtNTUzLDEzICs1NTMsMjEgQEAgc3RhdGljIHZvaWQgaHN3X2FjdGl2
YXRlX3BzcjIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAkJdmFsIHw9IEVEUF9QU1IyX0ZB
U1RfV0FLRSg3KTsKIAl9CiAKLQlpZiAoZGV2X3ByaXYtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFi
bGVkKQorCWlmIChkZXZfcHJpdi0+cHNyLnBzcjJfc2VsX2ZldGNoX2VuYWJsZWQpIHsKKwkJLyog
V0EgMTQwODMzMDg0NyAqLworCQlpZiAoSVNfVEdMX1JFVklEKGRldl9wcml2LCBUR0xfUkVWSURf
QTAsIFRHTF9SRVZJRF9BMCkgfHwKKwkJICAgIElTX1JLTF9SRVZJRChkZXZfcHJpdiwgUktMX1JF
VklEX0EwLCBSS0xfUkVWSURfQTApKQorCQkJaW50ZWxfZGVfcm13KGRldl9wcml2LCBDSElDS0VO
X1BBUjFfMSwKKwkJCQkgICAgIERJU19SQU1fQllQQVNTX1BTUjJfTUFOX1RSQUNLLAorCQkJCSAg
ICAgRElTX1JBTV9CWVBBU1NfUFNSMl9NQU5fVFJBQ0spOworCiAJCWludGVsX2RlX3dyaXRlKGRl
dl9wcml2LAogCQkJICAgICAgIFBTUjJfTUFOX1RSS19DVEwoZGV2X3ByaXYtPnBzci50cmFuc2Nv
ZGVyKSwKIAkJCSAgICAgICBQU1IyX01BTl9UUktfQ1RMX0VOQUJMRSk7Ci0JZWxzZSBpZiAoSEFT
X1BTUjJfU0VMX0ZFVENIKGRldl9wcml2KSkKKwl9IGVsc2UgaWYgKEhBU19QU1IyX1NFTF9GRVRD
SChkZXZfcHJpdikpIHsKIAkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsCiAJCQkgICAgICAgUFNS
Ml9NQU5fVFJLX0NUTChkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIpLCAwKTsKKwl9CiAKIAkvKgog
CSAqIFBTUjIgSFcgaXMgaW5jb3JyZWN0bHkgdXNpbmcgRURQX1BTUl9UUDFfVFAzX1NFTCBhbmQg
QlNwZWMgaXMKQEAgLTEwOTksNiArMTEwNywxMyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZGlz
YWJsZV9sb2NrZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAkJCQkgICAgcHNyX3N0YXR1
c19tYXNrLCAyMDAwKSkKIAkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwgIlRpbWVkIG91dCB3YWl0
aW5nIFBTUiBpZGxlIHN0YXRlXG4iKTsKIAorCS8qIFdBIDE0MDgzMzA4NDcgKi8KKwlpZiAoZGV2
X3ByaXYtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkICYmCisJICAgIChJU19UR0xfUkVWSUQo
ZGV2X3ByaXYsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklEX0EwKSB8fAorCSAgICAgSVNfUktMX1JF
VklEKGRldl9wcml2LCBSS0xfUkVWSURfQTAsIFJLTF9SRVZJRF9BMCkpKQorCQlpbnRlbF9kZV9y
bXcoZGV2X3ByaXYsIENISUNLRU5fUEFSMV8xLAorCQkJICAgICBESVNfUkFNX0JZUEFTU19QU1Iy
X01BTl9UUkFDSywgMCk7CisKIAkvKiBEaXNhYmxlIFBTUiBvbiBTaW5rICovCiAJZHJtX2RwX2Rw
Y2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfRU5fQ0ZHLCAwKTsKIApkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKaW5kZXggMTRkOGMzZmJjYzBkLi5hYzY5MTkyN2UyOWQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaApAQCAtNzg3OCw2ICs3ODc4LDcgQEAgZW51bSB7CiAjIGRlZmluZSBDSElD
S0VOM19ER01HX0RPTkVfRklYX0RJU0FCTEUJCSgxIDw8IDIpCiAKICNkZWZpbmUgQ0hJQ0tFTl9Q
QVIxXzEJCQlfTU1JTygweDQyMDgwKQorI2RlZmluZSAgRElTX1JBTV9CWVBBU1NfUFNSMl9NQU5f
VFJBQ0sJKDEgPDwgMTYpCiAjZGVmaW5lICBTS0xfREVfQ09NUFJFU1NFRF9IQVNIX01PREUJKDEg
PDwgMTUpCiAjZGVmaW5lICBEUEFfTUFTS19WQkxBTktfU1JECQkoMSA8PCAxNSkKICNkZWZpbmUg
IEZPUkNFX0FSQl9JRExFX1BMQU5FUwkJKDEgPDwgMTQpCi0tIAoyLjI4LjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
