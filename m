Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA674AB46
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 22:00:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1536F898E8;
	Tue, 18 Jun 2019 20:00:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2511089944
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 20:00:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 13:00:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,390,1557212400"; d="scan'208";a="182514427"
Received: from josouza-mobl.jf.intel.com ([10.24.8.250])
 by fmsmga004.fm.intel.com with ESMTP; 18 Jun 2019 13:00:07 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jun 2019 13:00:00 -0700
Message-Id: <20190618200000.15847-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190618200000.15847-1-jose.souza@intel.com>
References: <20190618200000.15847-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/ehl/dsi: Enable AFE over PPI strap
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIG90aGVyIGFkZGl0aW9uYWwgc3RlcCBpbiB0aGUgRFNJIHNlcXVxZW5jZSBmb3IgRUhMLgoK
QlNwZWM6IDIwNTk3CkNjOiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgpDYzog
SmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgfCA4ICsrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oICAgICAgICB8IDQgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xf
ZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwppbmRleCBlZTg1
NDI4YjMwOWYuLjNhNjAxYzczOWZjNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pY2xfZHNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xf
ZHNpLmMKQEAgLTU0Miw2ICs1NDIsMTQgQEAgc3RhdGljIHZvaWQgZ2VuMTFfZHNpX3NldHVwX2Rw
aHlfdGltaW5ncyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIAkJCUk5MTVfV1JJVEUo
RFNJX1RBX1RJTUlOR19QQVJBTShwb3J0KSwgdG1wKTsKIAkJfQogCX0KKworCWlmIChJU19FTEtI
QVJUTEFLRShkZXZfcHJpdikpIHsKKwkJZm9yX2VhY2hfZHNpX3BvcnQocG9ydCwgaW50ZWxfZHNp
LT5wb3J0cykgeworCQkJdG1wID0gSTkxNV9SRUFEKElDTF9EUEhZX0NIS04ocG9ydCkpOworCQkJ
dG1wIHw9IElDTF9EUEhZX0NIS05fQUZFX09WRVJfUFBJX1NUUkFQOworCQkJSTkxNV9XUklURShJ
Q0xfRFBIWV9DSEtOKHBvcnQpLCB0bXApOworCQl9CisJfQogfQogCiBzdGF0aWMgdm9pZCBnZW4x
MV9kc2lfZ2F0ZV9jbG9ja3Moc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAppbmRleCAxZjJjM2ViZGY4N2IuLmRjN2IzNGNmOGI0MiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCkBAIC0xOTkzLDYgKzE5OTMsMTAgQEAgZW51bSBpOTE1X3Bvd2VyX3dl
bGxfaWQgewogI2RlZmluZSAgIE5fU0NBTEFSKHgpCQkJKCh4KSA8PCAyNCkKICNkZWZpbmUgICBO
X1NDQUxBUl9NQVNLCQkJKDB4N0YgPDwgMjQpCiAKKyNkZWZpbmUgX0lDTF9EUEhZX0NIS05fUkVH
CQkJMHgxOTQKKyNkZWZpbmUgSUNMX0RQSFlfQ0hLTihwb3J0KQkJCV9NTUlPKF9JQ0xfQ09NQk9Q
SFkocG9ydCkgKyBfSUNMX0RQSFlfQ0hLTl9SRUcpCisjZGVmaW5lICAgSUNMX0RQSFlfQ0hLTl9B
RkVfT1ZFUl9QUElfU1RSQVAJKDEgPDwgNykKKwogI2RlZmluZSBNR19QSFlfUE9SVF9MTihsbiwg
cG9ydCwgbG4wcDEsIGxuMHAyLCBsbjFwMSkgXAogCV9NTUlPKF9QT1JUKChwb3J0KSAtIFBPUlRf
QywgbG4wcDEsIGxuMHAyKSArIChsbikgKiAoKGxuMXAxKSAtIChsbjBwMSkpKQogCi0tIAoyLjIy
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
