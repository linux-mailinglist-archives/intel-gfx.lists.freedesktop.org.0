Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D742E65F1C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 19:56:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E15C6E283;
	Thu, 11 Jul 2019 17:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B4C66E279
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 17:55:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 10:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="156894670"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga007.jf.intel.com with ESMTP; 11 Jul 2019 10:55:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 10:31:00 -0700
Message-Id: <20190711173115.28296-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711173115.28296-1-lucas.demarchi@intel.com>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 06/21] drm/i915/tgl: Check if pipe D is fused
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpPbiBU
aWdlciBMYWtlIHRoZXJlIGlzIG9uZSBtb3JlIHBpcGUgLSBjaGVjayBpZiBpdCdzIGZ1c2VkLgoK
U2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwu
Y29tPgpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgIHwgMSArCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIHwgMyArKysKIDIgZmlsZXMgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggNmZlM2Q3NGY5
OWZmLi45NGU3NmZhOWQxMTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNzYzMyw2ICs3
NjMzLDcgQEAgZW51bSB7CiAjZGVmaW5lIFNLTF9ERlNNX1BJUEVfQV9ESVNBQkxFCQkoMSA8PCAz
MCkKICNkZWZpbmUgU0tMX0RGU01fUElQRV9CX0RJU0FCTEUJCSgxIDw8IDIxKQogI2RlZmluZSBT
S0xfREZTTV9QSVBFX0NfRElTQUJMRQkJKDEgPDwgMjgpCisjZGVmaW5lIFRHTF9ERlNNX1BJUEVf
RF9ESVNBQkxFCQkoMSA8PCAyMikKIAogI2RlZmluZSBTS0xfRFNTTQkJCQlfTU1JTygweDUxMDA0
KQogI2RlZmluZSBDTkxfRFNTTV9DRENMS19QTExfUkVGQ0xLXzI0TUh6CQkoMSA8PCAzMSkKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCmluZGV4IGUwZDlhN2EzNzk5NC4u
Zjk5YzlmZDQ5N2IyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZp
Y2VfaW5mby5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMK
QEAgLTkzOCw2ICs5MzgsOSBAQCB2b2lkIGludGVsX2RldmljZV9pbmZvX3J1bnRpbWVfaW5pdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCQllbmFibGVkX21hc2sgJj0gfkJJ
VChQSVBFX0IpOwogCQlpZiAoZGZzbSAmIFNLTF9ERlNNX1BJUEVfQ19ESVNBQkxFKQogCQkJZW5h
YmxlZF9tYXNrICY9IH5CSVQoUElQRV9DKTsKKwkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
MTIgJiYKKwkJICAgIChkZnNtICYgVEdMX0RGU01fUElQRV9EX0RJU0FCTEUpKQorCQkJZW5hYmxl
ZF9tYXNrICY9IH5CSVQoUElQRV9EKTsKIAogCQkvKgogCQkgKiBBdCBsZWFzdCBvbmUgcGlwZSBz
aG91bGQgYmUgZW5hYmxlZCBhbmQgaWYgdGhlcmUgYXJlCi0tIAoyLjIxLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
