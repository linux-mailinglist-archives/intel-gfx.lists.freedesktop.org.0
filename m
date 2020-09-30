Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 762D327E176
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 08:43:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6395C6E512;
	Wed, 30 Sep 2020 06:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 315E16E509
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 06:42:49 +0000 (UTC)
IronPort-SDR: e5k9jLcVryfCzuedUlRWXXYYniPwcDKQ7fSjKGwTJnmZNZDFpN+7zvoAVUtJ8LqWuUvNv4ONPj
 DJIft6FedYXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="142387764"
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="142387764"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:48 -0700
IronPort-SDR: bHM9nPu58RFjBObiIEvFUAmUVh/cTLU9q0zOmFgZaJDuwNDilKL+DGJyR9Ucgh8w/beGo4XYQ+
 gdOiv9MQ+iKw==
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="312487724"
Received: from cdgarci1-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.213.164.152])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:48 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 23:42:21 -0700
Message-Id: <20200930064234.85769-12-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200930064234.85769-1-lucas.demarchi@intel.com>
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 11/24] drm/i915/dg1: invert HPD pins
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

RnJvbTogQ2xpbnRvbiBBIFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+CgpIUEQg
cGlucyBhcmUgaW52ZXJ0ZWQgZm9yIERHMSBwbGF0Zm9ybS4KCkJzcGVjOiA0OTk1NgpDYzogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVy
IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDbGludG9uIEEgVGF5
bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1h
cmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jIHwgOSArKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggfCA0ICsrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jCmluZGV4IDBkNmU0ODk0YjUwNS4uZDc2OTc0ZDk1N2IzIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfaXJxLmMKQEAgLTMyODgsNiArMzI4OCwxNSBAQCBzdGF0aWMgdm9pZCBqc3BfaHBk
X2lycV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIHN0YXRpYyB2
b2lkIGRnMV9ocGRfaXJxX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
IHsKKwl1MzIgdmFsOworCisJdmFsID0gSTkxNV9SRUFEKFNPVVRIX0NISUNLRU4xKTsKKwl2YWwg
fD0gKElOVkVSVF9ERElBX0hQRCB8CisJCUlOVkVSVF9ERElCX0hQRCB8CisJCUlOVkVSVF9ERElD
X0hQRCB8CisJCUlOVkVSVF9ERElEX0hQRCk7CisJSTkxNV9XUklURShTT1VUSF9DSElDS0VOMSwg
dmFsKTsKKwogCWljcF9ocGRfaXJxX3NldHVwKGRldl9wcml2LAogCQkJICBERzFfRERJX0hQRF9F
TkFCTEVfTUFTSywgMCk7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCAzMTBiYzU2OGE5
NjYuLmQzNjAwYTllNjM3MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC04Njk0LDYgKzg2
OTQsMTAgQEAgZW51bSB7CiAjZGVmaW5lIFNPVVRIX0NISUNLRU4xCQlfTU1JTygweGMyMDAwKQog
I2RlZmluZSAgRkRJQV9QSEFTRV9TWU5DX1NISUZUX09WUgkxOQogI2RlZmluZSAgRkRJQV9QSEFT
RV9TWU5DX1NISUZUX0VOCTE4CisjZGVmaW5lICBJTlZFUlRfRERJRF9IUEQJCQkoMSA8PCAxOCkK
KyNkZWZpbmUgIElOVkVSVF9ERElDX0hQRAkJCSgxIDw8IDE3KQorI2RlZmluZSAgSU5WRVJUX0RE
SUJfSFBECQkJKDEgPDwgMTYpCisjZGVmaW5lICBJTlZFUlRfRERJQV9IUEQJCQkoMSA8PCAxNSkK
ICNkZWZpbmUgIEZESV9QSEFTRV9TWU5DX09WUihwaXBlKSAoMSA8PCAoRkRJQV9QSEFTRV9TWU5D
X1NISUZUX09WUiAtICgocGlwZSkgKiAyKSkpCiAjZGVmaW5lICBGRElfUEhBU0VfU1lOQ19FTihw
aXBlKSAoMSA8PCAoRkRJQV9QSEFTRV9TWU5DX1NISUZUX0VOIC0gKChwaXBlKSAqIDIpKSkKICNk
ZWZpbmUgIEZESV9CQ19CSUZVUkNBVElPTl9TRUxFQ1QJKDEgPDwgMTIpCi0tIAoyLjI4LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
