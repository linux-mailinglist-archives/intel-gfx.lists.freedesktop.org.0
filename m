Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D85638829E
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 20:36:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E1316EE7C;
	Fri,  9 Aug 2019 18:36:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D614A6EE7B
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 18:36:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 11:36:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,366,1559545200"; d="scan'208";a="193444119"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga001.fm.intel.com with ESMTP; 09 Aug 2019 11:36:13 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 10 Aug 2019 00:02:20 +0530
Message-Id: <20190809183223.12031-7-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190809183223.12031-1-anshuman.gupta@intel.com>
References: <20190809183223.12031-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 6/9] drm/i915/tgl: Add VIDEO power domain
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

VGhlIFBvd2VyIGRvbWFpbiBuYW1lIFZJREVPIGlzIGluc3BpcmVkIGZyb20gdGhlIGZhY3QgdGhh
dApEQzNDTyBzaG91bGQgYmUgZW5hYmxlZCBvbmx5IGR1cmluZyBWSURFTyBwbGF5YmFjay4KUE9X
RVJfRE9NQUlOX1ZJREVPIGlzIGEgaG9vayB0byAiREM1IE9mZiIgcG93ZXIgd2VsbCwKd2hpY2gg
Y2FuIGRpc2FsbG93IERDNS82IGFuZCBhbGxvdyBEQzNDTy4KCkNjOiBKYW5pIE5pa3VsYSA8amFu
aS5uaWt1bGFAaW50ZWwuY29tPgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpD
YzogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAzICsrKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmggfCAxICsKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICAgICAgIHwgNiArKysrKysK
IDMgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKaW5kZXggMDRhMDJjODhmZjkz
Li4yNjY3ZDIwNWZhMzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC0xMjIsNiArMTIyLDggQEAgaW50ZWxfZGlzcGxheV9w
b3dlcl9kb21haW5fc3RyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCQlyZXR1cm4g
IlZHQSI7CiAJY2FzZSBQT1dFUl9ET01BSU5fQVVESU86CiAJCXJldHVybiAiQVVESU8iOworCWNh
c2UgUE9XRVJfRE9NQUlOX1ZJREVPOgorCQlyZXR1cm4gIlZJREVPIjsKIAljYXNlIFBPV0VSX0RP
TUFJTl9BVVhfQToKIAkJcmV0dXJuICJBVVhfQSI7CiAJY2FzZSBQT1dFUl9ET01BSU5fQVVYX0I6
CkBAIC0yNzc4LDYgKzI3ODAsNyBAQCB2b2lkIGludGVsX2Rpc3BsYXlfcG93ZXJfcHV0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAogI2RlZmluZSBUR0xfRElTUExBWV9EQ19P
RkZfUE9XRVJfRE9NQUlOUyAoCQlcCiAJVEdMX1BXXzJfUE9XRVJfRE9NQUlOUyB8CQkJXAorCUJJ
VF9VTEwoUE9XRVJfRE9NQUlOX1ZJREVPKSB8CQkJXAogCUJJVF9VTEwoUE9XRVJfRE9NQUlOX01P
REVTRVQpIHwJCQlcCiAJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX0EpIHwJCQlcCiAJQklUX1VM
TChQT1dFUl9ET01BSU5fSU5JVCkpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9wb3dlci5oCmluZGV4IDQ2ZTFiY2ZhNDkwYS4uN2Y0ZGM4YmQyZWU0
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuaApAQCAtNjYsNiArNjYsNyBAQCBlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWlu
IHsKIAlQT1dFUl9ET01BSU5fUE9SVF9PVEhFUiwKIAlQT1dFUl9ET01BSU5fVkdBLAogCVBPV0VS
X0RPTUFJTl9BVURJTywKKwlQT1dFUl9ET01BSU5fVklERU8sCiAJUE9XRVJfRE9NQUlOX0FVWF9B
LAogCVBPV0VSX0RPTUFJTl9BVVhfQiwKIAlQT1dFUl9ET01BSU5fQVVYX0MsCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaAppbmRleCA3Y2EwNzAzMjA5YTQuLjBhMDI1YzY5MjExOCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oCkBAIC0zMzMsNiArMzMzLDEyIEBAIHN0cnVjdCBpbnRlbF9jc3IgewogCXUz
MiBhbGxvd2VkX2RjX21hc2s7CiAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7CiAJYm9vbCBwcmVm
ZXJfZGMzY287CisJaW50ZWxfd2FrZXJlZl90IGRjNV93YWtlcmVmOworCS8qCisJICogTXV0ZXgg
dG8gcHJvdGVjdCBkYzVfd2FrZXJlZiB3aGljaCBtYWtlIG1haW50YWluIHByb3BlcgorCSAqIHBv
d2VyIGRvbWFpbiByZWZlcmVuY2UgY291bnQgb2YgUE9XRVJfRE9NQUlOX1ZJREVPCisJICovCisJ
c3RydWN0IG11dGV4IGRjNV9tdXRleDsKIH07CiAKIGVudW0gaTkxNV9jYWNoZV9sZXZlbCB7Ci0t
IAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
