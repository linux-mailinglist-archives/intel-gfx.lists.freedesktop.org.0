Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DA01288F6
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 13:06:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61D476E453;
	Sat, 21 Dec 2019 12:06:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBC5F6E454
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 12:06:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Dec 2019 04:06:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,338,1571727600"; d="scan'208";a="219065203"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 21 Dec 2019 04:06:11 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 21 Dec 2019 14:05:35 +0200
Message-Id: <20191221120543.22816-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191221120543.22816-1-imre.deak@intel.com>
References: <20191221120543.22816-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/10] drm/i915: Move CCS stride alignment W/A
 inside intel_fb_stride_alignment
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+
CgpFYXNpZXIgdG8gcmVhZCBpZiBhbGwgdGhlIGFsaWdubWVudCBjaGFuZ2VzIGFyZSBpbiBvbmUg
cGxhY2UgYW5kIGNvbnRhaW5lZAp3aXRoaW4gYSBmdW5jdGlvbi4KCkNjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogTWF0dCBSb3BlciA8bWF0dGhl
dy5kLnJvcGVyQGludGVsLmNvbT4KQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5
YW5AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5j
b20+ClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPgpSZXZp
ZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDMxICsrKysrKysrKyst
LS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRl
eCBiNjBhMTUyNjNhNTAuLmZjMTQwZjYzMDgxOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTI1OTAsNyArMjU5MCwyMiBAQCBpbnRlbF9mYl9z
dHJpZGVfYWxpZ25tZW50KGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLCBpbnQgY29s
b3JfcGxhbmUpCiAJCWVsc2UKIAkJCXJldHVybiA2NDsKIAl9IGVsc2UgewotCQlyZXR1cm4gaW50
ZWxfdGlsZV93aWR0aF9ieXRlcyhmYiwgY29sb3JfcGxhbmUpOworCQl1MzIgdGlsZV93aWR0aCA9
IGludGVsX3RpbGVfd2lkdGhfYnl0ZXMoZmIsIGNvbG9yX3BsYW5lKTsKKworCQkvKgorCQkgKiBE
aXNwbGF5IFdBICMwNTMxOiBza2wsYnh0LGtibCxnbGsKKwkJICoKKwkJICogUmVuZGVyIGRlY29t
cHJlc3Npb24gYW5kIHBsYW5lIHdpZHRoID4gMzg0MAorCQkgKiBjb21iaW5lZCB3aXRoIGhvcml6
b250YWwgcGFubmluZyByZXF1aXJlcyB0aGUKKwkJICogcGxhbmUgc3RyaWRlIHRvIGJlIGEgbXVs
dGlwbGUgb2YgNC4gV2UnbGwganVzdAorCQkgKiByZXF1aXJlIHRoZSBlbnRpcmUgZmIgdG8gYWNj
b21tb2RhdGUgdGhhdCB0byBhdm9pZAorCQkgKiBwb3RlbnRpYWwgcnVudGltZSBlcnJvcnMgYXQg
cGxhbmUgY29uZmlndXJhdGlvbiB0aW1lLgorCQkgKi8KKwkJaWYgKElTX0dFTihkZXZfcHJpdiwg
OSkgJiYgaXNfY2NzX21vZGlmaWVyKGZiLT5tb2RpZmllcikgJiYKKwkJICAgIGNvbG9yX3BsYW5l
ID09IDAgJiYgZmItPndpZHRoID4gMzg0MCkKKwkJCXRpbGVfd2lkdGggKj0gNDsKKworCQlyZXR1
cm4gdGlsZV93aWR0aDsKIAl9CiB9CiAKQEAgLTE2MzQ2LDIwICsxNjM2MSw2IEBAIHN0YXRpYyBp
bnQgaW50ZWxfZnJhbWVidWZmZXJfaW5pdChzdHJ1Y3QgaW50ZWxfZnJhbWVidWZmZXIgKmludGVs
X2ZiLAogCQl9CiAKIAkJc3RyaWRlX2FsaWdubWVudCA9IGludGVsX2ZiX3N0cmlkZV9hbGlnbm1l
bnQoZmIsIGkpOwotCi0JCS8qCi0JCSAqIERpc3BsYXkgV0EgIzA1MzE6IHNrbCxieHQsa2JsLGds
awotCQkgKgotCQkgKiBSZW5kZXIgZGVjb21wcmVzc2lvbiBhbmQgcGxhbmUgd2lkdGggPiAzODQw
Ci0JCSAqIGNvbWJpbmVkIHdpdGggaG9yaXpvbnRhbCBwYW5uaW5nIHJlcXVpcmVzIHRoZQotCQkg
KiBwbGFuZSBzdHJpZGUgdG8gYmUgYSBtdWx0aXBsZSBvZiA0LiBXZSdsbCBqdXN0Ci0JCSAqIHJl
cXVpcmUgdGhlIGVudGlyZSBmYiB0byBhY2NvbW1vZGF0ZSB0aGF0IHRvIGF2b2lkCi0JCSAqIHBv
dGVudGlhbCBydW50aW1lIGVycm9ycyBhdCBwbGFuZSBjb25maWd1cmF0aW9uIHRpbWUuCi0JCSAq
LwotCQlpZiAoSVNfR0VOKGRldl9wcml2LCA5KSAmJiBpID09IDAgJiYgZmItPndpZHRoID4gMzg0
MCAmJgotCQkgICAgaXNfY2NzX21vZGlmaWVyKGZiLT5tb2RpZmllcikpCi0JCQlzdHJpZGVfYWxp
Z25tZW50ICo9IDQ7Ci0KIAkJaWYgKGZiLT5waXRjaGVzW2ldICYgKHN0cmlkZV9hbGlnbm1lbnQg
LSAxKSkgewogCQkJRFJNX0RFQlVHX0tNUygicGxhbmUgJWQgcGl0Y2ggKCVkKSBtdXN0IGJlIGF0
IGxlYXN0ICV1IGJ5dGUgYWxpZ25lZFxuIiwKIAkJCQkgICAgICBpLCBmYi0+cGl0Y2hlc1tpXSwg
c3RyaWRlX2FsaWdubWVudCk7Ci0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
