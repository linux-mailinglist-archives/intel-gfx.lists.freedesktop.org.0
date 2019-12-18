Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C14124CD0
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 17:11:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C66DE6E8C2;
	Wed, 18 Dec 2019 16:11:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13CCE6E875
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 16:11:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 08:11:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="218189604"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 18 Dec 2019 08:11:32 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2019 18:10:53 +0200
Message-Id: <20191218161105.30638-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191218161105.30638-1-imre.deak@intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/15] drm/i915: Move CCS stride alignment W/A
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
dy5kLnJvcGVyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8
ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8
aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyB8IDMxICsrKysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MTYgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA5MjhhNTgxMzM2YTcuLjljMjdjZjY1MWUw
OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAg
LTI1ODksNyArMjU4OSwyMiBAQCBpbnRlbF9mYl9zdHJpZGVfYWxpZ25tZW50KGNvbnN0IHN0cnVj
dCBkcm1fZnJhbWVidWZmZXIgKmZiLCBpbnQgY29sb3JfcGxhbmUpCiAJCWVsc2UKIAkJCXJldHVy
biA2NDsKIAl9IGVsc2UgewotCQlyZXR1cm4gaW50ZWxfdGlsZV93aWR0aF9ieXRlcyhmYiwgY29s
b3JfcGxhbmUpOworCQl1MzIgdGlsZV93aWR0aCA9IGludGVsX3RpbGVfd2lkdGhfYnl0ZXMoZmIs
IGNvbG9yX3BsYW5lKTsKKworCQkvKgorCQkgKiBEaXNwbGF5IFdBICMwNTMxOiBza2wsYnh0LGti
bCxnbGsKKwkJICoKKwkJICogUmVuZGVyIGRlY29tcHJlc3Npb24gYW5kIHBsYW5lIHdpZHRoID4g
Mzg0MAorCQkgKiBjb21iaW5lZCB3aXRoIGhvcml6b250YWwgcGFubmluZyByZXF1aXJlcyB0aGUK
KwkJICogcGxhbmUgc3RyaWRlIHRvIGJlIGEgbXVsdGlwbGUgb2YgNC4gV2UnbGwganVzdAorCQkg
KiByZXF1aXJlIHRoZSBlbnRpcmUgZmIgdG8gYWNjb21tb2RhdGUgdGhhdCB0byBhdm9pZAorCQkg
KiBwb3RlbnRpYWwgcnVudGltZSBlcnJvcnMgYXQgcGxhbmUgY29uZmlndXJhdGlvbiB0aW1lLgor
CQkgKi8KKwkJaWYgKElTX0dFTihkZXZfcHJpdiwgOSkgJiYgaXNfY2NzX21vZGlmaWVyKGZiLT5t
b2RpZmllcikgJiYKKwkJICAgIGNvbG9yX3BsYW5lID09IDAgJiYgZmItPndpZHRoID4gMzg0MCkK
KwkJCXRpbGVfd2lkdGggKj0gNDsKKworCQlyZXR1cm4gdGlsZV93aWR0aDsKIAl9CiB9CiAKQEAg
LTE2MzQxLDIwICsxNjM1Niw2IEBAIHN0YXRpYyBpbnQgaW50ZWxfZnJhbWVidWZmZXJfaW5pdChz
dHJ1Y3QgaW50ZWxfZnJhbWVidWZmZXIgKmludGVsX2ZiLAogCQl9CiAKIAkJc3RyaWRlX2FsaWdu
bWVudCA9IGludGVsX2ZiX3N0cmlkZV9hbGlnbm1lbnQoZmIsIGkpOwotCi0JCS8qCi0JCSAqIERp
c3BsYXkgV0EgIzA1MzE6IHNrbCxieHQsa2JsLGdsawotCQkgKgotCQkgKiBSZW5kZXIgZGVjb21w
cmVzc2lvbiBhbmQgcGxhbmUgd2lkdGggPiAzODQwCi0JCSAqIGNvbWJpbmVkIHdpdGggaG9yaXpv
bnRhbCBwYW5uaW5nIHJlcXVpcmVzIHRoZQotCQkgKiBwbGFuZSBzdHJpZGUgdG8gYmUgYSBtdWx0
aXBsZSBvZiA0LiBXZSdsbCBqdXN0Ci0JCSAqIHJlcXVpcmUgdGhlIGVudGlyZSBmYiB0byBhY2Nv
bW1vZGF0ZSB0aGF0IHRvIGF2b2lkCi0JCSAqIHBvdGVudGlhbCBydW50aW1lIGVycm9ycyBhdCBw
bGFuZSBjb25maWd1cmF0aW9uIHRpbWUuCi0JCSAqLwotCQlpZiAoSVNfR0VOKGRldl9wcml2LCA5
KSAmJiBpID09IDAgJiYgZmItPndpZHRoID4gMzg0MCAmJgotCQkgICAgaXNfY2NzX21vZGlmaWVy
KGZiLT5tb2RpZmllcikpCi0JCQlzdHJpZGVfYWxpZ25tZW50ICo9IDQ7Ci0KIAkJaWYgKGZiLT5w
aXRjaGVzW2ldICYgKHN0cmlkZV9hbGlnbm1lbnQgLSAxKSkgewogCQkJRFJNX0RFQlVHX0tNUygi
cGxhbmUgJWQgcGl0Y2ggKCVkKSBtdXN0IGJlIGF0IGxlYXN0ICV1IGJ5dGUgYWxpZ25lZFxuIiwK
IAkJCQkgICAgICBpLCBmYi0+cGl0Y2hlc1tpXSwgc3RyaWRlX2FsaWdubWVudCk7Ci0tIAoyLjIy
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
