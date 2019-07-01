Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE1C5B525
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 08:38:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA8068961E;
	Mon,  1 Jul 2019 06:38:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11E5C8961E
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 06:38:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jun 2019 23:33:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,437,1557212400"; 
 d="scan'208,223";a="153988561"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga007.jf.intel.com with ESMTP; 30 Jun 2019 23:33:51 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 11:56:18 +0530
Message-Id: <20190701062632.456-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701062632.456-1-animesh.manna@intel.com>
References: <20190701062632.456-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/15] drm/i915/dsb: feature flag added for
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
eCA3ZTk4MWIwM2ZhY2UuLmNhNmQzZTJmZTdhNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBA
IC0yMjg3LDYgKzIyODcsOCBAQCBJU19TVUJQTEFURk9STShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwKIAogI2RlZmluZSBIQVNfSVBDKGRldl9wcml2KQkJIChJTlRFTF9JTkZP
KGRldl9wcml2KS0+ZGlzcGxheS5oYXNfaXBjKQogCisjZGVmaW5lIEhBU19EU0IoZGV2X3ByaXYp
CShJTlRFTF9JTkZPKGRldl9wcml2KS0+ZGlzcGxheS5oYXNfZHNiKQorCiAvKgogICogRm9yIG5v
dywgYW55dGhpbmcgd2l0aCBhIEd1QyByZXF1aXJlcyB1Q29kZSBsb2FkaW5nLCBhbmQgdGhlbiBz
dXBwb3J0cwogICogY29tbWFuZCBzdWJtaXNzaW9uIG9uY2UgbG9hZGVkLiBCdXQgdGhlc2UgYXJl
IGxvZ2ljYWxseSBpbmRlcGVuZGVudApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9p
bmZvLmgKaW5kZXggZGRhZmM4MTliZjMwLi43YWZlNTM3ZjkzMzUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaApAQCAtMTMyLDYgKzEzMiw3IEBAIGVudW0gaW50ZWxf
cHBndHRfdHlwZSB7CiAJZnVuYyhoYXNfY3NyKTsgXAogCWZ1bmMoaGFzX2RkaSk7IFwKIAlmdW5j
KGhhc19kcF9tc3QpOyBcCisJZnVuYyhoYXNfZHNiKTsgXAogCWZ1bmMoaGFzX2ZiYyk7IFwKIAlm
dW5jKGhhc19nbWNoKTsgXAogCWZ1bmMoaGFzX2hvdHBsdWcpOyBcCi0tIAoyLjIxLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
