Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3749E14922C
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jan 2020 00:53:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BCF172BE8;
	Fri, 24 Jan 2020 23:53:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D116E72BE8
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 23:53:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 15:53:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,359,1574150400"; d="scan'208";a="400807383"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga005.jf.intel.com with ESMTP; 24 Jan 2020 15:53:39 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:54:40 -0800
Message-Id: <20200124235440.15974-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/dp: Modeset only the tiled connectors
 with CRTC
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

SW4gY2FzZSBvZiB0aWxlZCBjb25uZWN0b3JzIGlmIG9uZSBvZiB0aGUgdGlsZWQgY29ubmVjdG9y
cyBpbiBzdGF0ZQpuZWVkcyBhIGZ1bGwgbW9kZXNldCB3ZSBhZGQgb3RoZXIgdGlsZWQgY29ubmVj
dG9ycyB0byB0aGUgc3RhdGUuIE1ha2Ugc3VyZQp0aGF0IHRoZSBjb25uZWN0b3IgaGFzIGEgQ1JU
QyBiZWZvcmUgZm9yY2luZyBhIG1vZGVzZXQgb24gdGhhdCBlbHNlIGl0IGZhaWxzCmNvbW1pdHRp
bmcgdGhlIHN0YXRlLgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+CkZpeGVzOiBhNjAzZjViZDE2OTEgKCJkcm0vaTkxNS9kcDogTWFrZSBzdXJlIGFs
bCB0aWxlZCBjb25uZWN0b3JzIGdldCBhZGRlZCB0byB0aGUgc3RhdGUgd2l0aCBmdWxsIG1vZGVz
ZXQiKQpDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNz
dWVzLzUxNgpTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50
ZWwuY29tPgpBY2tlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyB8IDEwICsrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YwppbmRleCAzMmM2OTQwYzkwNzcuLjgxYWRkYWVhNjE2YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTEzMTU1LDExICsxMzE1NSwxMiBAQCBp
bnRlbF9tb2Rlc2V0X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2Nv
bmZpZykKIAl9CiAKIAkvKiBHZXQgdG90YWwgbnVtYmVyIG9mIHRpbGVkIGNvbm5lY3RvcnMgaW4g
c3RhdGUgdGhhdCBiZWxvbmcgdG8KLQkgKiB0aGlzIHRpbGUgZ3JvdXAuCisJICogdGhpcyB0aWxl
IGdyb3VwIGFuZCB0aGF0IGhhdmUgYSBDUlRDCiAJICovCiAJZm9yX2VhY2hfbmV3X2Nvbm5lY3Rv
cl9pbl9zdGF0ZShzdGF0ZSwgY29ubmVjdG9yLCBjb25uZWN0b3Jfc3RhdGUsIGkpIHsKIAkJaWYg
KGNvbm5lY3Rvci0+aGFzX3RpbGUgJiYKLQkJICAgIGNvbm5lY3Rvci0+dGlsZV9ncm91cC0+aWQg
PT0gdGlsZV9ncm91cF9pZCkKKwkJICAgIGNvbm5lY3Rvci0+dGlsZV9ncm91cC0+aWQgPT0gdGls
ZV9ncm91cF9pZCAmJgorCQkgICAgY29ubmVjdG9yX3N0YXRlLT5jcnRjKQogCQkJbnVtX3RpbGVk
X2Nvbm5zKys7CiAJfQogCkBAIC0xNDUwNiwxMyArMTQ1MDcsMTQgQEAgaW50ZWxfbW9kZXNldF9h
bGxfdGlsZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsIGludCB0aWxlX2dycF9p
ZCkKIAkJCWNvbnRpbnVlOwogCQljb25uX3N0YXRlID0gZHJtX2F0b21pY19nZXRfY29ubmVjdG9y
X3N0YXRlKCZzdGF0ZS0+YmFzZSwKIAkJCQkJCQkgICAgY29ubmVjdG9yKTsKKwogCQlpZiAoSVNf
RVJSKGNvbm5fc3RhdGUpKSB7CiAJCQlyZXQgPSAgUFRSX0VSUihjb25uX3N0YXRlKTsKIAkJCWJy
ZWFrOwogCQl9CiAKIAkJaWYgKCFjb25uX3N0YXRlLT5jcnRjKQotCQkJY29udGludWU7CisJCQli
cmVhazsKIAogCQljcnRjX3N0YXRlID0gZHJtX2F0b21pY19nZXRfY3J0Y19zdGF0ZSgmc3RhdGUt
PmJhc2UsCiAJCQkJCQkgICAgICAgY29ubl9zdGF0ZS0+Y3J0Yyk7CkBAIC0xNDU0OSw2ICsxNDU1
MSw4IEBAIGludGVsX2F0b21pY19jaGVja190aWxlZF9jb25ucyhzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSkKIAkJCWNvbnRpbnVlOwogCQlpZiAoIWludGVsX2Nvbm5lY3Rvcl9uZWVk
c19tb2Rlc2V0KHN0YXRlLCBjb25uZWN0b3IpKQogCQkJY29udGludWU7CisJCWlmICghbmV3X2Nv
bm5fc3RhdGUtPmNydGMpCisJCQljb250aW51ZTsKIAogCQlyZXQgPSBpbnRlbF9tb2Rlc2V0X2Fs
bF90aWxlcyhzdGF0ZSwgY29ubmVjdG9yLT50aWxlX2dyb3VwLT5pZCk7CiAJCWlmIChyZXQpCi0t
IAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
