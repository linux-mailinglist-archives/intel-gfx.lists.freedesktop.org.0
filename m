Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CF111481E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 21:31:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 945B06E17F;
	Thu,  5 Dec 2019 20:31:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD2B56E17F
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 20:31:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 12:31:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,282,1571727600"; d="scan'208";a="243385800"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.98.40.67])
 by fmsmga002.fm.intel.com with ESMTP; 05 Dec 2019 12:31:24 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Dec 2019 12:31:19 -0800
Message-Id: <20191205203121.53030-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 1/3] drm/i915/display: Do not check for the
 ddb allocations of turned off pipes
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

SXQgc2hvdWxkIG5vdCBjYXJlIGFib3V0IEREQiBhbGxvY2F0aW9ucyBvZiBwaXBlcyBnb2luZyB0
aHJvdWdoCmEgZnVsbG1vZGVzZXQsIGFzIGF0IHRoaXMgcG9pbnQgdGhvc2UgcGlwZXMgYXJlIGRp
c2FibGVkLgpUaGUgY29tbWVudCBpbiB0aGUgY29kZSBhbHNvIHBvaW50cyB0byB0aGF0IGJ1dCB0
aGF0IHdhcyBub3Qgd2hhdAp3YXMgYmVpbmcgZXhlY3V0ZWQuCgpDYzogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBlYjA1MDVhNjZlYTguLjY4NTc1NDU3ZDQwZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE0
NjAzLDcgKzE0NjAzLDcgQEAgc3RhdGljIHZvaWQgc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMo
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAKIAlmb3JfZWFjaF9vbGRuZXdfaW50
ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0
YXRlLCBpKQogCQkvKiBpZ25vcmUgYWxsb2NhdGlvbnMgZm9yIGNydGMncyB0aGF0IGhhdmUgYmVl
biB0dXJuZWQgb2ZmLiAqLwotCQlpZiAobmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSkKKwkJaWYg
KCFuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSAmJiBuZXdfY3J0Y19zdGF0ZS0+aHcuYWN0
aXZlKQogCQkJZW50cmllc1tpXSA9IG9sZF9jcnRjX3N0YXRlLT53bS5za2wuZGRiOwogCiAJLyog
SWYgMm5kIERCdWYgc2xpY2UgcmVxdWlyZWQsIGVuYWJsZSBpdCBoZXJlICovCi0tIAoyLjI0LjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
