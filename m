Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C8B9F322
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 21:18:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0BB689B69;
	Tue, 27 Aug 2019 19:18:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77F2C89B65
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 19:17:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 12:17:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,438,1559545200"; 
 d="scan'208,223";a="209863350"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga002.fm.intel.com with ESMTP; 27 Aug 2019 12:17:56 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Aug 2019 00:40:15 +0530
Message-Id: <20190827191026.26175-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190827191026.26175-1-animesh.manna@intel.com>
References: <20190827191026.26175-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 01/11] drm/i915/dsb: feature flag added for
 display state buffer.
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

RnJvbSBnZW4xMiBvbndhcmRzIERpc3BsYXkgU3RhdGUgQnVmZmVyKERTQikgaXMgaGFyZHdhcmUg
Y2FwYWJpbGl0eQphZGRlZCB3aGljaCBhbGxvd3MgZHJpdmVyIHRvIGJhdGNoIHN1Ym1pdCBkaXNw
bGF5IEhXIHByb2dyYW1taW5nLgpGZWF0dXJlIGZsYWcgaGFzX2RzYiBhZGRlZCB0byBpZGVudGlm
eSB0aGUgZHJpdmVyL3BsYXRmb3JtIHN1cHBvcnQKYXQgcnVudGltZS4KCkNjOiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlA
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgIHwg
MiArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCB8IDEgKwogMiBm
aWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRl
eCBiNDI2NTFhMzg3ZDkuLmQzMmNmZGI3OGI3NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBA
IC0xODU2LDYgKzE4NTYsOCBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpwZGV2X3RvX2k5MTUoc3RydWN0IHBjaV9kZXYgKnBkZXYpCiAJKEJVSUxEX0JVR19PTl9aRVJP
KCFfX2J1aWx0aW5fY29uc3RhbnRfcChuKSkgKyBcCiAJIElOVEVMX0lORk8oZGV2X3ByaXYpLT5n
ZW4gPT0gKG4pKQogCisjZGVmaW5lIEhBU19EU0IoZGV2X3ByaXYpCShJTlRFTF9JTkZPKGRldl9w
cml2KS0+ZGlzcGxheS5oYXNfZHNiKQorCiAvKgogICogUmV0dXJuIHRydWUgaWYgcmV2aXNpb24g
aXMgaW4gcmFuZ2UgW3NpbmNlLHVudGlsXSBpbmNsdXNpdmUuCiAgKgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RldmljZV9pbmZvLmgKaW5kZXggOTJlMGMyZTA5NTRjLi5lMjA2ZjI5OGY0OGUg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaApAQCAtMTM1LDYgKzEz
NSw3IEBAIGVudW0gaW50ZWxfcHBndHRfdHlwZSB7CiAJZnVuYyhoYXNfY3NyKTsgXAogCWZ1bmMo
aGFzX2RkaSk7IFwKIAlmdW5jKGhhc19kcF9tc3QpOyBcCisJZnVuYyhoYXNfZHNiKTsgXAogCWZ1
bmMoaGFzX2ZiYyk7IFwKIAlmdW5jKGhhc19nbWNoKTsgXAogCWZ1bmMoaGFzX2hvdHBsdWcpOyBc
Ci0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
