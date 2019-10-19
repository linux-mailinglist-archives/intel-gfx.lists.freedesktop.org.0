Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FF0DD5C8
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2019 02:41:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E38D6E072;
	Sat, 19 Oct 2019 00:41:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BA876E072
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Oct 2019 00:41:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 17:41:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,313,1566889200"; d="scan'208";a="226725712"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by fmsmga002.fm.intel.com with ESMTP; 18 Oct 2019 17:41:30 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Oct 2019 17:41:22 -0700
Message-Id: <20191019004124.371929-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191019004124.371929-1-jose.souza@intel.com>
References: <20191019004124.371929-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/display: Check if FBC is fused off
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

Q2hlY2sgaWYgRkJDIGlzIGZ1c2VkIG9mZiBhbmQgaGFuZGxlIGl0LgoKQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBNYXJ0aW4gUGVyZXMgPG1h
cnRpbi5wZXJlc0BsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggICAgICAgICAgfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rl
dmljZV9pbmZvLmMgfCAzICsrKwogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBlYWNjNWJhMzA3YjAuLjMxMzc1ZGRjMmIzYiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC03NjUzLDYgKzc2NTMsNyBAQCBlbnVtIHsKIAogI2Rl
ZmluZSBTS0xfREZTTQkJCQlfTU1JTygweDUxMDAwKQogI2RlZmluZSBTS0xfREZTTV9JTlRFUk5B
TF9ESVNQTEFZX0RJU0FCTEUJKDEgPDwgMzApCisjZGVmaW5lIFNLTF9ERlNNX0RJU1BMQVlfUE1f
RElTQUJMRQkJKDEgPDwgMjcpCiAjZGVmaW5lIFNLTF9ERlNNX0RJU1BMQVlfSERDUF9ESVNBQkxF
CQkoMSA8PCAyNSkKICNkZWZpbmUgU0tMX0RGU01fQ0RDTEtfTElNSVRfTUFTSwkJKDMgPDwgMjMp
CiAjZGVmaW5lIFNLTF9ERlNNX0NEQ0xLX0xJTUlUXzY3NQkJKDAgPDwgMjMpCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwppbmRleCA3NTNjMmNmMmZiZjQuLmI2YTlmNTI3
ZjhmOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCkBAIC05OTAs
NiArOTkwLDkgQEAgdm9pZCBpbnRlbF9kZXZpY2VfaW5mb19ydW50aW1lX2luaXQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiAJCWlmIChkZnNtICYgU0tMX0RGU01fRElTUExB
WV9IRENQX0RJU0FCTEUpCiAJCQlpbmZvLT5kaXNwbGF5Lmhhc19oZGNwID0gMDsKKworCQlpZiAo
ZGZzbSAmIFNLTF9ERlNNX0RJU1BMQVlfUE1fRElTQUJMRSkKKwkJCWluZm8tPmRpc3BsYXkuaGFz
X2ZiYyA9IDA7CiAJfQogCiAJLyogSW5pdGlhbGl6ZSBzbGljZS9zdWJzbGljZS9FVSBpbmZvICov
Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
