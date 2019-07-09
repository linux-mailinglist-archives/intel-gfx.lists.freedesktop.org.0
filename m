Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D82E638EC
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 17:54:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A3F289D39;
	Tue,  9 Jul 2019 15:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9B2689D39
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 15:54:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 08:54:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="165800670"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by fmsmga008.fm.intel.com with ESMTP; 09 Jul 2019 08:54:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 08:54:03 -0700
Message-Id: <20190709155403.29370-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190709104904.GB15433@ideak-desk.fi.intel.com>
References: <20190709104904.GB15433@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/4] drm/i915: fix include order in intel_tc.*
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

U2VwYXJhdGUgbG9jYWwgaW5jbHVkZXMgd2l0aCBhIGJsYW5rIGxpbmUgYW5kIHNvcnQgdGhlIGdy
b3VwcwphbHBoYWJldGljYWxseS4KCnYyOiBkb24ndCBtYWtlIGludGVsX3RjLmggYmUgdGhlIGZp
cnN0IGluY2x1ZGUKdjM6IGRvbid0IG1ha2UgbG9jYWwgaW5jbHVkZXMgYmUgaW5jbHVkZWQgZmly
c3QKClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyB8IDIgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaCB8IDMgKystCiAyIGZpbGVz
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKaW5kZXggMWE5ZGQzMmZiMGE1Li4wYzk2OWY2ZmQ3MTQg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKQEAgLTMsOSArMyw5IEBA
CiAgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgogICovCiAKKyNpbmNsdWRl
ICJpOTE1X2Rydi5oIgogI2luY2x1ZGUgImludGVsX2Rpc3BsYXkuaCIKICNpbmNsdWRlICJpbnRl
bF9kcF9tc3QuaCIKLSNpbmNsdWRlICJpOTE1X2Rydi5oIgogI2luY2x1ZGUgImludGVsX3RjLmgi
CiAKIHN0YXRpYyBjb25zdCBjaGFyICp0Y19wb3J0X21vZGVfbmFtZShlbnVtIHRjX3BvcnRfbW9k
ZSBtb2RlKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90
Yy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5oCmluZGV4IDBkODQx
MWQ0YTkxZC4uNzA2YzViYzA1MGE1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3RjLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF90Yy5oCkBAIC02LDggKzYsOSBAQAogI2lmbmRlZiBfX0lOVEVMX1RDX0hfXwogI2RlZmluZSBf
X0lOVEVMX1RDX0hfXwogCi0jaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KICNpbmNsdWRlIDxsaW51
eC9tdXRleC5oPgorI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CisKICNpbmNsdWRlICJpbnRlbF9k
cnYuaCIKIAogYm9vbCBpbnRlbF90Y19wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZGlnaXRh
bF9wb3J0ICpkaWdfcG9ydCk7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
