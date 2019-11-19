Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6555910251C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 14:04:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BAE46E8AA;
	Tue, 19 Nov 2019 13:04:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B83056E51B
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 13:04:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 05:04:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,324,1569308400"; d="scan'208";a="209189458"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga003.jf.intel.com with ESMTP; 19 Nov 2019 05:04:17 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2019 18:03:11 +0530
Message-Id: <20191119123316.5094-4-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20191119123316.5094-1-vandita.kulkarni@intel.com>
References: <20191119123316.5094-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V3 3/8] drm/i915/dsi: Add cmd mode flags in display
 mode private flags
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkaW5nIFRFIGZsYWdzIGFuZCBwZXJpb2RpYyBjb21tYW5kIG1vZGUgZmxhZ3MKYXMgcGFydCBv
ZiBwcml2YXRlIGZsYWdzIHRvIGluZGljYXRlIHdoYXQgVEUgaW50ZXJydXB0cwp3ZSB3b3VsZCBi
ZSBnZXR0aW5nIGluc3RlYWQgb2YgdmJsYW5rcyBpbiBjYXNlIG9mIG1pcGkgZHNpCmNvbW1hbmQg
bW9kZS4KCnYyOiBBZGQgVEUgZmxhZyBkZXNjcmlwdGlvbiAoSmFuaSkKClJldmlld2VkLWJ5OiBK
YW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWYW5kaXRh
IEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8IDEwICsrKysrKysrKysKIDEg
ZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAppbmRleCA4M2VhMDQxNDliNzcuLjFl
MDcxY2ZiM2ZmNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmgKQEAgLTY1Niw2ICs2NTYsMTYgQEAgc3RydWN0IGludGVsX2NydGNf
c2NhbGVyX3N0YXRlIHsKICNkZWZpbmUgSTkxNV9NT0RFX0ZMQUdfR0VUX1NDQU5MSU5FX0ZST01f
VElNRVNUQU1QICgxPDwxKQogLyogRmxhZyB0byB1c2UgdGhlIHNjYW5saW5lIGNvdW50ZXIgaW5z
dGVhZCBvZiB0aGUgcGl4ZWwgY291bnRlciAqLwogI2RlZmluZSBJOTE1X01PREVfRkxBR19VU0Vf
U0NBTkxJTkVfQ09VTlRFUiAoMTw8MikKKy8qCisgKiBURTAgb3IgVEUxIGZsYWcgaXMgc2V0IGlm
IHRoZSBjcnRjIGhhcyBhIERTSSBlbmNvZGVyIHdoaWNoCisgKiBpcyBvcGVyYXRpbmcgaW4gY29t
bWFuZCBtb2RlLgorICogRmxhZyB0byB1c2UgVEUgZnJvbSBEU0kwIGluc3RlYWQgb2YgVkJJIGlu
IGNvbW1hbmQgbW9kZQorICovCisjZGVmaW5lIEk5MTVfTU9ERV9GTEFHX0RTSV9VU0VfVEUwICgx
PDwzKQorLyogRmxhZyB0byB1c2UgVEUgZnJvbSBEU0kxIGluc3RlYWQgb2YgVkJJIGluIGNvbW1h
bmQgbW9kZSAqLworI2RlZmluZSBJOTE1X01PREVfRkxBR19EU0lfVVNFX1RFMSAoMTw8NCkKKy8q
IEZsYWcgdG8gaW5kaWNhdGUgbWlwaSBkc2kgcGVyaW9kaWMgY29tbWFuZCBtb2RlIHdoZXJlIHdl
IGRvIG5vdCBnZXQgVEUgKi8KKyNkZWZpbmUgSTkxNV9NT0RFX0ZMQUdfRFNJX1BFUklPRElDX0NN
RF9NT0RFICgxPDw1KQogCiBzdHJ1Y3QgaW50ZWxfcGlwZV93bSB7CiAJc3RydWN0IGludGVsX3dt
X2xldmVsIHdtWzVdOwotLSAKMi4yMS4wLjUuZ2FlYjU4MmEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
