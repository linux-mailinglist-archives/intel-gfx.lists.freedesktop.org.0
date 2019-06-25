Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B205F55667
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 19:55:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CAF16E1D7;
	Tue, 25 Jun 2019 17:55:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62D616E1C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 17:55:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 10:55:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="360469328"
Received: from mvaitla-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.251.139.12])
 by fmsmga006.fm.intel.com with ESMTP; 25 Jun 2019 10:55:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 10:54:30 -0700
Message-Id: <20190625175437.14840-22-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625175437.14840-1-lucas.demarchi@intel.com>
References: <20190625175437.14840-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/28] drm/i915/tgl: extend
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
Cc: Mahesh Kumar <mahesh1.kumar@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4KClRHTCBoYXMgMyBj
b21ib3BoeSBwb3J0cywgc28gZXh0ZW5kIGNoZWNrIGZvciB0aWdlcmxha2UgaW4KaW50ZWxfcG9y
dF9pc19jb21ib3BoeS90YyBmdW5jdGlvbi4KCkNjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFA
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYWhlc2ggS3VtYXIgPG1haGVzaDEua3VtYXJAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyB8IDEyICsrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCmluZGV4IDRkNTgzMmEzYmY0NS4uNzJiZDg1ZTk4YjhkIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNjU2NSwxMCArNjU2NSwxMCBAQCBi
b29sIGludGVsX3BvcnRfaXNfY29tYm9waHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LCBlbnVtIHBvcnQgcG9ydCkKIAlpZiAocG9ydCA9PSBQT1JUX05PTkUpCiAJCXJldHVybiBm
YWxzZTsKIAotCWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikpCisJaWYgKElTX0VMS0hBUlRM
QUtFKGRldl9wcml2KSB8fCBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQogCQlyZXR1cm4gcG9y
dCA8PSBQT1JUX0M7CiAKLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKKwlpZiAoSVNf
R0VOKGRldl9wcml2LCAxMSkpCiAJCXJldHVybiBwb3J0IDw9IFBPUlRfQjsKIAogCXJldHVybiBm
YWxzZTsKQEAgLTY1NzYsNyArNjU3NiwxMCBAQCBib29sIGludGVsX3BvcnRfaXNfY29tYm9waHko
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBvcnQgcG9ydCkKIAogYm9v
bCBpbnRlbF9wb3J0X2lzX3RjKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51
bSBwb3J0IHBvcnQpCiB7Ci0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYgIUlTX0VM
S0hBUlRMQUtFKGRldl9wcml2KSkKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKKwkJ
cmV0dXJuIHBvcnQgPj0gUE9SVF9EICYmIHBvcnQgPD0gUE9SVF9JOworCisJaWYgKElTX0dFTihk
ZXZfcHJpdiwgMTEpICYmICFJU19FTEtIQVJUTEFLRShkZXZfcHJpdikpCiAJCXJldHVybiBwb3J0
ID49IFBPUlRfQyAmJiBwb3J0IDw9IFBPUlRfRjsKIAogCXJldHVybiBmYWxzZTsKQEAgLTY1ODcs
NiArNjU5MCw5IEBAIGVudW0gdGNfcG9ydCBpbnRlbF9wb3J0X3RvX3RjKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQpCiAJaWYgKCFpbnRlbF9wb3J0X2lz
X3RjKGRldl9wcml2LCBwb3J0KSkKIAkJcmV0dXJuIFBPUlRfVENfTk9ORTsKIAorCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDEyKQorCQlyZXR1cm4gcG9ydCAtIFBPUlRfRDsKKwogCXJldHVy
biBwb3J0IC0gUE9SVF9DOwogfQogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
