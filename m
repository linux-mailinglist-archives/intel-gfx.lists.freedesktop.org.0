Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 055F57E66B
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 01:28:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1DB88929B;
	Thu,  1 Aug 2019 23:28:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A36F8929B
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 23:28:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 16:28:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,336,1559545200"; d="scan'208";a="167067150"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.51])
 by orsmga008.jf.intel.com with ESMTP; 01 Aug 2019 16:28:15 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Aug 2019 16:28:12 -0700
Message-Id: <20190801232812.28375-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801232812.28375-1-jose.souza@intel.com>
References: <20190801232812.28375-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Fix the read of the DDI that
 transcoder is attached to
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
KCkpIGJ1dCBub3Qgd2hlbgpyZWFkaW5nIGl0LgoKQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMu
ZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyB8IDEwICsrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwppbmRleCA5ZTRlZTI5ZmQwZmMuLmI5NTI2YWE0MDJmOSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTEwMzUzLDEx
ICsxMDM1MywxNyBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX2dldF9kZGlfcG9ydF9zdGF0ZShzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAogCXRtcCA9IEk5MTVfUkVBRChUUkFOU19ERElfRlVOQ19D
VEwocGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyKSk7CiAKLQlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMikKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewogCQlwb3J0ID0g
KHRtcCAmIFRHTF9UUkFOU19ERElfUE9SVF9NQVNLKSA+PgogCQkJVEdMX1RSQU5TX0RESV9QT1JU
X1NISUZUOwotCWVsc2UKKwkJLyoKKwkJICogUmVnaXN0ZXIgdmFsdWVzOiBub25lID0gMCwgRERJ
QSA9IDEuLi4gd2hpbGUgUE9SVF9BID0gMC4uLgorCQkgKiBzbyBzdWJ0cmFjdCBvbmUKKwkJICov
CisJCXBvcnQtLTsKKwl9IGVsc2UgewogCQlwb3J0ID0gKHRtcCAmIFRSQU5TX0RESV9QT1JUX01B
U0spID4+IFRSQU5TX0RESV9QT1JUX1NISUZUOworCX0KIAogCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDExKQogCQlpY2VsYWtlX2dldF9kZGlfcGxsKGRldl9wcml2LCBwb3J0LCBwaXBlX2Nv
bmZpZyk7Ci0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
