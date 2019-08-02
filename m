Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BB080253
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 23:54:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B91C16E365;
	Fri,  2 Aug 2019 21:54:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5674C6E365
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 21:54:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 14:54:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,339,1559545200"; d="scan'208";a="184702841"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.51])
 by orsmga002.jf.intel.com with ESMTP; 02 Aug 2019 14:54:02 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Aug 2019 14:53:56 -0700
Message-Id: <20190802215356.13563-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802215356.13563-1-jose.souza@intel.com>
References: <20190802215356.13563-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/tgl: Fix the read of the DDI
 that transcoder is attached to
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVEdMIHRoaXMgcmVnaXN0ZXIgZG8gbm90IG1hcCBkaXJlY3RseSB0byBwb3J0LCBpdCB3YXMg
YWxyZWFkeQpoYW5kbGVkIHdoZW4gc2V0dGluZyBpdChUR0xfVFJBTlNfRERJX1NFTEVDVF9QT1JU
KCkpIGJ1dCBub3Qgd2hlbgpyZWFkaW5nIGl0LgoKdjI6CkFkZGluZyBUR0xfUE9SVF9UUkFOU19E
RElfU0VMRUNUKCkgc28gYWxsIGZ1dHVyZSB1c2VycyBjYW4gcmV1c2UgaXQKKEx1Y2FzKQoKQ2M6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDMgKy0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICB8IDEgKwogMiBmaWxlcyBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA5ZTRlZTI5ZmQwZmMuLjY4ZTVkOGE5
YzIzZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
QEAgLTEwMzU0LDggKzEwMzU0LDcgQEAgc3RhdGljIHZvaWQgaGFzd2VsbF9nZXRfZGRpX3BvcnRf
c3RhdGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJdG1wID0gSTkxNV9SRUFEKFRSQU5TX0RE
SV9GVU5DX0NUTChwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIpKTsKIAogCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDEyKQotCQlwb3J0ID0gKHRtcCAmIFRHTF9UUkFOU19ERElfUE9SVF9N
QVNLKSA+PgotCQkJVEdMX1RSQU5TX0RESV9QT1JUX1NISUZUOworCQlwb3J0ID0gVEdMX1BPUlRf
VFJBTlNfRERJX1NFTEVDVCh0bXApOwogCWVsc2UKIAkJcG9ydCA9ICh0bXAgJiBUUkFOU19ERElf
UE9SVF9NQVNLKSA+PiBUUkFOU19ERElfUE9SVF9TSElGVDsKIApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKaW5kZXggZDc2MDgzMGNmZDdiLi4yYmY4Nzk5NGM4ZTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaApAQCAtOTQzMiw2ICs5NDMyLDcgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAjZGVmaW5l
ICBUR0xfVFJBTlNfRERJX1BPUlRfTUFTSwkoMHhmIDw8IFRHTF9UUkFOU19ERElfUE9SVF9TSElG
VCkKICNkZWZpbmUgIFRSQU5TX0RESV9TRUxFQ1RfUE9SVCh4KQkoKHgpIDw8IFRSQU5TX0RESV9Q
T1JUX1NISUZUKQogI2RlZmluZSAgVEdMX1RSQU5TX0RESV9TRUxFQ1RfUE9SVCh4KQkoKCh4KSAr
IDEpIDw8IFRHTF9UUkFOU19ERElfUE9SVF9TSElGVCkKKyNkZWZpbmUgIFRHTF9QT1JUX1RSQU5T
X0RESV9TRUxFQ1QodmFsKSAoKHZhbCAmIFRHTF9UUkFOU19ERElfUE9SVF9NQVNLID4+IFRHTF9U
UkFOU19ERElfUE9SVF9TSElGVCkgLSAxKQogI2RlZmluZSAgVFJBTlNfRERJX01PREVfU0VMRUNU
X01BU0sJKDcgPDwgMjQpCiAjZGVmaW5lICBUUkFOU19ERElfTU9ERV9TRUxFQ1RfSERNSQkoMCA8
PCAyNCkKICNkZWZpbmUgIFRSQU5TX0RESV9NT0RFX1NFTEVDVF9EVkkJKDEgPDwgMjQpCi0tIAoy
LjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
