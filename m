Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8FC75B9C
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 01:48:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78BD36E83C;
	Thu, 25 Jul 2019 23:48:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80C9B6E83B
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 23:48:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 16:48:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,308,1559545200"; d="scan'208";a="170460044"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.9.40])
 by fmsmga008.fm.intel.com with ESMTP; 25 Jul 2019 16:48:21 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 16:48:13 -0700
Message-Id: <20190725234813.27179-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190725234813.27179-1-lucas.demarchi@intel.com>
References: <20190725234813.27179-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/tgl: handle DP aux interrupts
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

Rm9yIFRpZ2VyIExha2UgdGhlIERFIFBvcnQgSW50ZXJydXB0IERlZmluaXRpb24gYml0cyBjaGFu
Z2VkLCBzbyB1c2UgdGhlCm5ldyBiaXQgZGVmaW5pdGlvbnMuCgpDYzogSm9zZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMu
ZGVtYXJjaGlAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEu
c3JpdmF0c2FAaW50ZWwuY29tPgpMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvcGF0Y2gvbXNnaWQvMjAxOTA3MTMwMTA5NDAuMTc3MTEtNy1sdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgMTYgKysrKysrKysr
KystLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8ICAzICsrKwogMiBmaWxl
cyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jCmluZGV4IGU0MzU4MmJlMjRlNi4uZmJlMTNiYWNkNWI3IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMKQEAgLTI5NTEsMTkgKzI5NTEsMjUgQEAgc3RhdGljIHZvaWQgZ2VuMTFfaHBk
X2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIGlpcikK
IAogc3RhdGljIHUzMiBnZW44X2RlX3BvcnRfYXV4X21hc2soc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQogewotCXUzMiBtYXNrID0gR0VOOF9BVVhfQ0hBTk5FTF9BOworCXUzMiBt
YXNrOworCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCisJCS8qIFRPRE86IEFkZCBB
VVggZW50cmllcyBmb3IgVVNCQyAqLworCQlyZXR1cm4gVEdMX0RFX1BPUlRfQVVYX0RESUEgfAor
CQkJVEdMX0RFX1BPUlRfQVVYX0RESUIgfAorCQkJVEdMX0RFX1BPUlRfQVVYX0RESUM7CiAKKwlt
YXNrID0gR0VOOF9BVVhfQ0hBTk5FTF9BOwogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkp
CiAJCW1hc2sgfD0gR0VOOV9BVVhfQ0hBTk5FTF9CIHwKIAkJCUdFTjlfQVVYX0NIQU5ORUxfQyB8
CiAJCQlHRU45X0FVWF9DSEFOTkVMX0Q7CiAKLQlpZiAoSVNfQ05MX1dJVEhfUE9SVF9GKGRldl9w
cml2KSkKKwlpZiAoSVNfQ05MX1dJVEhfUE9SVF9GKGRldl9wcml2KSB8fCBJU19HRU4oZGV2X3By
aXYsIDExKSkKIAkJbWFzayB8PSBDTkxfQVVYX0NIQU5ORUxfRjsKIAotCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDExKQotCQltYXNrIHw9IElDTF9BVVhfQ0hBTk5FTF9FIHwKLQkJCUNOTF9B
VVhfQ0hBTk5FTF9GOworCWlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkKKwkJbWFzayB8PSBJQ0xf
QVVYX0NIQU5ORUxfRTsKIAogCXJldHVybiBtYXNrOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
aW5kZXggY2YxZDNhMmYxN2E5Li43MTI2ZTM0NjZiNTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aApAQCAtNzQxOCw2ICs3NDE4LDkgQEAgZW51bSB7CiAjZGVmaW5lICBHRU44X1BPUlRfRFBfQV9I
T1RQTFVHCQkoMSA8PCAzKQogI2RlZmluZSAgQlhUX0RFX1BPUlRfR01CVVMJCSgxIDw8IDEpCiAj
ZGVmaW5lICBHRU44X0FVWF9DSEFOTkVMX0EJCSgxIDw8IDApCisjZGVmaW5lICBUR0xfREVfUE9S
VF9BVVhfRERJQwkJKDEgPDwgMikKKyNkZWZpbmUgIFRHTF9ERV9QT1JUX0FVWF9ERElCCQkoMSA8
PCAxKQorI2RlZmluZSAgVEdMX0RFX1BPUlRfQVVYX0RESUEJCSgxIDw8IDApCiAKICNkZWZpbmUg
R0VOOF9ERV9NSVNDX0lTUiBfTU1JTygweDQ0NDYwKQogI2RlZmluZSBHRU44X0RFX01JU0NfSU1S
IF9NTUlPKDB4NDQ0NjQpCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
