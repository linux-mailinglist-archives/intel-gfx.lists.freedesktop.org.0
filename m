Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A07E5768
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 02:14:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AAB26EBDC;
	Sat, 26 Oct 2019 00:14:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04F2E6EBD9
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Oct 2019 00:14:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 17:14:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,230,1569308400"; d="scan'208";a="400270401"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by fmsmga006.fm.intel.com with ESMTP; 25 Oct 2019 17:14:08 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 17:13:22 -0700
Message-Id: <20191026001323.216052-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191026001323.216052-1-jose.souza@intel.com>
References: <20191026001323.216052-1-jose.souza@intel.com>
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
cnRpbi5wZXJlc0BsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBSYW1hbGluZ2FtIEMgPHJh
bWFsaW5nYW0uY0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggICAgICAgICAgfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9p
bmZvLmMgfCAzICsrKwogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAppbmRleCA0ZGI2MjYzNTJiN2MuLmVmOTI5YzIyYmVjMCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCkBAIC03NjcwLDYgKzc2NzAsNyBAQCBlbnVtIHsKICNkZWZpbmUgICBT
S0xfREZTTV9DRENMS19MSU1JVF81NDAJKDEgPDwgMjMpCiAjZGVmaW5lICAgU0tMX0RGU01fQ0RD
TEtfTElNSVRfNDUwCSgyIDw8IDIzKQogI2RlZmluZSAgIFNLTF9ERlNNX0NEQ0xLX0xJTUlUXzMz
N181CSgzIDw8IDIzKQorI2RlZmluZSAgIElDTF9ERlNNX0RNQ19ESVNBQkxFCQkoMSA8PCAyMykK
ICNkZWZpbmUgICBTS0xfREZTTV9QSVBFX0FfRElTQUJMRQkoMSA8PCAzMCkKICNkZWZpbmUgICBT
S0xfREZTTV9QSVBFX0JfRElTQUJMRQkoMSA8PCAyMSkKICNkZWZpbmUgICBTS0xfREZTTV9QSVBF
X0NfRElTQUJMRQkoMSA8PCAyOCkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RldmljZV9pbmZvLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5m
by5jCmluZGV4IGEzZTkwNzE0Y2ZhMi4uZmE2NDY0ODc5MTQyIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RldmljZV9pbmZvLmMKQEAgLTk4Nyw2ICs5ODcsOSBAQCB2b2lkIGludGVsX2Rl
dmljZV9pbmZvX3J1bnRpbWVfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
CiAKIAkJaWYgKGRmc20gJiBTS0xfREZTTV9ESVNQTEFZX1BNX0RJU0FCTEUpCiAJCQlpbmZvLT5k
aXNwbGF5Lmhhc19mYmMgPSAwOworCisJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExICYm
IChkZnNtICYgSUNMX0RGU01fRE1DX0RJU0FCTEUpKQorCQkJaW5mby0+ZGlzcGxheS5oYXNfY3Ny
ID0gMDsKIAl9CiAKIAkvKiBJbml0aWFsaXplIHNsaWNlL3N1YnNsaWNlL0VVIGluZm8gKi8KLS0g
CjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
