Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0CE2516A1
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 12:27:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94ECE6E8DB;
	Tue, 25 Aug 2020 10:27:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E65D6E8D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 10:27:40 +0000 (UTC)
IronPort-SDR: AQUL2L65K/neZgIZnOj2reUlRdmDdnBU0IK0t5VI1ZwODwDxHXgeYM4JA4jOzMZ5ueU57BPnSL
 PEszGgfno1BQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="143856646"
X-IronPort-AV: E=Sophos;i="5.76,352,1592895600"; d="scan'208";a="143856646"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 03:27:39 -0700
IronPort-SDR: TPnUYI5JD5rLGSHFOlRe/8x896EdF+tODKj1ooiJgizGCIYYicvj+WrNkOJKOqvJ3usFZJ6k1/
 g3GKx+e0XtRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,352,1592895600"; d="scan'208";a="474291230"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by orsmga005.jf.intel.com with ESMTP; 25 Aug 2020 03:27:38 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Aug 2020 18:26:00 +0800
Message-Id: <20200825102600.27779-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/fbc: Disable fbc with VT-d also with
 cometlake
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
Cc: William Tseng <william.tseng@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Qm90aCBWVC1kIGFuZCBGQkMgZW5hYmxlZCB0aGF0IGNhdXNlZCBkaXNwbGF5IGZsaWNrZXIKaXNz
dWUgdmVyeSByYW5kb21seS4gQWNjb3JkaW5nIHRvIHNpZ2h0aW5nIHJlcG9ydCwKaXQgcmVjb21t
ZW5kIHRvIGRpc2FibGUgRkJDIHRvIHdvcmthcm91bmQgdGhpcyBpc3N1ZS4KCkNjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZp
IDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFs
YUBsaW51eC5pbnRlbC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29t
PgpDYzogV2lsbGlhbSBUc2VuZyA8d2lsbGlhbS50c2VuZ0BpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IExlZSBTaGF3biBDIDxzaGF3bi5jLmxlZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmMKaW5kZXggMTM1ZjVlOGE0ZDcwLi4zMjdhZjQyOGQ3M2YgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwpAQCAtMTQ0Myw3ICsxNDQzLDggQEAgc3Rh
dGljIGJvb2wgbmVlZF9mYmNfdnRkX3dhKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIHsKIAkvKiBXYUZiY1R1cm5PZmZGYmNXaGVuSHlwZXJWaXNvcklzVXNlZDpza2wsYnh0ICov
CiAJaWYgKGludGVsX3Z0ZF9hY3RpdmUoKSAmJgotCSAgICAoSVNfU0tZTEFLRShkZXZfcHJpdikg
fHwgSVNfQlJPWFRPTihkZXZfcHJpdikpKSB7CisJICAgIChJU19TS1lMQUtFKGRldl9wcml2KSB8
fCBJU19CUk9YVE9OKGRldl9wcml2KSB8fAorCSAgICAgSVNfQ09NRVRMQUtFKGRldl9wcml2KSkp
IHsKIAkJZHJtX2luZm8oJmRldl9wcml2LT5kcm0sCiAJCQkgIkRpc2FibGluZyBmcmFtZWJ1ZmZl
ciBjb21wcmVzc2lvbiAoRkJDKSB0byBwcmV2ZW50IHNjcmVlbiBmbGlja2VyIHdpdGggVlQtZCBl
bmFibGVkXG4iKTsKIAkJcmV0dXJuIHRydWU7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
