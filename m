Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC9C117116
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 17:03:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 092BB6E4D7;
	Mon,  9 Dec 2019 16:03:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 651B56E4D7
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 16:03:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 08:03:28 -0800
X-IronPort-AV: E=Sophos;i="5.69,296,1571727600"; d="scan'208";a="220007315"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 08:03:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Dec 2019 18:02:07 +0200
Message-Id: <c00f21965dce5572756dcc1ecda04a7e2e76a027.1575907078.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575907078.git.jani.nikula@intel.com>
References: <cover.1575907078.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v4 14/15] drm/i915/dsi: Fix state mismatch warns
 for horizontal timings with DSC
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

RnJvbTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+CgpXaGVu
IERTQyBpcyBlbmFibGVkIGNvbnNpZGVyIHRoZSBjb21wcmVzc2lvbiByYXRpbyB0aGF0IHdhcyB1
c2VkIGR1cmluZwpob3Jpem9udGFsIHRpbWluZyBjYWxjdWxhdGlvbnMuCgpUaGlzIG1heSBzdGls
bCBsZWFkIHRvIHdhcm5zIGR1ZSB0byByb3VuZGluZyBlcnJvcnMgaW4gdGhlIHJvdW5kLXRyaXAu
Cgp2MiBieSBKYW5pOgotIHJlYmFzZSBvbiB0b3Agb2YgdGhlIG1vcmUgZ2VuZXJpYyBkc2Mgc3Rh
dGUgcmVhZG91dAoKU2lnbmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxr
YXJuaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgfCAx
MiArKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwppbmRleCBjYWE0NzdjNGIxYWYuLmIxZDc3NWQ4
MzRkNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKQEAgLTEyNTUsNiAr
MTI1NSwxOCBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfZ2V0X3RpbWluZ3Moc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIsCiAJc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21v
ZGUgPQogCQkJCQkmcGlwZV9jb25maWctPmh3LmFkanVzdGVkX21vZGU7CiAKKwlpZiAocGlwZV9j
b25maWctPmRzYy5jb21wcmVzc2VkX2JwcCkgeworCQlpbnQgZGl2ID0gcGlwZV9jb25maWctPmRz
Yy5jb21wcmVzc2VkX2JwcDsKKwkJaW50IG11bCA9IG1pcGlfZHNpX3BpeGVsX2Zvcm1hdF90b19i
cHAoaW50ZWxfZHNpLT5waXhlbF9mb3JtYXQpOworCisJCWFkanVzdGVkX21vZGUtPmNydGNfaHRv
dGFsID0KKwkJCURJVl9ST1VORF9VUChhZGp1c3RlZF9tb2RlLT5jcnRjX2h0b3RhbCAqIG11bCwg
ZGl2KTsKKwkJYWRqdXN0ZWRfbW9kZS0+Y3J0Y19oc3luY19zdGFydCA9CisJCQlESVZfUk9VTkRf
VVAoYWRqdXN0ZWRfbW9kZS0+Y3J0Y19oc3luY19zdGFydCAqIG11bCwgZGl2KTsKKwkJYWRqdXN0
ZWRfbW9kZS0+Y3J0Y19oc3luY19lbmQgPQorCQkJRElWX1JPVU5EX1VQKGFkanVzdGVkX21vZGUt
PmNydGNfaHN5bmNfZW5kICogbXVsLCBkaXYpOworCX0KKwogCWlmIChpbnRlbF9kc2ktPmR1YWxf
bGluaykgewogCQlhZGp1c3RlZF9tb2RlLT5jcnRjX2hkaXNwbGF5ICo9IDI7CiAJCWlmIChpbnRl
bF9kc2ktPmR1YWxfbGluayA9PSBEU0lfRFVBTF9MSU5LX0ZST05UX0JBQ0spCi0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
