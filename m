Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA359726A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 08:40:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CE8B6E915;
	Wed, 21 Aug 2019 06:40:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E80E56E912
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 06:40:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 23:40:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,411,1559545200"; d="scan'208";a="195935816"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 23:40:27 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 12:02:32 +0530
Message-Id: <20190821063236.19705-13-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821063236.19705-1-animesh.manna@intel.com>
References: <20190821063236.19705-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 12/15] drm/i915/dsb: Early prepare of dsb
 context.
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

VGhlIGRzYiBnZXQgY2FsbCBhZGRlZCBwYXJ0IG9mIHRoZSBwcmVwYXJlIHNvIHRoYXQgd2UgZG9u
J3QKaGF2ZSB0aGluZ3MgdGhhdCBjYW4gZmFpbCBpbiB0aGUgY29tbWl0IHByb3Blci4KClRoZSBh
bGxvY2F0ZWQgZHNiLWNvbnRleHQgd2lsbCBiZSB0cmFja2VkIHVuZGVyIGludGVsX2NydGNfc3Rh
dGUKaW5zdGVhZCBvZiBpbnRlbF9jcnRjIHBlciBhdG9taWMtY29tbWl0LgoKQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAg
ICAgICB8IDExICsrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaCB8ICAyICsrCiAyIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4
IGI1MWQxY2ViODczOS4uYzZhNWYzOGJkYzg3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTM4MzMsNiArMTM4MzMsMTYgQEAgc3RhdGljIHZv
aWQgc2tsX3VwZGF0ZV9jcnRjcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAkJ
aWNsX2RidWZfc2xpY2VzX3VwZGF0ZShkZXZfcHJpdiwgcmVxdWlyZWRfc2xpY2VzKTsKIH0KIAor
c3RhdGljIHZvaWQgaW50ZWxfcHJlcGFyZV9kc2Ioc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUpCit7CisJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNvbmZpZzsKKwlzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YzsKKwlpbnQgaTsKKworCWZvcl9lYWNoX25ld19pbnRlbF9jcnRjX2luX3N0
YXRlKHN0YXRlLCBjcnRjLCBjb25maWcsIGkpCisJCWNvbmZpZy0+ZHNiID0gaW50ZWxfZHNiX2dl
dChjcnRjKTsKK30KKwogc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2hlbHBlcl9mcmVlX3N0YXRl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAlzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwgKm5leHQ7CkBAIC0xNDE4NSw2ICsxNDE5NSw3IEBAIHN0YXRpYyBp
bnQgaW50ZWxfYXRvbWljX2NvbW1pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCWRldl9wcml2
LT53bS5kaXN0cnVzdF9iaW9zX3dtID0gZmFsc2U7CiAJaW50ZWxfc2hhcmVkX2RwbGxfc3dhcF9z
dGF0ZShzdGF0ZSk7CiAJaW50ZWxfYXRvbWljX3RyYWNrX2ZicyhzdGF0ZSk7CisJaW50ZWxfcHJl
cGFyZV9kc2Ioc3RhdGUpOwogCiAJaWYgKHN0YXRlLT5tb2Rlc2V0KSB7CiAJCW1lbWNweShkZXZf
cHJpdi0+bWluX2NkY2xrLCBzdGF0ZS0+bWluX2NkY2xrLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAppbmRleCBlNjI0NTBhNzJkYzIu
LjBlZWU2NWIyZWIxYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmgKQEAgLTk4NCw2ICs5ODQsOCBAQCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSB7CiAKIAkvKiBGb3J3YXJkIEVycm9yIGNvcnJlY3Rpb24gU3RhdGUgKi8KIAlib29s
IGZlY19lbmFibGU7CisKKwlzdHJ1Y3QgaW50ZWxfZHNiICpkc2I7CiB9OwogCiBzdHJ1Y3QgaW50
ZWxfY3J0YyB7Ci0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
