Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C57D069F96
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2019 01:50:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B06189DBC;
	Mon, 15 Jul 2019 23:50:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9835A89DBC
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jul 2019 23:50:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jul 2019 16:50:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,494,1557212400"; d="scan'208";a="190726587"
Received: from anusha.jf.intel.com ([10.54.75.177])
 by fmsmga004.fm.intel.com with ESMTP; 15 Jul 2019 16:50:44 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Jul 2019 16:40:56 -0700
Message-Id: <20190715234056.17112-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/dp/dsc: Add Support for all BPCs supported
 by TGL
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

RFNDIGVuZ2luZSBvbiBJQ0wgc3VwcG9ydHMgb25seSA4IGFuZCAxMCBCUEMgYXMgdGhlIGlucHV0
CkJQQy4gQnV0IERTQyBlbmdpbmUgaW4gVEdMIHN1cHBvcnRzIDgsIDEwIGFuZCAxMiBCUEMuCkFk
ZCAxMiBCUEMgc3VwcG9ydCBmb3IgRFNDIHdoaWxlIGNhbGN1bGF0aW5nIGNvbXByZXNzaW9uCmNv
bmZpZ3VyYXRpb24uCgp2MjogUmVtb3ZlIHRoZSBzZXBhcmF0ZSBkZWZpbmUgVEdMX0RQX0RTQ19N
QVhfU1VQUE9SVEVEX0JQQwphbmQgdXNlIHRoZSB2YWx1ZSBkaXJlY3RseS4oTW9yZSBzdWNoIGRl
ZmluZXMgY2FuIGJlIHJlbW92ZWQKYXMgcGFydCBvZiBmdXR1cmUgcGF0Y2hlcykuIChWaWxsZSkK
CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzog
TWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
QW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDggKysrKysrLS0KIDEgZmlsZSBjaGFu
Z2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDBlYjVkNjZmODdhNy4uYWE4YmZiNzU0ZmMxIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0xOTE0LDggKzE5MTQsMTIg
QEAgc3RhdGljIGludCBpbnRlbF9kcF9kc2NfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwKIAlpZiAoIWludGVsX2RwX3N1cHBvcnRzX2RzYyhpbnRlbF9kcCwgcGlwZV9j
b25maWcpKQogCQlyZXR1cm4gLUVJTlZBTDsKIAotCWRzY19tYXhfYnBjID0gbWluX3QodTgsIERQ
X0RTQ19NQVhfU1VQUE9SVEVEX0JQQywKLQkJCSAgICBjb25uX3N0YXRlLT5tYXhfcmVxdWVzdGVk
X2JwYyk7CisJLyogTWF4IERTQyBJbnB1dCBCUEMgZm9yIFRHTCsgaXMgMTIgKi8KKwlpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSAxMikKKwkJZHNjX21heF9icGMgPSBtaW5fdCh1OCwgMTIsIGNv
bm5fc3RhdGUtPm1heF9yZXF1ZXN0ZWRfYnBjKTsKKwllbHNlCisJCWRzY19tYXhfYnBjID0gbWlu
X3QodTgsIERQX0RTQ19NQVhfU1VQUE9SVEVEX0JQQywKKwkJCQkgICAgY29ubl9zdGF0ZS0+bWF4
X3JlcXVlc3RlZF9icGMpOwogCiAJcGlwZV9icHAgPSBpbnRlbF9kcF9kc2NfY29tcHV0ZV9icHAo
aW50ZWxfZHAsIGRzY19tYXhfYnBjKTsKIAlpZiAocGlwZV9icHAgPCBEUF9EU0NfTUlOX1NVUFBP
UlRFRF9CUEMgKiAzKSB7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
