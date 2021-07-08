Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D233C1AE0
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 23:14:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43F636E9B6;
	Thu,  8 Jul 2021 21:14:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BB9C6E9B4
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 21:14:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="207775061"
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="207775061"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 14:14:21 -0700
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="560755477"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 14:14:21 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jul 2021 14:18:26 -0700
Message-Id: <20210708211827.288601-6-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708211827.288601-1-jose.souza@intel.com>
References: <20210708211827.288601-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/display/adl_p: Correctly program
 MBUS DBOX A credits
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

QWxkZXJsYWtlLVAgaGF2ZSBkaWZmZXJlbnQgdmFsdWVzIGZvciBNQlVTIERCT1ggQSBjcmVkaXRz
IGRlcGVuZGluZwppZiBNQlVTIGpvaW4gaXMgZW5hYmxlZCBvciBub3QuCgpCU3BlYzogNTAzNDMK
QlNwZWM6IDU0MzY5CkNjOiBNYXR0IEF0d29vZCA8bWF0dGhldy5zLmF0d29vZEBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwg
MTYgKysrKysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwppbmRleCA2NWRkYjZjYTE2ZTY3Li5mZTM4MDg5NmViOTllIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMzQwMCwxMyArMzQwMCwxNyBA
QCBzdGF0aWMgdm9pZCBnbGtfcGlwZV9zY2FsZXJfY2xvY2tfZ2F0aW5nX3dhKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgQ0xLR0FU
RV9ESVNfUFNMKHBpcGUpLCB2YWwpOwogfQogCi1zdGF0aWMgdm9pZCBpY2xfcGlwZV9tYnVzX2Vu
YWJsZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKK3N0YXRpYyB2b2lkIGljbF9waXBlX21idXNf
ZW5hYmxlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLCBib29sIGpvaW5lZF9tYnVzKQogewogCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYp
OwogCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKIAl1MzIgdmFsOwogCi0JdmFsID0gTUJV
U19EQk9YX0FfQ1JFRElUKDIpOworCS8qIFdhXzIyMDEwOTQ3MzU4OmFkbC1wICovCisJaWYgKElT
X0FMREVSTEFLRV9QKGRldl9wcml2KSkKKwkJdmFsID0gam9pbmVkX21idXMgPyBNQlVTX0RCT1hf
QV9DUkVESVQoNikgOiBNQlVTX0RCT1hfQV9DUkVESVQoNCk7CisJZWxzZQorCQl2YWwgPSBNQlVT
X0RCT1hfQV9DUkVESVQoMik7CiAKIAlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEyKSB7
CiAJCXZhbCB8PSBNQlVTX0RCT1hfQldfQ1JFRElUKDIpOwpAQCAtMzU2MSw4ICszNTY1LDEyIEBA
IHN0YXRpYyB2b2lkIGhzd19jcnRjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwKIAlpZiAoZGV2X3ByaXYtPmRpc3BsYXkuaW5pdGlhbF93YXRlcm1hcmtzKQogCQlkZXZf
cHJpdi0+ZGlzcGxheS5pbml0aWFsX3dhdGVybWFya3Moc3RhdGUsIGNydGMpOwogCi0JaWYgKERJ
U1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMSkKLQkJaWNsX3BpcGVfbWJ1c19lbmFibGUoY3J0Yyk7
CisJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMSkgeworCQljb25zdCBzdHJ1Y3QgaW50
ZWxfZGJ1Zl9zdGF0ZSAqZGJ1Zl9zdGF0ZSA9CisJCQkJaW50ZWxfYXRvbWljX2dldF9uZXdfZGJ1
Zl9zdGF0ZShzdGF0ZSk7CisKKwkJaWNsX3BpcGVfbWJ1c19lbmFibGUoY3J0YywgZGJ1Zl9zdGF0
ZS0+am9pbmVkX21idXMpOworCX0KIAogCWlmIChuZXdfY3J0Y19zdGF0ZS0+Ymlnam9pbmVyX3Ns
YXZlKQogCQlpbnRlbF9jcnRjX3ZibGFua19vbihuZXdfY3J0Y19zdGF0ZSk7Ci0tIAoyLjMyLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
