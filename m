Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D0464FA1
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 02:39:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C69689CAC;
	Thu, 11 Jul 2019 00:38:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0C4F89C60
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 00:38:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 17:38:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="193232379"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2019 17:38:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 17:38:25 -0700
Message-Id: <20190711003833.17420-13-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711003833.17420-1-lucas.demarchi@intel.com>
References: <20190711003833.17420-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 13/21] drm/i915/tgl: extend
 intel_port_is_combophy/tc
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

RnJvbTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4KClRHTCBoYXMgMyBj
b21ib3BoeSBwb3J0cywgc28gZXh0ZW5kIGNoZWNrIGZvciB0aWdlcmxha2UgaW4KaW50ZWxfcG9y
dF9pc19jb21ib3BoeS90YyBmdW5jdGlvbi4KCkNjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFA
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYWhlc2ggS3VtYXIgPG1haGVzaDEua3VtYXJAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPgpMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gv
bXNnaWQvMjAxOTA3MDgyMzE2MjkuOTI5Ni0xOS1sdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEyICsrKysr
KysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGRi
MDFlYTA4ZjMwYi4uYTdiNmE3OTE4YzNkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNjY3NiwxMCArNjY3NiwxMCBAQCBib29sIGludGVsX3Bv
cnRfaXNfY29tYm9waHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBv
cnQgcG9ydCkKIAlpZiAocG9ydCA9PSBQT1JUX05PTkUpCiAJCXJldHVybiBmYWxzZTsKIAotCWlm
IChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikpCisJaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2
KSB8fCBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQogCQlyZXR1cm4gcG9ydCA8PSBQT1JUX0M7
CiAKLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKKwlpZiAoSVNfR0VOKGRldl9wcml2
LCAxMSkpCiAJCXJldHVybiBwb3J0IDw9IFBPUlRfQjsKIAogCXJldHVybiBmYWxzZTsKQEAgLTY2
ODcsNyArNjY4NywxMCBAQCBib29sIGludGVsX3BvcnRfaXNfY29tYm9waHkoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBvcnQgcG9ydCkKIAogYm9vbCBpbnRlbF9wb3J0
X2lzX3RjKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQp
CiB7Ci0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYgIUlTX0VMS0hBUlRMQUtFKGRl
dl9wcml2KSkKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKKwkJcmV0dXJuIHBvcnQg
Pj0gUE9SVF9EICYmIHBvcnQgPD0gUE9SVF9JOworCisJaWYgKElTX0dFTihkZXZfcHJpdiwgMTEp
ICYmICFJU19FTEtIQVJUTEFLRShkZXZfcHJpdikpCiAJCXJldHVybiBwb3J0ID49IFBPUlRfQyAm
JiBwb3J0IDw9IFBPUlRfRjsKIAogCXJldHVybiBmYWxzZTsKQEAgLTY2OTgsNiArNjcwMSw5IEBA
IGVudW0gdGNfcG9ydCBpbnRlbF9wb3J0X3RvX3RjKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQpCiAJaWYgKCFpbnRlbF9wb3J0X2lzX3RjKGRldl9wcml2
LCBwb3J0KSkKIAkJcmV0dXJuIFBPUlRfVENfTk9ORTsKIAorCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDEyKQorCQlyZXR1cm4gcG9ydCAtIFBPUlRfRDsKKwogCXJldHVybiBwb3J0IC0gUE9S
VF9DOwogfQogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
