Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10337DD5C9
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2019 02:41:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14A3D6E071;
	Sat, 19 Oct 2019 00:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F7C16E064
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Oct 2019 00:41:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 17:41:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,313,1566889200"; d="scan'208";a="226725716"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by fmsmga002.fm.intel.com with ESMTP; 18 Oct 2019 17:41:30 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Oct 2019 17:41:23 -0700
Message-Id: <20191019004124.371929-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191019004124.371929-1-jose.souza@intel.com>
References: <20191019004124.371929-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/display/icl+: Check if DMC is
 fused off
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

Q2hlY2sgaWYgRE1DIGlzIGZ1c2VkIG9mZiBhbmQgaGFuZGxlIGl0LgoKQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBNYXJ0aW4gUGVyZXMgPG1h
cnRpbi5wZXJlc0BsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggICAgICAgICAgfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rl
dmljZV9pbmZvLmMgfCAzICsrKwogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCAzMTM3NWRkYzJiM2IuLjg0ZmNhNGYzYWY1YSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC03NjYwLDYgKzc2NjAsNyBAQCBlbnVtIHsKICNkZWZp
bmUgU0tMX0RGU01fQ0RDTEtfTElNSVRfNTQwCQkoMSA8PCAyMykKICNkZWZpbmUgU0tMX0RGU01f
Q0RDTEtfTElNSVRfNDUwCQkoMiA8PCAyMykKICNkZWZpbmUgU0tMX0RGU01fQ0RDTEtfTElNSVRf
MzM3XzUJCSgzIDw8IDIzKQorI2RlZmluZSBJQ0xfREZTTV9ETUNfRElTQUJMRQkJCSgxIDw8IDIz
KQogI2RlZmluZSBTS0xfREZTTV9QSVBFX0FfRElTQUJMRQkJCSgxIDw8IDMwKQogI2RlZmluZSBT
S0xfREZTTV9QSVBFX0JfRElTQUJMRQkJCSgxIDw8IDIxKQogI2RlZmluZSBTS0xfREZTTV9QSVBF
X0NfRElTQUJMRQkJCSgxIDw8IDI4KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9p
bmZvLmMKaW5kZXggYjZhOWY1MjdmOGY5Li45N2Q5NjI5NDRlNDggMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwpAQCAtOTkzLDYgKzk5Myw5IEBAIHZvaWQgaW50ZWxf
ZGV2aWNlX2luZm9fcnVudGltZV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIAogCQlpZiAoZGZzbSAmIFNLTF9ERlNNX0RJU1BMQVlfUE1fRElTQUJMRSkKIAkJCWluZm8t
PmRpc3BsYXkuaGFzX2ZiYyA9IDA7CisKKwkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEg
JiYgKGRmc20gJiBJQ0xfREZTTV9ETUNfRElTQUJMRSkpCisJCQlpbmZvLT5kaXNwbGF5Lmhhc19j
c3IgPSAwOwogCX0KIAogCS8qIEluaXRpYWxpemUgc2xpY2Uvc3Vic2xpY2UvRVUgaW5mbyAqLwot
LSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
